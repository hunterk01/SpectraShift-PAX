using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class TriggerSingleEvent: MonoBehaviour
{
    [System.Serializable]
    public struct Dialog
    {
        public bool pilot;
        [TextArea]
        public string text;
    }

    public bool stopPlayer = false;

    [Header("Pre-Dialog Events")]
    public bool preDialogEvents = false;
    public GameObject[] preEvents;

    [Header("Dialog")]
    public Dialog[] dialog;
    public GameObject pilotChat;
    public GameObject dropshipChat;
    public Text pilotText;
    public Text dropshipText;
    public bool delayStart = false;
    public float dialogDelay = 6;
    public float startDelay = 3;

    [Header("Post-Dialog Events")]
    public bool postDialogEvents = false;
    public GameObject[] postEvents;

    bool triggerOn = false;
    bool playEvent = false;
    bool chatBoxSet = false;
    bool preEventsHandled = false;
    float dialogTimer;
    float delayStartTimer;
    int dialogCount = 0;

    PlayerController player;

    void Start()
    {
        dialogTimer = dialogDelay;
        delayStartTimer = startDelay;
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
    }

    void Update()
    {
        if (playEvent)
        {
            if (delayStart)
            {
                if (delayStartTimer < 0)
                {
                    delayStart = false;
                }
                else
                {
                    delayStartTimer -= Time.deltaTime;
                }
            }
            else
            {
                PlayDialog();
            }
        }
    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player")
        {
            playEvent = true;
        }
    }

    void PlayDialog()
    {
        if (preDialogEvents && !preEventsHandled) RunPreEvents();

        if (dialogCount < dialog.Length)
        {
            if (stopPlayer)
            {
                player.playerControl = false;
            }

            if (dialogTimer > 0)
            {
                if (!chatBoxSet)
                {
                    if (dialog[dialogCount].pilot)
                    {
                        pilotText.text = dialog[dialogCount].text;
                        pilotChat.SetActive(true);
                    }
                    else
                    {
                        dropshipText.text = dialog[dialogCount].text;
                        dropshipChat.SetActive(true);
                    }

                    chatBoxSet = true;
                }

                dialogTimer -= Time.deltaTime;
            }
            else
            {
                dialogTimer = dialogDelay;
                chatBoxSet = false;
                dialogCount++;
                pilotChat.SetActive(false);
                dropshipChat.SetActive(false);
            }
        }
        else
        {
            if(stopPlayer)
            {
                player.playerControl = true;
            }

            if (postDialogEvents)   RunPostEvents();
        }
    }

    void RunPreEvents()
    {
        for (int i = 0; i < preEvents.Length; i++)
        {
            if (preEvents[i].activeSelf == false)
            {
                preEvents[i].SetActive(true);
            }
            else
            {
                preEvents[i].SetActive(false);
            }
        }

        preEventsHandled = true;
    }

    void RunPostEvents()
    {
        for (int i = 0; i < postEvents.Length; i++)
        {
            postEvents[i].SetActive(true);
        }

        gameObject.SetActive(false);
    }
}

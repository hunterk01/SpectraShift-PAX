using UnityEngine;

public interface IGun
{
    void fire();

    void setShift(bool shiftState);
    
    bool loaded { get; set; }
}

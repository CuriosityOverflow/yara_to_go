rule DetectShadowPadBackdoor {
    meta:
        description = "Detects the ShadowPad backdoor"
    strings:
        $shadowpad_marker = "GONGFEI" ascii wide
        $unique_string = "win=0;" ascii wide
    condition:
        all of them
}


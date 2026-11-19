package com.lightup.sdk.device.enums;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum DeviceMode {
    UNKNOWN(255),
    STANDARD(0),
    ECO(1),
    MERCH(2),
    ALWAYS_ON(3),
    WALKING(4),
    DISCREET(5);

    private static Map map = new HashMap();
    private final int deviceMode;

    static {
        for (DeviceMode deviceMode : values()) {
            map.put(Integer.valueOf(deviceMode.deviceMode), deviceMode);
        }
    }

    DeviceMode(int i2) {
        this.deviceMode = i2;
    }

    public static DeviceMode valueOf(int i2) {
        return (DeviceMode) map.get(Integer.valueOf(i2));
    }

    public int getDeviceMode() {
        return this.deviceMode;
    }
}

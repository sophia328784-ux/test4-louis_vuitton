package com.linkplay.core.group;

import com.linkplay.core.device.LPDevice;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPGroup implements Serializable {
    private LPDevice masterDevice;
    private List<LPDevice> slaveDeviceList;
    private String upnpUUID;

    public LPGroup(LPDevice lPDevice, List<LPDevice> list) {
        this.upnpUUID = "";
        this.upnpUUID = lPDevice.getUpnpUUID();
        this.masterDevice = lPDevice;
        this.slaveDeviceList = list;
    }

    public String getUpnpUUID() {
        return this.upnpUUID;
    }
}

package com.networkbench.agent.impl.performance;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.ApplicationInformation;
import com.networkbench.agent.impl.harvest.DeviceInformation;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static Map<String, String> a() {
        HashMap map = new HashMap();
        DeviceInformation deviceInformation = NBSAgent.getDeviceInformation();
        ApplicationInformation applicationInformation = NBSAgent.getApplicationInformation();
        if (deviceInformation != null) {
            map.put("manufacturer", deviceInformation.getManufacturer() == null ? "" : deviceInformation.getManufacturer());
            map.put("manufacturerModel", deviceInformation.getModel() == null ? "" : deviceInformation.getModel());
            map.put("os", deviceInformation.getOsName());
            map.put("osVersion", deviceInformation.getOsVersion() == null ? "" : deviceInformation.getOsVersion());
            map.put("agentVersion", deviceInformation.getAgentVersion() == null ? "" : deviceInformation.getAgentVersion());
        }
        if (applicationInformation != null) {
            map.put("appVersion", applicationInformation.getAppVersion() == null ? "" : applicationInformation.getAppVersion());
            map.put("channel", applicationInformation.getChannelId() != null ? applicationInformation.getChannelId() : "");
        }
        map.put("session_id", NBSBitmapBeansControl.getInstance().getSessionId());
        return map;
    }
}

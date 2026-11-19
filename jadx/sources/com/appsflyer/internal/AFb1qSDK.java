package com.appsflyer.internal;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFb1qSDK {
    public final Map<String, Object> d = new HashMap();
    public Map<String, Object> AFKeystoreWrapper = new HashMap();

    public final void AFLogger(Map<String, Object> map) {
        if (!this.d.isEmpty()) {
            map.put("partner_data", this.d);
        }
        if (this.AFKeystoreWrapper.isEmpty()) {
            return;
        }
        AFj1iSDK.AFLogger(map).put("partner_data", this.AFKeystoreWrapper);
        this.AFKeystoreWrapper = new HashMap();
    }
}

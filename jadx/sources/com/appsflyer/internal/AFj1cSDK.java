package com.appsflyer.internal;

import com.appsflyer.share.platform_extension.PluginInfo;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface AFj1cSDK {
    Map<String, Object> AFLogger();

    void registerClient(PluginInfo pluginInfo);

    String unregisterClient();
}

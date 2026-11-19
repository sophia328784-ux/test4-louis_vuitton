package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.util.JsonUtils;
import java.util.Map;
import kotlin.collections.MapsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFa1hSDK implements AFa1lSDK {
    private final AFc1kSDK d;

    public AFa1hSDK(AFc1kSDK aFc1kSDK) {
        aFc1kSDK.getClass();
        this.d = aFc1kSDK;
    }

    @Override // com.appsflyer.internal.AFa1lSDK
    public final void d(Map<String, ? extends Object> map) {
        map.getClass();
        this.d.d("deeplink_data", new JSONObject(map).toString());
    }

    @Override // com.appsflyer.internal.AFa1lSDK
    public final void registerClient() {
        this.d.AFLogger("deeplink_data");
    }

    @Override // com.appsflyer.internal.AFa1lSDK
    public final Map<String, Object> unregisterClient() {
        if (this.d.registerClient("deeplink_data")) {
            try {
                String strD = this.d.d("deeplink_data");
                return strD == null ? MapsKt.c() : JsonUtils.toMap(new JSONObject(strD));
            } catch (Throwable th) {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DDL, "Exception while parsing stored deeplink data", th, false, true, false, false, 72, null);
            }
        }
        return MapsKt.c();
    }
}

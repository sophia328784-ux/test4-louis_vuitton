package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1tSDK implements AFb1aSDK {
    private final AFc1eSDK AFLogger;
    private final AFf1fSDK d;
    private final AFd1zSDK unregisterClient;

    public AFc1tSDK(AFc1eSDK aFc1eSDK, AFd1zSDK aFd1zSDK, AFf1fSDK aFf1fSDK) {
        aFc1eSDK.getClass();
        aFd1zSDK.getClass();
        aFf1fSDK.getClass();
        this.AFLogger = aFc1eSDK;
        this.unregisterClient = aFd1zSDK;
        this.d = aFf1fSDK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerClient(AFc1tSDK aFc1tSDK, AppSetIdInfo appSetIdInfo) {
        AFc1eSDK aFc1eSDK = aFc1tSDK.AFLogger;
        int scope = appSetIdInfo.getScope();
        String id = appSetIdInfo.getId();
        id.getClass();
        aFc1eSDK.setUserEmail = new AFc1rSDK(scope, id);
    }

    @Override // com.appsflyer.internal.AFb1aSDK
    public final boolean AFLogger() {
        return !this.d.AFLogger() && !this.AFLogger.setCustomerUserId && AFj1qSDK.AFLogger(this.unregisterClient.d) && AFj1qSDK.registerClient(this.unregisterClient.d);
    }

    @Override // com.appsflyer.internal.AFb1aSDK
    public final void unregisterClient() {
        Context context = this.unregisterClient.d;
        if (context != null) {
            try {
                AppSet.getClient(context).getAppSetIdInfo().e(new OnSuccessListener() { // from class: com.appsflyer.internal.k
                    @Override // com.google.android.gms.tasks.OnSuccessListener
                    public final void onSuccess(Object obj) {
                        AFc1tSDK.registerClient(this.f22689b, (AppSetIdInfo) obj);
                    }
                });
            } catch (Throwable th) {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.APP_SET_ID, "Error while trying to  fetch App set ID", th, false, false, false, false, 120, null);
            }
        }
    }
}

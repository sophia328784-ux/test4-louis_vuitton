package com.appsflyer.internal;

import android.content.Intent;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class AFb1hSDK implements AFb1bSDK.AFa1zSDK {
    private final Function0<Unit> AFKeystoreWrapper;
    private final AFc1bSDK AFLogger;
    private final AFf1mSDK d;
    private final AFh1sSDK registerClient;

    public AFb1hSDK(AFc1bSDK aFc1bSDK, Function0<Unit> function0, AFf1mSDK aFf1mSDK, AFh1sSDK aFh1sSDK) {
        aFc1bSDK.getClass();
        function0.getClass();
        aFf1mSDK.getClass();
        this.AFLogger = aFc1bSDK;
        this.AFKeystoreWrapper = function0;
        this.d = aFf1mSDK;
        this.registerClient = aFh1sSDK;
    }

    @Override // com.appsflyer.internal.AFb1bSDK.AFa1zSDK
    public final void m_(Intent intent) {
        intent.getClass();
        AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.GENERAL, "onActivityCreated with deeplink", false, 4, null);
        AFa1qSDK aFa1qSDKEnableTCFDataCollection = this.AFLogger.enableTCFDataCollection();
        AFa1kSDK.Companion companion = AFa1kSDK.INSTANCE;
        AFa1lSDK userPhone = this.AFLogger.setUserPhone();
        userPhone.getClass();
        aFa1qSDKEnableTCFDataCollection.b_(AFa1kSDK.Companion.d(userPhone), intent, this.AFLogger.valueOf().d);
    }

    @Override // com.appsflyer.internal.AFb1bSDK.AFa1zSDK
    public final void n_(Intent intent) {
        intent.getClass();
        AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.GENERAL, "onBecameForeground", false, 4, null);
        this.AFLogger.e().AFLogger();
        this.AFLogger.setAppInviteOneLink().R_(intent);
        AFa1qSDK aFa1qSDKEnableTCFDataCollection = this.AFLogger.enableTCFDataCollection();
        AFa1kSDK.Companion companion = AFa1kSDK.INSTANCE;
        AFa1lSDK userPhone = this.AFLogger.setUserPhone();
        userPhone.getClass();
        aFa1qSDKEnableTCFDataCollection.b_(AFa1kSDK.Companion.d(userPhone), intent, this.AFLogger.valueOf().d);
        this.AFLogger.i().AFKeystoreWrapper(this.d);
        if (!AFe1jSDK.force) {
            this.AFLogger.afWarnLog().d(new AFe1jSDK(this.AFLogger));
        }
        if (this.AFLogger.AFLogger().AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) < 2) {
            this.AFLogger.afInfoLog().registerClient();
        }
        AFh1sSDK aFh1sSDK = this.registerClient;
        if (aFh1sSDK != null) {
            AFa1qSDK aFa1qSDKEnableTCFDataCollection2 = this.AFLogger.enableTCFDataCollection();
            aFa1qSDKEnableTCFDataCollection2.getClass();
            aFh1sSDK.D_(intent, aFa1qSDKEnableTCFDataCollection2);
        }
    }

    @Override // com.appsflyer.internal.AFb1bSDK.AFa1zSDK
    public final void registerClient() {
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.GENERAL;
        AFLoggerBase.i$default(aFLogger, logTag, "onBecameBackground", false, 4, null);
        AFh1xSDK aFh1xSDKE = this.AFLogger.e();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = aFh1xSDKE.f22657e;
        if (j2 != 0) {
            long j3 = jCurrentTimeMillis - j2;
            if (j3 > 0 && j3 < 1000) {
                j3 = 1000;
            }
            long j4 = j3 / 1000;
            aFh1xSDKE.afInfoLog = j4;
            aFh1xSDKE.AFKeystoreWrapper.AFLogger("prev_session_dur", j4);
        } else {
            aFLogger.i(logTag, "Metrics: fg ts is missing");
        }
        this.AFLogger.setAppInviteOneLink().registerClient();
        this.AFKeystoreWrapper.mo47invoke();
    }
}

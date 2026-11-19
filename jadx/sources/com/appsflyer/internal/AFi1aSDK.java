package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.referrer.Referrer;
import com.appsflyer.sdk_base.referrer.ReferrerProp;
import defpackage.e5;
import defpackage.xo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1aSDK {
    public final AFc1bSDK AFKeystoreWrapper;
    public final AFi1hSDK d;
    public volatile boolean AFLogger = false;
    private final AtomicBoolean registerClient = new AtomicBoolean(false);
    public final CopyOnWriteArrayList<Referrer> unregisterClient = new CopyOnWriteArrayList<>();

    public AFi1aSDK(AFc1bSDK aFc1bSDK, AFi1hSDK aFi1hSDK) {
        this.AFKeystoreWrapper = aFc1bSDK;
        this.d = aFi1hSDK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AFKeystoreWrapper(Context context, ReferrerProp referrerProp, AFc1bSDK aFc1bSDK) {
        List<ResolveInfo> listQueryIntentContentProviders = context.getPackageManager().queryIntentContentProviders(new Intent("com.appsflyer.referrer.INSTALL_PROVIDER"), 0);
        if (listQueryIntentContentProviders == null || listQueryIntentContentProviders.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ResolveInfo> it = listQueryIntentContentProviders.iterator();
        while (it.hasNext()) {
            ProviderInfo providerInfo = it.next().providerInfo;
            if (providerInfo != null) {
                arrayList.add(new AFi1cSDK(providerInfo, referrerProp, aFc1bSDK));
            } else {
                AFLogger.INSTANCE.w(LogTag.PREINSTALL, "com.appsflyer.referrer.INSTALL_PROVIDER Action is set for non ContentProvider component");
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.unregisterClient.addAll(arrayList);
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.PREINSTALL;
        StringBuilder sb = new StringBuilder("Detected ");
        sb.append(arrayList.size());
        sb.append(" valid preinstall provider(s)");
        aFLogger.d(logTag, sb.toString());
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Referrer) it2.next()).start(aFc1bSDK.valueOf().d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AFLogger(AFi1gSDK aFi1gSDK, Runnable runnable) {
        if (!this.AFLogger) {
            AFLogger.INSTANCE.d(LogTag.REFERRER, "Skipping ATTR trigger: conversion not yet prepared, referrer data will be included in conversion");
            return;
        }
        AFc1kSDK aFc1kSDKAFKeystoreWrapper = this.AFKeystoreWrapper.AFKeystoreWrapper();
        int iAFLogger = this.AFKeystoreWrapper.AFLogger().AFKeystoreWrapper.AFLogger("appsFlyerCount", 0);
        boolean z = aFi1gSDK.getState() == Referrer.State.NOT_STARTED || aFc1kSDKAFKeystoreWrapper.AFKeystoreWrapper(AppsFlyerProperties.NEW_REFERRER_SENT);
        if (iAFLogger == 1 && z && this.registerClient.compareAndSet(false, true)) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void registerClient(ReferrerProp referrerProp) {
        AFi1iSDK aFi1iSDK = new AFi1iSDK(this.AFKeystoreWrapper.AFLogger(), AFi1jSDK.INSTAGRAM, referrerProp, new r(this, referrerProp, 0));
        this.unregisterClient.add(aFi1iSDK);
        aFi1iSDK.start(this.AFKeystoreWrapper.valueOf().d);
    }

    public final AFi1gSDK d(Runnable runnable) {
        ExecutorService executorServiceD = this.AFKeystoreWrapper.d();
        return new AFi1gSDK(new ReferrerProp(new p(this, executorServiceD, runnable, 2), this.AFKeystoreWrapper.afErrorLog(), executorServiceD));
    }

    public final void unregisterClient(Context context, ReferrerProp referrerProp, AFc1bSDK aFc1bSDK) {
        if (aFc1bSDK.AFLogger().AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) > 0) {
            AFLogger.INSTANCE.d(LogTag.PREINSTALL, "Preinstall referrer will not load, the counter >= 1, ");
        } else {
            aFc1bSDK.d().execute(new xo(this, context, referrerProp, aFc1bSDK, 6));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(ExecutorService executorService, Runnable runnable) {
        executorService.execute(new m(this, runnable, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void unregisterClient() {
    }

    public final void unregisterClient(ReferrerProp referrerProp) {
        this.unregisterClient.add(new AFi1iSDK(this.AFKeystoreWrapper.AFLogger(), AFi1jSDK.FACEBOOK, referrerProp, new r(this, referrerProp, 1)));
    }

    public final Runnable unregisterClient(AFi1gSDK aFi1gSDK, Runnable runnable) {
        return new p(this, aFi1gSDK, runnable, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AFLogger(ReferrerProp referrerProp) {
        AFi1iSDK aFi1iSDK = new AFi1iSDK(this.AFKeystoreWrapper.AFLogger(), AFi1jSDK.FACEBOOK_LITE, referrerProp, new e5(9));
        this.unregisterClient.add(aFi1iSDK);
        aFi1iSDK.start(this.AFKeystoreWrapper.valueOf().d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AFKeystoreWrapper(Runnable runnable) {
        try {
            if (!this.AFLogger) {
                AFLogger.INSTANCE.d(LogTag.REFERRER, "Skipping ATTR trigger: conversion not yet prepared, referrer data will be included in conversion");
                return;
            }
            int iAFLogger = this.AFKeystoreWrapper.AFLogger().AFKeystoreWrapper.AFLogger("appsFlyerCount", 0);
            if (!this.AFKeystoreWrapper.AFKeystoreWrapper().AFKeystoreWrapper(AppsFlyerProperties.NEW_REFERRER_SENT) && iAFLogger == 1 && this.registerClient.compareAndSet(false, true)) {
                runnable.run();
            }
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(LogTag.REFERRER, th.getMessage() != null ? th.getMessage() : "Error processing referrer data", th);
        }
    }
}

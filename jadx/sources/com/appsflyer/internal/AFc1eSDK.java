package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.share.AppsFlyerConsent;
import com.sightcall.livetranslation.data.LiveTranslationEntity;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1eSDK {
    public String AFKeystoreWrapper;
    public String AFLogger;
    public String AFLoggerLogLevel;
    public String AppsFlyerLib;
    public Boolean afDebugLog;
    public boolean afErrorLog;
    public boolean afInfoLog;
    public boolean afWarnLog;
    public String clearUserPii;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f22607e;
    public String force;
    public boolean getEntries;
    public String getLevel;
    public String getOutOfStore;
    public String getSdkVersion;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Long f22608i;
    public String registerClient;
    public boolean setAndroidIdData;
    public boolean setCustomerUserId;
    public AppsFlyerConsent setImeiData;
    public AFd1nSDK setOaidData;
    public AFc1rSDK setUserEmail;
    public boolean setUserFirstName;
    public String setUserLastName;
    public boolean setUserPhone;
    public String stop;
    public String unregisterClient;
    public AFh1qSDK updateServerUninstallToken;
    public AFb1qSDK v;
    public String valueOf;
    public String values;
    public AFb1rSDK w;
    public AFLogger.LogLevel enableTCFDataCollection = AFLogger.LogLevel.NONE;
    public long getInstance = -1;
    public long onPause = -1;
    public long setDebugLog = LiveTranslationEntity.DefaultSentenceTimeOut;

    public final synchronized void registerClient(AFd1nSDK aFd1nSDK) {
        this.setOaidData = aFd1nSDK;
    }
}

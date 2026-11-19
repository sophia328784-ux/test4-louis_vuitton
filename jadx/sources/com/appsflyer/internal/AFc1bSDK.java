package com.appsflyer.internal;

import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.exception_manager.ExceptionManager;
import com.appsflyer.sdk_base.logger.LoggerDelegate;
import com.appsflyer.share.AppsFlyerConversionListener;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public interface AFc1bSDK {
    AFc1kSDK AFKeystoreWrapper();

    AFc1iSDK AFLogger();

    AFd1uSDK AFLoggerLogLevel();

    AFf1fSDK AppsFlyerLib();

    AFi1aSDK afDebugLog();

    LoggerDelegate afErrorLog();

    AFj1ySDK afInfoLog();

    AFe1wSDK afWarnLog();

    ExecutorService d();

    AFh1xSDK e();

    AFa1qSDK enableTCFDataCollection();

    AFg1rSDK force();

    ExceptionManager getEntries();

    AFi1vSDK getInstance();

    AFd1jSDK getLevel();

    AFa1aSDK getSdkVersion();

    AFf1hSDK i();

    AFj1cSDK onPause();

    AppsFlyerProperties registerClient();

    void registerClient(AppsFlyerConversionListener appsFlyerConversionListener);

    AFc1eSDK setAndroidIdData();

    AFj1wSDK setAppInviteOneLink();

    AFe1vSDK setCustomerUserId();

    AFh1wSDK setDebugLog();

    AFi1oSDK setImeiData();

    AFf1eSDK setOaidData();

    AFb1aSDK setUserEmail();

    AppsFlyerConversionListener setUserFirstName();

    AFh1sSDK setUserLastName();

    AFa1lSDK setUserPhone();

    AFi1tSDK stop();

    AFd1sSDK unregisterClient();

    AFb1bSDK updateServerUninstallToken();

    PurchaseHandler v();

    AFd1zSDK valueOf();

    AFc1vSDK values();

    AFf1aSDK w();
}

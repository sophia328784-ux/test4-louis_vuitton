package com.sensorsdata.analytics.android.sdk.push.utils;

import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.nbslens.nbsnativecrashlib.n;

/* JADX INFO: loaded from: classes3.dex */
public class PushUtils {
    public static String getJPushSDKName(byte b2) {
        switch (b2) {
            case 0:
                return "Jpush";
            case 1:
                return "Xiaomi";
            case 2:
                return "HUAWEI";
            case 3:
                return "Meizu";
            case 4:
                return n.a.f38812e;
            case 5:
                return Payload.SOURCE_VIVO;
            case 6:
                return "Asus";
            case 7:
            default:
                return "Jpush";
            case 8:
                return "fcm";
        }
    }
}

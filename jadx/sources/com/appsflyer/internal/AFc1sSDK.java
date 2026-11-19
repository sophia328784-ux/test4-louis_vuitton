package com.appsflyer.internal;

import android.util.Base64;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.util.JsonUtils;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Scanner;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1sSDK {
    String AFKeystoreWrapper;
    public AFe1zSDK AFLogger;
    public byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, String> f22612e;
    public String registerClient;
    public String unregisterClient;

    public AFc1sSDK(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        while (scanner.hasNextLine()) {
            try {
                String strNextLine = scanner.nextLine();
                if (strNextLine.startsWith("url=")) {
                    this.unregisterClient = strNextLine.substring(4).trim();
                } else if (strNextLine.startsWith("version=")) {
                    this.AFKeystoreWrapper = strNextLine.substring(8).trim();
                } else if (strNextLine.startsWith("headers=")) {
                    try {
                        this.f22612e = JsonUtils.toStringMap(new JSONObject(new String(Base64.decode(strNextLine.substring(8).trim(), 2), Charset.defaultCharset())));
                    } catch (Exception e2) {
                        AFLogger.INSTANCE.e(LogTag.CACHE, "Error parsing headers", e2);
                        this.f22612e = new HashMap();
                    }
                } else if (strNextLine.startsWith("data=")) {
                    this.d = Base64.decode(strNextLine.substring(5).trim(), 2);
                } else if (strNextLine.startsWith("type=")) {
                    String strTrim = strNextLine.substring(5).trim();
                    AFd1bSDK aFd1bSDKRegisterClient = AFd1bSDK.registerClient(strTrim);
                    if (aFd1bSDKRegisterClient != null) {
                        this.AFLogger = aFd1bSDKRegisterClient;
                    } else {
                        AFLogger.INSTANCE.d(LogTag.CACHE, "Unknown task type: ".concat(String.valueOf(strTrim)));
                    }
                }
            } catch (Throwable th) {
                try {
                    scanner.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        scanner.close();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AFc1sSDK.class == obj.getClass()) {
            AFc1sSDK aFc1sSDK = (AFc1sSDK) obj;
            if (Objects.equals(this.AFKeystoreWrapper, aFc1sSDK.AFKeystoreWrapper) && Arrays.equals(this.d, aFc1sSDK.d) && Objects.equals(this.unregisterClient, aFc1sSDK.unregisterClient) && Objects.equals(this.registerClient, aFc1sSDK.registerClient) && Objects.equals(this.f22612e, aFc1sSDK.f22612e) && this.AFLogger == aFc1sSDK.AFLogger) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.AFKeystoreWrapper;
        int iHashCode = (Arrays.hashCode(this.d) + ((str != null ? str.hashCode() : 0) * 31)) * 31;
        String str2 = this.unregisterClient;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.registerClient;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        AFe1zSDK aFe1zSDK = this.AFLogger;
        int iHashCode4 = (iHashCode3 + (aFe1zSDK != null ? aFe1zSDK.hashCode() : 0)) * 31;
        Map<String, String> map = this.f22612e;
        return iHashCode4 + (map != null ? map.hashCode() : 0);
    }

    public AFc1sSDK(String str, byte[] bArr, String str2, AFe1zSDK aFe1zSDK, Map<String, String> map) {
        this.unregisterClient = str;
        this.d = bArr;
        this.AFKeystoreWrapper = str2;
        this.AFLogger = aFe1zSDK;
        this.f22612e = map;
    }
}

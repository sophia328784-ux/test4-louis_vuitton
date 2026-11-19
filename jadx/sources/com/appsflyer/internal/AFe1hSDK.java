package com.appsflyer.internal;

import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\t\u001a\u00020\u000e2\n\u0010\u0005\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\u0007\u001a\u00020\rH\u0002¢\u0006\u0004\b\t\u0010\u000fJ-\u0010\u0011\u001a\u00020\u000e2\n\u0010\u0005\u001a\u00060\u000bj\u0002`\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012"}, d2 = {"Lcom/appsflyer/internal/AFe1hSDK;", "", "<init>", "()V", "Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;", "p0", "Lcom/appsflyer/internal/AFi1vSDK;", "p1", "", "unregisterClient", "(Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;Lcom/appsflyer/internal/AFi1vSDK;)Ljava/lang/String;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "", "", "(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V", "p2", "AFLogger", "(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFe1hSDK {
    public static final AFe1hSDK INSTANCE = new AFe1hSDK();

    private AFe1hSDK() {
    }

    private static void AFLogger(StringBuilder p0, String p1, String p2) {
        if (p1 == null || p1.length() == 0) {
            return;
        }
        defpackage.a.B(p0, "; ", p2, p1);
    }

    @JvmStatic
    public static final String unregisterClient(HttpException p0, AFi1vSDK p1) {
        String string;
        p0.getClass();
        StringBuilder sb = new StringBuilder();
        AFe1hSDK aFe1hSDK = INSTANCE;
        sb.append("Network error: ");
        Throwable cause = p0.getCause();
        if (cause != null) {
            aFe1hSDK.unregisterClient(sb, cause);
        } else {
            String message = p0.getMessage();
            if (message != null) {
                if (message.length() <= 0) {
                    message = null;
                }
                if (message != null) {
                    sb.append(message);
                }
            }
        }
        sb.append("; httpLatencyMs=");
        sb.append(p0.getMetrics().registerClient);
        if (p1 != null) {
            AFi1ySDK aFi1ySDK = p1.d;
            AFi1rSDK aFi1rSDKAFKeystoreWrapper = aFi1ySDK != null ? aFi1ySDK.AFKeystoreWrapper() : null;
            if (aFi1rSDKAFKeystoreWrapper != null) {
                sb.append("; networkType=");
                sb.append(aFi1rSDKAFKeystoreWrapper.unregisterClient);
                Boolean bool = aFi1rSDKAFKeystoreWrapper.registerClient;
                if (bool != null) {
                    sb.append("; ");
                    sb.append("hasInternetCapability=");
                    sb.append(bool.booleanValue());
                }
                Boolean bool2 = aFi1rSDKAFKeystoreWrapper.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String;
                if (bool2 != null) {
                    sb.append("; ");
                    sb.append("hasValidatedCapability=");
                    sb.append(bool2.booleanValue());
                }
                AFLogger(sb, aFi1rSDKAFKeystoreWrapper.AFLogger, "dataState=");
                Boolean boolValueOf = Boolean.valueOf(aFi1rSDKAFKeystoreWrapper.AFKeystoreWrapper);
                sb.append("; ");
                sb.append("vpnEnabled=");
                String string2 = boolValueOf.toString();
                String str = "null";
                if (string2 == null) {
                    string2 = "null";
                }
                sb.append(string2);
                AFLogger(sb, aFi1rSDKAFKeystoreWrapper.i, "vpnUnderlyingTransport=");
                if (aFi1rSDKAFKeystoreWrapper.AFKeystoreWrapper) {
                    AFLogger(sb, aFi1rSDKAFKeystoreWrapper.e, "devicePrivateVpnAddress=");
                }
                Boolean bool3 = aFi1rSDKAFKeystoreWrapper.w;
                sb.append("; ");
                sb.append("customDnsEnabled=");
                if (bool3 != null && (string = bool3.toString()) != null) {
                    str = string;
                }
                sb.append(str);
                if (Intrinsics.c(aFi1rSDKAFKeystoreWrapper.w, Boolean.TRUE)) {
                    AFLogger(sb, aFi1rSDKAFKeystoreWrapper.force, "customDnsServerName=");
                }
            }
        }
        return sb.toString();
    }

    private final void unregisterClient(StringBuilder p0, Throwable p1) {
        p0.append(p1.getClass().getSimpleName());
        String message = p1.getMessage();
        if (message != null) {
            if (message.length() <= 0) {
                message = null;
            }
            if (message != null) {
                p0.append(": ");
                p0.append(message);
            }
        }
        Throwable cause = p1.getCause();
        if (cause == null || cause.equals(p1)) {
            return;
        }
        p0.append(" (caused by: ");
        unregisterClient(p0, cause);
        p0.append(')');
    }
}

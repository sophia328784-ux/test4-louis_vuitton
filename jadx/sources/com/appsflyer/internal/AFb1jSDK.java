package com.appsflyer.internal;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.security.SecureRandom;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e"}, d2 = {"Lcom/appsflyer/internal/AFb1jSDK;", "", "<init>", "()V", "", "p0", "Lcom/appsflyer/internal/AFc1kSDK;", "p1", "", NBSSpanMetricUnit.Day, "(Ljava/lang/String;Lcom/appsflyer/internal/AFc1kSDK;)V", "AFLogger", "(Lcom/appsflyer/internal/AFc1kSDK;)Ljava/lang/String;", "registerClient", "Ljava/lang/String;", "AFKeystoreWrapper"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFb1jSDK {
    public static final AFb1jSDK INSTANCE = new AFb1jSDK();

    /* JADX INFO: renamed from: registerClient, reason: from kotlin metadata */
    private static String AFKeystoreWrapper;

    private AFb1jSDK() {
    }

    @JvmStatic
    public static final synchronized String AFLogger(AFc1kSDK p0) {
        String str;
        try {
            p0.getClass();
            if (AFKeystoreWrapper == null) {
                String strD = p0.d("AF_INSTALLATION");
                if (strD == null) {
                    strD = System.currentTimeMillis() + "-" + Math.abs(new SecureRandom().nextLong());
                    p0.d("AF_INSTALLATION", strD);
                }
                AFKeystoreWrapper = strD;
            }
            str = AFKeystoreWrapper;
            str.getClass();
        } catch (Throwable th) {
            throw th;
        }
        return str;
    }

    @JvmStatic
    public static final synchronized void d(String p0, AFc1kSDK p1) {
        p0.getClass();
        p1.getClass();
        AFKeystoreWrapper = p0;
        p1.registerClient("CUSTOM_INSTALL_ID_APPLIED", true);
        p1.d("AF_INSTALLATION", p0);
    }
}

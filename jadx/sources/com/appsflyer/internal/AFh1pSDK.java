package com.appsflyer.internal;

import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import defpackage.md;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class AFh1pSDK {
    public Map<String, Object> AFKeystoreWrapper;
    public AppsFlyerRequestListener AFLogger;
    protected boolean afErrorLog;
    public String afInfoLog;
    public int afWarnLog;
    public Map<String, Object> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f22653e;
    public byte[] force;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f22654i;
    public final Map<String, String> registerClient;
    public final boolean unregisterClient;
    public String v;
    public String w;

    public AFh1pSDK(String str, String str2, Boolean bool) {
        this.d = new HashMap();
        this.registerClient = new HashMap();
        this.afErrorLog = false;
        this.v = str;
        this.f22654i = str2;
        this.unregisterClient = bool != null ? bool.booleanValue() : true;
    }

    public abstract AFe1zSDK AFKeystoreWrapper();

    public final AFh1pSDK AFKeystoreWrapper(String str, Object obj) {
        synchronized (this.d) {
            this.d.put(str, obj);
        }
        return this;
    }

    public boolean AFLogger() {
        return true;
    }

    public boolean d() {
        return true;
    }

    public boolean registerClient() {
        return false;
    }

    public final AFh1pSDK unregisterClient(int i2) {
        this.afWarnLog = i2;
        synchronized (this.d) {
            try {
                if (this.d.containsKey(com.batch.android.u0.b.a.f24076a)) {
                    this.d.put(com.batch.android.u0.b.a.f24076a, Integer.toString(i2));
                }
                if (this.d.containsKey("launch_counter")) {
                    this.d.put("launch_counter", Integer.toString(i2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    public final AFh1pSDK AFKeystoreWrapper(Map<String, ?> map) {
        synchronized (map) {
            this.d.putAll(map);
        }
        return this;
    }

    public AFh1pSDK() {
        this(null, null, null);
    }

    public final AFh1pSDK unregisterClient() {
        this.afErrorLog = true;
        return this;
    }

    public static boolean unregisterClient(double d) {
        if (d < 0.0d || d >= 1.0d) {
            return false;
        }
        if (d == 0.0d) {
            return true;
        }
        int i2 = (int) (1.0d / d);
        if (i2 + 1 > 0) {
            return ((int) ((Math.random() * ((double) i2)) + 1.0d)) != i2;
        }
        md.n("Unsupported max value");
        return false;
    }
}

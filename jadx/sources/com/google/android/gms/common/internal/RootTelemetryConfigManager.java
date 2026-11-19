package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class RootTelemetryConfigManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static RootTelemetryConfigManager f29200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final RootTelemetryConfiguration f29201c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RootTelemetryConfiguration f29202a;

    public static synchronized RootTelemetryConfigManager a() {
        try {
            if (f29200b == null) {
                f29200b = new RootTelemetryConfigManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f29200b;
    }
}

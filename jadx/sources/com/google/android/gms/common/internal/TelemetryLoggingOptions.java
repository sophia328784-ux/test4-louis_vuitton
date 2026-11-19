package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TelemetryLoggingOptions implements Api.ApiOptions.Optional {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TelemetryLoggingOptions f29211c = new TelemetryLoggingOptions(new Builder().f29213a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29212b;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f29213a;
    }

    public /* synthetic */ TelemetryLoggingOptions(String str) {
        this.f29212b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TelemetryLoggingOptions) {
            return Objects.a(this.f29212b, ((TelemetryLoggingOptions) obj).f29212b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29212b});
    }
}

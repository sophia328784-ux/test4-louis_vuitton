package com.airbnb.lottie;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class LottieResult<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f21781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f21782b;

    public LottieResult(V v) {
        this.f21781a = v;
        this.f21782b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LottieResult)) {
            return false;
        }
        LottieResult lottieResult = (LottieResult) obj;
        Object obj2 = this.f21781a;
        if (obj2 != null && obj2.equals(lottieResult.f21781a)) {
            return true;
        }
        Throwable th = this.f21782b;
        if (th == null || lottieResult.f21782b == null) {
            return false;
        }
        return th.toString().equals(th.toString());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f21781a, this.f21782b});
    }

    public LottieResult(Throwable th) {
        this.f21782b = th;
        this.f21781a = null;
    }
}

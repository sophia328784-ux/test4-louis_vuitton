package io.reactivex.rxjava3.schedulers;

import defpackage.a;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class Timed<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f71162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f71163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimeUnit f71164c;

    public Timed(T t, long j2, TimeUnit timeUnit) {
        Objects.requireNonNull(t, "value is null");
        this.f71162a = t;
        this.f71163b = j2;
        Objects.requireNonNull(timeUnit, "unit is null");
        this.f71164c = timeUnit;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Timed) {
            Timed timed = (Timed) obj;
            if (Objects.equals(this.f71162a, timed.f71162a) && this.f71163b == timed.f71163b && Objects.equals(this.f71164c, timed.f71164c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f71162a.hashCode() * 31;
        long j2 = this.f71163b;
        return this.f71164c.hashCode() + ((iHashCode + ((int) (j2 ^ (j2 >>> 31)))) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Timed[time=");
        sb.append(this.f71163b);
        sb.append(", unit=");
        sb.append(this.f71164c);
        sb.append(", value=");
        return a.n(sb, this.f71162a, "]");
    }
}

package com.google.android.gms.internal.measurement;

import com.google.common.base.Preconditions;
import defpackage.d21;
import defpackage.md;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmv implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f30748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30749c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f30750e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f30751f;
    public final RuntimeException g;

    public zzmv(int i2, long j2, long j3, Object obj, String str) {
        Preconditions.g(((j2 > 0L ? 1 : (j2 == 0L ? 0 : -1)) == 0) == (str != null));
        this.f30748b = j2;
        this.f30749c = str;
        this.d = i2;
        this.f30750e = j3;
        this.f30751f = obj;
        if (i2 != 5) {
            this.g = null;
            return;
        }
        if (obj == null) {
            this.g = new NullPointerException("Null stringOrBytes");
        } else if ((obj instanceof byte[]) || (obj instanceof zzacr)) {
            this.g = null;
        } else {
            this.g = new RuntimeException("Wrong stringOrBytes type: ".concat(String.valueOf(obj.getClass())));
        }
    }

    public final Object a() {
        int i2 = this.d;
        if (i2 == 0) {
            return Boolean.FALSE;
        }
        if (i2 == 1) {
            return Boolean.TRUE;
        }
        long j2 = this.f30750e;
        if (i2 == 2) {
            return Long.valueOf(j2);
        }
        if (i2 == 3) {
            return Double.valueOf(Double.longBitsToDouble(j2));
        }
        Object obj = this.f30751f;
        if (i2 == 4) {
            obj.getClass();
            return obj;
        }
        if (i2 != 5) {
            md.h("Impossible, this was validated when parsed or created");
            return null;
        }
        obj.getClass();
        try {
            return obj instanceof byte[] ? (byte[]) obj : ((zzacr) obj).q();
        } catch (Throwable th) {
            RuntimeException runtimeException = this.g;
            if (runtimeException != null) {
                th.addSuppressed(runtimeException);
            }
            throw th;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        zzmv zzmvVar = (zzmv) obj;
        long j2 = zzmvVar.f30748b;
        long j3 = this.f30748b;
        int iCompare = Long.compare(j3, j2);
        if (iCompare != 0) {
            return iCompare;
        }
        if (j3 != 0) {
            return 0;
        }
        String str = this.f30749c;
        str.getClass();
        String str2 = zzmvVar.f30749c;
        str2.getClass();
        return str.compareTo(str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzmv)) {
            return false;
        }
        zzmv zzmvVar = (zzmv) obj;
        return this.f30748b == zzmvVar.f30748b && Objects.equals(this.f30749c, zzmvVar.f30749c);
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f30748b), this.f30749c);
    }

    public final String toString() {
        String string = this.f30749c;
        if (string == null) {
            string = Long.toString(this.f30748b);
        }
        String strValueOf = String.valueOf(a());
        return d21.p(new StringBuilder(String.valueOf(string).length() + 1 + strValueOf.length()), string, ":", strValueOf);
    }
}

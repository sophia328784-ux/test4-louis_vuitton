package com.google.android.gms.internal.measurement;

import defpackage.zy0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zzxy extends zzzj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f31076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31077b;

    @Override // com.google.android.gms.internal.measurement.zzzj
    public final int a() {
        return this.f31077b;
    }

    @Override // com.google.android.gms.internal.measurement.zzzj
    public final zzyl b(int i2) {
        if (i2 < this.f31077b) {
            return (zzyl) this.f31076a[i2 + i2];
        }
        zy0.b();
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzzj
    public final Object c(int i2) {
        if (i2 < this.f31077b) {
            return this.f31076a[i2 + i2 + 1];
        }
        zy0.b();
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzzj
    public final Object d(zzyl zzylVar) {
        int iF = f(zzylVar);
        if (iF == -1) {
            return null;
        }
        return zzylVar.f31090b.cast(this.f31076a[iF + iF + 1]);
    }

    public final void e(zzyl zzylVar, Object obj) {
        int iF;
        if (!zzylVar.f31091c && (iF = f(zzylVar)) != -1) {
            zzabr.a(obj, "metadata value");
            this.f31076a[iF + iF + 1] = obj;
            return;
        }
        int i2 = this.f31077b + 1;
        Object[] objArr = this.f31076a;
        int length = objArr.length;
        if (i2 + i2 > length) {
            this.f31076a = Arrays.copyOf(objArr, length + length);
        }
        Object[] objArr2 = this.f31076a;
        int i3 = this.f31077b;
        int i4 = i3 + i3;
        objArr2[i4] = zzylVar;
        zzabr.a(obj, "metadata value");
        objArr2[i4 + 1] = obj;
        this.f31077b++;
    }

    public final int f(zzyl zzylVar) {
        for (int i2 = 0; i2 < this.f31077b; i2++) {
            if (this.f31076a[i2 + i2].equals(zzylVar)) {
                return i2;
            }
        }
        return -1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Metadata{");
        for (int i2 = 0; i2 < this.f31077b; i2++) {
            sb.append(" '");
            sb.append(b(i2));
            sb.append("': ");
            sb.append(c(i2));
        }
        sb.append(" }");
        return sb.toString();
    }
}

package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzafn implements zzaez {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzafc f30454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f30456c;
    public final int d;

    public zzafn(zzafc zzafcVar, String str, Object[] objArr) {
        this.f30454a = zzafcVar;
        this.f30455b = str;
        this.f30456c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.d = cCharAt;
            return;
        }
        int i2 = cCharAt & 8191;
        int i3 = 1;
        int i4 = 13;
        while (true) {
            int i5 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.d = i2 | (cCharAt2 << i4);
                return;
            } else {
                i2 |= (cCharAt2 & 8191) << i4;
                i4 += 13;
                i3 = i5;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaez
    public final boolean d0() {
        return (this.d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.zzaez
    public final zzafc e0() {
        return this.f30454a;
    }

    @Override // com.google.android.gms.internal.measurement.zzaez
    public final int f0() {
        int i2 = this.d;
        if ((i2 & 1) != 0) {
            return 1;
        }
        return (i2 & 4) == 4 ? 3 : 2;
    }
}

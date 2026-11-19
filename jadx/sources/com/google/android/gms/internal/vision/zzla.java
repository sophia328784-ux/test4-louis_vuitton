package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
final class zzla implements zzki {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzkk f31259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f31261c;
    public final int d;

    public zzla(zzkk zzkkVar, String str, Object[] objArr) {
        this.f31259a = zzkkVar;
        this.f31260b = str;
        this.f31261c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.d = cCharAt;
            return;
        }
        int i2 = cCharAt & 8191;
        int i3 = 13;
        int i4 = 1;
        while (true) {
            int i5 = i4 + 1;
            char cCharAt2 = str.charAt(i4);
            if (cCharAt2 < 55296) {
                this.d = i2 | (cCharAt2 << i3);
                return;
            } else {
                i2 |= (cCharAt2 & 8191) << i3;
                i3 += 13;
                i4 = i5;
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzki
    public final int d0() {
        return (this.d & 1) == 1 ? 1 : 2;
    }

    @Override // com.google.android.gms.internal.vision.zzki
    public final boolean e0() {
        return (this.d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.vision.zzki
    public final zzkk f0() {
        return this.f31259a;
    }
}

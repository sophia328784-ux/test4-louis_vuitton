package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29720b = 0;

    public zzee(String str) {
        this.f29719a = str;
    }

    public final int a() {
        int i2 = this.f29720b;
        this.f29720b = i2 + 1;
        String str = this.f29719a;
        char cCharAt = str.charAt(i2);
        if (cCharAt < 55296) {
            return cCharAt;
        }
        int i3 = cCharAt & 8191;
        int i4 = 13;
        while (true) {
            int i5 = this.f29720b;
            this.f29720b = i5 + 1;
            char cCharAt2 = str.charAt(i5);
            if (cCharAt2 < 55296) {
                return (cCharAt2 << i4) | i3;
            }
            i3 |= (cCharAt2 & 8191) << i4;
            i4 += 13;
        }
    }
}

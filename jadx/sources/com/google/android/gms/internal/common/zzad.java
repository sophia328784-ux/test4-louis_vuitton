package com.google.android.gms.internal.common;

import defpackage.md;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzad extends zzaa {
    public zzad() {
        this.f29809a = new Object[4];
        this.f29810b = 0;
    }

    public final void a(Object obj) {
        int i2;
        obj.getClass();
        int length = this.f29809a.length;
        int i3 = this.f29810b;
        int i4 = i3 + 1;
        if (i4 < 0) {
            md.n("cannot store more than Integer.MAX_VALUE elements");
            return;
        }
        if (i4 <= length) {
            i2 = length;
        } else {
            i2 = (length >> 1) + length + 1;
            if (i2 < i4) {
                int iHighestOneBit = Integer.highestOneBit(i3);
                i2 = iHighestOneBit + iHighestOneBit;
            }
            if (i2 < 0) {
                i2 = Integer.MAX_VALUE;
            }
        }
        if (i2 > length || this.f29811c) {
            this.f29809a = Arrays.copyOf(this.f29809a, i2);
            this.f29811c = false;
        }
        Object[] objArr = this.f29809a;
        int i5 = this.f29810b;
        this.f29810b = i5 + 1;
        objArr[i5] = obj;
    }

    public final zzah b() {
        this.f29811c = true;
        return zzah.p(this.f29810b, this.f29809a);
    }
}

package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzwp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f31051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzwn f31052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzwn f31053c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31055f;

    public zzwp(int[] iArr) {
        this.f31051a = iArr;
        zzwn zzwnVar = new zzwn(-1, -1);
        this.f31052b = zzwnVar;
        this.f31053c = zzwnVar;
    }

    public final void a() {
        if (this.f31054e == 0) {
            return;
        }
        HashMap map = this.f31053c.d;
        int i2 = this.d;
        int[] iArr = this.f31051a;
        zzwn zzwnVar = (zzwn) map.get(Integer.valueOf(iArr[i2]));
        while (true) {
            int i3 = (zzwnVar.f31046b - zzwnVar.f31045a) + 1;
            int i4 = this.f31054e;
            if (i3 > i4) {
                return;
            }
            int i5 = this.d + i3;
            this.d = i5;
            this.f31053c = zzwnVar;
            int i6 = i4 - i3;
            this.f31054e = i6;
            if (i6 > 0) {
                zzwnVar = (zzwn) zzwnVar.d.get(Integer.valueOf(iArr[i5]));
            }
        }
    }

    public final void b() {
        zzwn zzwnVar = this.f31053c.f31047c;
        if (zzwnVar != null) {
            this.f31053c = zzwnVar;
        } else {
            this.f31053c = this.f31052b;
            int i2 = this.f31054e;
            if (i2 > 0) {
                this.f31054e = i2 - 1;
            }
            if (this.f31055f > 0) {
                this.d++;
            }
        }
        a();
    }

    public final void c(zzwn zzwnVar, StringBuilder sb) {
        for (zzwn zzwnVar2 : zzwnVar.d.values()) {
            sb.append("  ");
            sb.append(zzwnVar);
            sb.append(" -> ");
            sb.append(zzwnVar2);
            sb.append(" [label=\"");
            int i2 = zzwnVar2.f31045a;
            int i3 = zzwnVar2.f31046b + 1;
            int[] iArr = this.f31051a;
            sb.append(Arrays.toString(Arrays.copyOfRange(iArr, i2, Math.min(iArr.length, i3))));
            sb.append("\"]\n");
            c(zzwnVar2, sb);
        }
    }

    public final boolean d(int i2, int i3, int i4, int i5) {
        if (i2 < 0 || i4 < 0) {
            return false;
        }
        int[] iArr = this.f31051a;
        int length = iArr.length;
        int iMin = Math.min(length, i3);
        if (iMin - i2 != Math.min(length, i5) - i4) {
            return false;
        }
        for (int i6 = i2; i6 <= iMin; i6++) {
            if (iArr[i6] != iArr[(i4 + i6) - i2]) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("digraph {\n");
        c(this.f31052b, sb);
        sb.append("}");
        return sb.toString();
    }
}

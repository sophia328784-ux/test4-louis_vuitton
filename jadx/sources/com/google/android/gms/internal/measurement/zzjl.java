package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.common.collect.Sets;
import defpackage.d21;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjl> CREATOR = new zzjm();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f30654c;
    public final byte[][] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[][] f30655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[][] f30656f;
    public final byte[][] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f30657h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[][] f30658i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f30659j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[][] f30660k;

    static {
        byte[][] bArr = new byte[0][];
        new zzjl("", null, bArr, bArr, bArr, bArr, null, null, null, null);
    }

    public zzjl(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6, int[] iArr2, byte[][] bArr7) {
        this.f30653b = str;
        this.f30654c = bArr;
        this.d = bArr2;
        this.f30655e = bArr3;
        this.f30656f = bArr4;
        this.g = bArr5;
        this.f30657h = iArr;
        this.f30658i = bArr6;
        this.f30659j = iArr2;
        this.f30660k = bArr7;
    }

    public static void W1(StringBuilder sb, String str, byte[][] bArr) {
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
            return;
        }
        sb.append("(");
        boolean z = true;
        int i2 = 0;
        while (i2 < bArr.length) {
            byte[] bArr2 = bArr[i2];
            if (!z) {
                sb.append(", ");
            }
            sb.append("'");
            Preconditions.h(bArr2);
            sb.append(Base64.encodeToString(bArr2, 3));
            sb.append("'");
            i2++;
            z = false;
        }
        sb.append(")");
    }

    public static Set Y1(byte[][] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) == 0) {
            return Collections.EMPTY_SET;
        }
        HashSet hashSetE = Sets.e(length);
        for (byte[] bArr2 : bArr) {
            Preconditions.h(bArr2);
            hashSetE.add(Base64.encodeToString(bArr2, 3));
        }
        return hashSetE;
    }

    public static List Z1(int[] iArr) {
        if (iArr == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(iArr.length >> 1);
        for (int i2 = 0; i2 < iArr.length; i2 += 2) {
            arrayList.add(new zzju(iArr[i2], iArr[i2 + 1]));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public final Set X1() {
        ArrayList arrayList = new ArrayList();
        byte[][] bArr = this.f30658i;
        if (bArr != null) {
            Collections.addAll(arrayList, bArr);
        }
        byte[] bArr2 = this.f30654c;
        if (bArr2 != null) {
            arrayList.add(bArr2);
        }
        return Y1((byte[][]) arrayList.toArray(new byte[0][]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashSet] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.HashSet] */
    public final boolean equals(Object obj) {
        Object objE;
        Object objE2;
        int length;
        int length2;
        if (obj instanceof zzjl) {
            zzjl zzjlVar = (zzjl) obj;
            if (zzkl.a(this.f30653b, zzjlVar.f30653b) && zzkl.a(X1(), zzjlVar.X1()) && zzkl.a(Y1(this.d), Y1(zzjlVar.d)) && zzkl.a(Y1(this.f30655e), Y1(zzjlVar.f30655e)) && zzkl.a(Y1(this.f30656f), Y1(zzjlVar.f30656f)) && zzkl.a(Y1(this.g), Y1(zzjlVar.g))) {
                int[] iArr = this.f30657h;
                if (iArr == null || (length2 = iArr.length) == 0) {
                    objE = Collections.EMPTY_SET;
                } else {
                    objE = Sets.e(length2);
                    for (int i2 : iArr) {
                        objE.add(Integer.valueOf(i2));
                    }
                }
                int[] iArr2 = zzjlVar.f30657h;
                if (iArr2 == null || (length = iArr2.length) == 0) {
                    objE2 = Collections.EMPTY_SET;
                } else {
                    objE2 = Sets.e(length);
                    for (int i3 : iArr2) {
                        objE2.add(Integer.valueOf(i3));
                    }
                }
                if (zzkl.a(objE, objE2) && zzkl.a(Z1(this.f30659j), Z1(zzjlVar.f30659j)) && zzkl.a(Y1(this.f30660k), Y1(zzjlVar.f30660k))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        String str = this.f30653b;
        sb.append(str == null ? "null" : d21.p(new StringBuilder(str.length() + 2), "'", str, "'"));
        sb.append(", direct==");
        byte[] bArr = this.f30654c;
        if (bArr == null) {
            sb.append("null");
        } else {
            sb.append("'");
            sb.append(Base64.encodeToString(bArr, 3));
            sb.append("'");
        }
        sb.append(", ");
        W1(sb, "GAIA=", this.d);
        sb.append(", ");
        W1(sb, "PSEUDO=", this.f30655e);
        sb.append(", ");
        W1(sb, "ALWAYS=", this.f30656f);
        sb.append(", ");
        W1(sb, "OTHER=", this.g);
        sb.append(", weak=");
        sb.append(Arrays.toString(this.f30657h));
        sb.append(", ");
        W1(sb, "directs=", this.f30658i);
        sb.append(", genDims=");
        sb.append(Arrays.toString(Z1(this.f30659j).toArray()));
        sb.append(", ");
        W1(sb, "external=", this.f30660k);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f30653b, false);
        SafeParcelWriter.b(parcel, 3, this.f30654c, false);
        SafeParcelWriter.c(parcel, 4, this.d);
        SafeParcelWriter.c(parcel, 5, this.f30655e);
        SafeParcelWriter.c(parcel, 6, this.f30656f);
        SafeParcelWriter.c(parcel, 7, this.g);
        SafeParcelWriter.g(parcel, 8, this.f30657h);
        SafeParcelWriter.c(parcel, 9, this.f30658i);
        SafeParcelWriter.g(parcel, 10, this.f30659j);
        SafeParcelWriter.c(parcel, 11, this.f30660k);
        SafeParcelWriter.r(iQ, parcel);
    }
}

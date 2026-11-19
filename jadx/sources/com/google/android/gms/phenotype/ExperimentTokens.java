package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ExperimentTokens extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ExperimentTokens> CREATOR = new zzh();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f32041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f32042c;
    public final byte[][] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[][] f32043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[][] f32044f;
    public final byte[][] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f32045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[][] f32046i;

    public interface zza {
    }

    static {
        byte[][] bArr = new byte[0][];
        new ExperimentTokens("", null, bArr, bArr, bArr, bArr, null, null);
    }

    public ExperimentTokens(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6) {
        this.f32041b = str;
        this.f32042c = bArr;
        this.d = bArr2;
        this.f32043e = bArr3;
        this.f32044f = bArr4;
        this.g = bArr5;
        this.f32045h = iArr;
        this.f32046i = bArr6;
    }

    public static List W1(int[] iArr) {
        if (iArr == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List X1(byte[][] bArr) {
        if (bArr == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static void Y1(StringBuilder sb, String str, byte[][] bArr) {
        String str2;
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            str2 = "null";
        } else {
            sb.append("(");
            int length = bArr.length;
            boolean z = true;
            int i2 = 0;
            while (i2 < length) {
                byte[] bArr2 = bArr[i2];
                if (!z) {
                    sb.append(", ");
                }
                sb.append("'");
                sb.append(Base64.encodeToString(bArr2, 3));
                sb.append("'");
                i2++;
                z = false;
            }
            str2 = ")";
        }
        sb.append(str2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ExperimentTokens) {
            ExperimentTokens experimentTokens = (ExperimentTokens) obj;
            if (zzn.a(this.f32041b, experimentTokens.f32041b) && Arrays.equals(this.f32042c, experimentTokens.f32042c) && zzn.a(X1(this.d), X1(experimentTokens.d)) && zzn.a(X1(this.f32043e), X1(experimentTokens.f32043e)) && zzn.a(X1(this.f32044f), X1(experimentTokens.f32044f)) && zzn.a(X1(this.g), X1(experimentTokens.g)) && zzn.a(W1(this.f32045h), W1(experimentTokens.f32045h)) && zzn.a(X1(this.f32046i), X1(experimentTokens.f32046i))) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String string;
        StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        String str = this.f32041b;
        if (str == null) {
            string = "null";
        } else {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2);
            sb2.append("'");
            sb2.append(str);
            sb2.append("'");
            string = sb2.toString();
        }
        sb.append(string);
        sb.append(", direct=");
        byte[] bArr = this.f32042c;
        if (bArr == null) {
            sb.append("null");
        } else {
            sb.append("'");
            sb.append(Base64.encodeToString(bArr, 3));
            sb.append("'");
        }
        sb.append(", ");
        Y1(sb, "GAIA", this.d);
        sb.append(", ");
        Y1(sb, "PSEUDO", this.f32043e);
        sb.append(", ");
        Y1(sb, "ALWAYS", this.f32044f);
        sb.append(", ");
        Y1(sb, "OTHER", this.g);
        sb.append(", ");
        sb.append("weak");
        sb.append("=");
        int[] iArr = this.f32045h;
        if (iArr == null) {
            sb.append("null");
        } else {
            sb.append("(");
            int length = iArr.length;
            boolean z = true;
            int i2 = 0;
            while (i2 < length) {
                int i3 = iArr[i2];
                if (!z) {
                    sb.append(", ");
                }
                sb.append(i3);
                i2++;
                z = false;
            }
            sb.append(")");
        }
        sb.append(", ");
        Y1(sb, "directs", this.f32046i);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f32041b, false);
        SafeParcelWriter.b(parcel, 3, this.f32042c, false);
        SafeParcelWriter.c(parcel, 4, this.d);
        SafeParcelWriter.c(parcel, 5, this.f32043e);
        SafeParcelWriter.c(parcel, 6, this.f32044f);
        SafeParcelWriter.c(parcel, 7, this.g);
        SafeParcelWriter.g(parcel, 8, this.f32045h);
        SafeParcelWriter.c(parcel, 9, this.f32046i);
        SafeParcelWriter.r(iQ, parcel);
    }
}

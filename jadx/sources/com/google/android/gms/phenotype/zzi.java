package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.a;
import defpackage.md;
import defpackage.z81;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzi extends AbstractSafeParcelable implements Comparable<zzi> {
    public static final Parcelable.Creator<zzi> CREATOR = new zzk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f32047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f32048c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f32049e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f32050f;
    public final byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f32051h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f32052i;

    public zzi(String str, long j2, boolean z, double d, String str2, byte[] bArr, int i2, int i3) {
        this.f32047b = str;
        this.f32048c = j2;
        this.d = z;
        this.f32049e = d;
        this.f32050f = str2;
        this.g = bArr;
        this.f32051h = i2;
        this.f32052i = i3;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0096 A[RETURN] */
    @Override // java.lang.Comparable
    public final int compareTo(zzi zziVar) {
        zzi zziVar2 = zziVar;
        String str = zziVar2.f32047b;
        byte[] bArr = zziVar2.g;
        int iCompareTo = this.f32047b.compareTo(str);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int i2 = zziVar2.f32051h;
        int i3 = this.f32051h;
        int i4 = i3 < i2 ? -1 : i3 == i2 ? 0 : 1;
        if (i4 != 0) {
            return i4;
        }
        if (i3 == 1) {
            long j2 = this.f32048c;
            long j3 = zziVar2.f32048c;
            if (j2 >= j3) {
                if (j2 == j3) {
                    return 0;
                }
                return 1;
            }
            return -1;
        }
        if (i3 == 2) {
            boolean z = zziVar2.d;
            boolean z2 = this.d;
            if (z2 != z) {
                if (z2) {
                    return 1;
                }
                return -1;
            }
            return 0;
        }
        if (i3 == 3) {
            return Double.compare(this.f32049e, zziVar2.f32049e);
        }
        if (i3 == 4) {
            String str2 = zziVar2.f32050f;
            String str3 = this.f32050f;
            if (str3 != str2) {
                if (str3 != null) {
                    if (str2 != null) {
                        return str3.compareTo(str2);
                    }
                    return 1;
                }
                return -1;
            }
            return 0;
        }
        if (i3 != 5) {
            md.h(z81.f(31, i3, "Invalid enum value: "));
            return 0;
        }
        byte[] bArr2 = this.g;
        if (bArr2 != bArr) {
            if (bArr2 != null) {
                if (bArr != null) {
                    for (int i5 = 0; i5 < Math.min(bArr2.length, bArr.length); i5++) {
                        int i6 = bArr2[i5] - bArr[i5];
                        if (i6 != 0) {
                            return i6;
                        }
                    }
                    int length = bArr2.length;
                    int length2 = bArr.length;
                    if (length < length2) {
                        return -1;
                    }
                    return length == length2 ? 0 : 1;
                }
                return 1;
            }
            return -1;
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzi) {
            zzi zziVar = (zzi) obj;
            if (zzn.a(this.f32047b, zziVar.f32047b)) {
                int i2 = zziVar.f32051h;
                int i3 = this.f32051h;
                if (i3 == i2 && this.f32052i == zziVar.f32052i) {
                    if (i3 != 1) {
                        if (i3 == 2) {
                            return this.d == zziVar.d;
                        }
                        if (i3 == 3) {
                            return this.f32049e == zziVar.f32049e;
                        }
                        if (i3 == 4) {
                            return zzn.a(this.f32050f, zziVar.f32050f);
                        }
                        if (i3 == 5) {
                            return Arrays.equals(this.g, zziVar.g);
                        }
                        md.h(z81.f(31, i3, "Invalid enum value: "));
                        return false;
                    }
                    if (this.f32048c == zziVar.f32048c) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final String toString() {
        String strEncodeToString;
        StringBuilder sb = new StringBuilder("Flag(");
        String str = this.f32047b;
        sb.append(str);
        sb.append(", ");
        int i2 = this.f32051h;
        if (i2 == 1) {
            sb.append(this.f32048c);
        } else if (i2 == 2) {
            sb.append(this.d);
        } else if (i2 != 3) {
            if (i2 == 4) {
                sb.append("'");
                strEncodeToString = this.f32050f;
            } else {
                if (i2 != 5) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 27);
                    sb2.append("Invalid type: ");
                    sb2.append(str);
                    sb2.append(", ");
                    sb2.append(i2);
                    throw new AssertionError(sb2.toString());
                }
                byte[] bArr = this.g;
                if (bArr == null) {
                    sb.append("null");
                } else {
                    sb.append("'");
                    strEncodeToString = Base64.encodeToString(bArr, 3);
                }
            }
            sb.append(strEncodeToString);
            sb.append("'");
        } else {
            sb.append(this.f32049e);
        }
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        return a.i(this.f32052i, ")", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f32047b, false);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(this.f32048c);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.p(parcel, 5, 8);
        parcel.writeDouble(this.f32049e);
        SafeParcelWriter.k(parcel, 6, this.f32050f, false);
        SafeParcelWriter.b(parcel, 7, this.g, false);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f32051h);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f32052i);
        SafeParcelWriter.r(iQ, parcel);
    }
}

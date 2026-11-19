package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.d21;
import defpackage.md;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjo extends AbstractSafeParcelable implements Comparable<zzjo> {
    public static final Parcelable.Creator<zzjo> CREATOR = new zzjp();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f30665c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f30666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f30667f;
    public final byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f30668h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f30669i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f30670j;

    public zzjo(String str, long j2, boolean z, double d, String str2, byte[] bArr, int i2, int i3, int i4) {
        this.f30664b = str;
        this.f30665c = j2;
        this.d = z;
        this.f30666e = d;
        this.f30667f = str2;
        this.g = bArr;
        this.f30668h = i2;
        this.f30669i = i3;
        this.f30670j = i4;
    }

    public final void W1(StringBuilder sb) {
        sb.append("Flag(");
        String str = this.f30664b;
        sb.append(str);
        sb.append(", ");
        int i2 = this.f30668h;
        if (i2 == 1) {
            sb.append(this.f30665c);
        } else if (i2 == 2) {
            sb.append(this.d);
        } else if (i2 == 3) {
            sb.append(this.f30666e);
        } else if (i2 == 4) {
            sb.append("'");
            String str2 = this.f30667f;
            Preconditions.h(str2);
            sb.append(str2);
            sb.append("'");
        } else {
            if (i2 != 5) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(i2).length());
                sb2.append("Invalid type: ");
                sb2.append(str);
                sb2.append(", ");
                sb2.append(i2);
                throw new AssertionError(sb2.toString());
            }
            sb.append("'");
            byte[] bArr = this.g;
            Preconditions.h(bArr);
            sb.append(Base64.encodeToString(bArr, 3));
            sb.append("'");
        }
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(this.f30669i);
        sb.append(", ");
        sb.append(this.f30670j);
        sb.append(")");
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00a3 A[RETURN] */
    @Override // java.lang.Comparable
    public final int compareTo(zzjo zzjoVar) {
        int i2;
        zzjo zzjoVar2 = zzjoVar;
        int iCompareTo = this.f30664b.compareTo(zzjoVar2.f30664b);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int i3 = zzjoVar2.f30668h;
        int i4 = this.f30668h;
        if (i4 < i3) {
            i2 = -1;
        } else {
            i2 = i4 != i3 ? 1 : 0;
        }
        if (i2 != 0) {
            return i2;
        }
        if (i4 == 1) {
            long j2 = this.f30665c;
            long j3 = zzjoVar2.f30665c;
            if (j2 >= j3) {
                if (j2 == j3) {
                    return 0;
                }
                return 1;
            }
            return -1;
        }
        if (i4 == 2) {
            boolean z = zzjoVar2.d;
            boolean z2 = this.d;
            if (z2 != z) {
                if (z2) {
                    return 1;
                }
                return -1;
            }
            return 0;
        }
        if (i4 == 3) {
            return Double.compare(this.f30666e, zzjoVar2.f30666e);
        }
        if (i4 == 4) {
            String str = zzjoVar2.f30667f;
            String str2 = this.f30667f;
            if (str2 != str) {
                if (str2 != null) {
                    if (str != null) {
                        return str2.compareTo(str);
                    }
                    return 1;
                }
                return -1;
            }
            return 0;
        }
        if (i4 != 5) {
            md.h(d21.f(i4, "Invalid enum value: ", new StringBuilder(String.valueOf(i4).length() + 20)));
            return 0;
        }
        byte[] bArr = zzjoVar2.g;
        byte[] bArr2 = this.g;
        if (bArr2 != bArr) {
            if (bArr2 != null) {
                if (bArr != null) {
                    int i5 = 0;
                    while (true) {
                        int length = bArr.length;
                        int length2 = bArr2.length;
                        if (i5 >= Math.min(length2, length)) {
                            if (length2 < length) {
                                return -1;
                            }
                            return length2 != length ? 1 : 0;
                        }
                        int i6 = bArr2[i5] - bArr[i5];
                        if (i6 != 0) {
                            return i6;
                        }
                        i5++;
                    }
                }
                return 1;
            }
            return -1;
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzjo) {
            zzjo zzjoVar = (zzjo) obj;
            if (zzkl.a(this.f30664b, zzjoVar.f30664b)) {
                int i2 = zzjoVar.f30668h;
                int i3 = this.f30668h;
                if (i3 == i2 && this.f30669i == zzjoVar.f30669i && this.f30670j == zzjoVar.f30670j) {
                    if (i3 == 1) {
                        return this.f30665c == zzjoVar.f30665c;
                    }
                    if (i3 == 2) {
                        return this.d == zzjoVar.d;
                    }
                    if (i3 == 3) {
                        return this.f30666e == zzjoVar.f30666e;
                    }
                    if (i3 == 4) {
                        return zzkl.a(this.f30667f, zzjoVar.f30667f);
                    }
                    if (i3 == 5) {
                        return Arrays.equals(this.g, zzjoVar.g);
                    }
                    md.h(d21.f(i3, "Invalid enum value: ", new StringBuilder(String.valueOf(i3).length() + 20)));
                    return false;
                }
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        W1(sb);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        String str = this.f30664b;
        boolean z = str == null;
        int iQ = SafeParcelWriter.q(20293, parcel);
        if (!z) {
            SafeParcelWriter.k(parcel, 2, str, false);
        }
        long j2 = this.f30665c;
        if (j2 != 0) {
            SafeParcelWriter.p(parcel, 3, 8);
            parcel.writeLong(j2);
        }
        if (this.d) {
            SafeParcelWriter.p(parcel, 4, 4);
            parcel.writeInt(1);
        }
        double d = this.f30666e;
        if (d != 0.0d) {
            SafeParcelWriter.p(parcel, 5, 8);
            parcel.writeDouble(d);
        }
        String str2 = this.f30667f;
        if (str2 != null) {
            SafeParcelWriter.k(parcel, 6, str2, false);
        }
        byte[] bArr = this.g;
        if (bArr != null) {
            SafeParcelWriter.b(parcel, 7, bArr, false);
        }
        int i3 = this.f30668h;
        if (i3 != 0) {
            SafeParcelWriter.p(parcel, 8, 4);
            parcel.writeInt(i3);
        }
        int i4 = this.f30669i;
        if (i4 != 0) {
            SafeParcelWriter.p(parcel, 9, 4);
            parcel.writeInt(i4);
        }
        int i5 = this.f30670j;
        if (i5 != 0) {
            SafeParcelWriter.p(parcel, 10, 4);
            parcel.writeInt(i5);
        }
        SafeParcelWriter.r(iQ, parcel);
    }
}

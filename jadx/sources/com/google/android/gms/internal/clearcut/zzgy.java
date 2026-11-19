package com.google.android.gms.internal.clearcut;

import defpackage.md;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgy extends zzfu<zzgy> implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String[] f29760c;
    public String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f29761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long[] f29762f;
    public long[] g;

    public zzgy() {
        String[] strArr = zzgb.f29757c;
        this.f29760c = strArr;
        this.d = strArr;
        this.f29761e = zzgb.f29755a;
        long[] jArr = zzgb.f29756b;
        this.f29762f = jArr;
        this.g = jArr;
        this.f29754b = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void a(zzfs zzfsVar) throws zzft {
        String[] strArr = this.f29760c;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.f29760c;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    zzfsVar.c(1, str);
                }
                i2++;
            }
        }
        String[] strArr3 = this.d;
        if (strArr3 != null && strArr3.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr4 = this.d;
                if (i3 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i3];
                if (str2 != null) {
                    zzfsVar.c(2, str2);
                }
                i3++;
            }
        }
        int[] iArr = this.f29761e;
        if (iArr != null && iArr.length > 0) {
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.f29761e;
                if (i4 >= iArr2.length) {
                    break;
                }
                int i5 = iArr2[i4];
                zzfsVar.h(3, 0);
                if (i5 >= 0) {
                    zzfsVar.f(i5);
                } else {
                    zzfsVar.j(i5);
                }
                i4++;
            }
        }
        long[] jArr = this.f29762f;
        if (jArr != null && jArr.length > 0) {
            int i6 = 0;
            while (true) {
                long[] jArr2 = this.f29762f;
                if (i6 >= jArr2.length) {
                    break;
                }
                long j2 = jArr2[i6];
                zzfsVar.h(4, 0);
                zzfsVar.j(j2);
                i6++;
            }
        }
        long[] jArr3 = this.g;
        if (jArr3 == null || jArr3.length <= 0) {
            return;
        }
        int i7 = 0;
        while (true) {
            long[] jArr4 = this.g;
            if (i7 >= jArr4.length) {
                return;
            }
            long j3 = jArr4[i7];
            zzfsVar.h(5, 0);
            zzfsVar.j(j3);
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final int c() {
        int length;
        long[] jArr;
        int[] iArr;
        String[] strArr = this.f29760c;
        int i2 = 0;
        if (strArr == null || strArr.length <= 0) {
            length = 0;
        } else {
            int i3 = 0;
            int iM = 0;
            int i4 = 0;
            while (true) {
                String[] strArr2 = this.f29760c;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i3];
                if (str != null) {
                    i4++;
                    int iA = zzfs.a(str);
                    iM += zzfs.m(iA) + iA;
                }
                i3++;
            }
            length = iM + i4;
        }
        String[] strArr3 = this.d;
        if (strArr3 != null && strArr3.length > 0) {
            int i5 = 0;
            int iM2 = 0;
            int i6 = 0;
            while (true) {
                String[] strArr4 = this.d;
                if (i5 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i5];
                if (str2 != null) {
                    i6++;
                    int iA2 = zzfs.a(str2);
                    iM2 += zzfs.m(iA2) + iA2;
                }
                i5++;
            }
            length = length + iM2 + i6;
        }
        int[] iArr2 = this.f29761e;
        if (iArr2 != null && iArr2.length > 0) {
            int i7 = 0;
            int iM3 = 0;
            while (true) {
                iArr = this.f29761e;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = iArr[i7];
                iM3 += i8 >= 0 ? zzfs.m(i8) : 10;
                i7++;
            }
            length = length + iM3 + iArr.length;
        }
        long[] jArr2 = this.f29762f;
        if (jArr2 != null && jArr2.length > 0) {
            int i9 = 0;
            int iK = 0;
            while (true) {
                jArr = this.f29762f;
                if (i9 >= jArr.length) {
                    break;
                }
                iK += zzfs.k(jArr[i9]);
                i9++;
            }
            length = length + iK + jArr.length;
        }
        long[] jArr3 = this.g;
        if (jArr3 == null || jArr3.length <= 0) {
            return length;
        }
        int iK2 = 0;
        while (true) {
            long[] jArr4 = this.g;
            if (i2 >= jArr4.length) {
                return length + iK2 + jArr4.length;
            }
            iK2 += zzfs.k(jArr4[i2]);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final Object clone() {
        try {
            zzgy zzgyVar = (zzgy) super.clone();
            String[] strArr = this.f29760c;
            if (strArr != null && strArr.length > 0) {
                zzgyVar.f29760c = (String[]) strArr.clone();
            }
            String[] strArr2 = this.d;
            if (strArr2 != null && strArr2.length > 0) {
                zzgyVar.d = (String[]) strArr2.clone();
            }
            int[] iArr = this.f29761e;
            if (iArr != null && iArr.length > 0) {
                zzgyVar.f29761e = (int[]) iArr.clone();
            }
            long[] jArr = this.f29762f;
            if (jArr != null && jArr.length > 0) {
                zzgyVar.f29762f = (long[]) jArr.clone();
            }
            long[] jArr2 = this.g;
            if (jArr2 != null && jArr2.length > 0) {
                zzgyVar.g = (long[]) jArr2.clone();
            }
            return zzgyVar;
        } catch (CloneNotSupportedException e2) {
            md.h(e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ zzfz clone() {
        return (zzgy) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ zzfu clone() {
        return (zzgy) clone();
    }

    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        boolean zEquals3;
        if (obj != this) {
            if (obj instanceof zzgy) {
                zzgy zzgyVar = (zzgy) obj;
                if (zzfy.a(this.f29760c, zzgyVar.f29760c) && zzfy.a(this.d, zzgyVar.d)) {
                    int[] iArr = this.f29761e;
                    int[] iArr2 = zzgyVar.f29761e;
                    if (iArr == null || iArr.length == 0) {
                        zEquals = iArr2 == null || iArr2.length == 0;
                    } else {
                        zEquals = Arrays.equals(iArr, iArr2);
                    }
                    if (zEquals) {
                        long[] jArr = this.f29762f;
                        long[] jArr2 = zzgyVar.f29762f;
                        if (jArr == null || jArr.length == 0) {
                            zEquals2 = jArr2 == null || jArr2.length == 0;
                        } else {
                            zEquals2 = Arrays.equals(jArr, jArr2);
                        }
                        if (zEquals2) {
                            long[] jArr3 = this.g;
                            long[] jArr4 = zzgyVar.g;
                            if (jArr3 == null || jArr3.length == 0) {
                                zEquals3 = jArr4 == null || jArr4.length == 0;
                            } else {
                                zEquals3 = Arrays.equals(jArr3, jArr4);
                            }
                            if (!zEquals3) {
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iB = (((553293455 + zzfy.b(this.f29760c)) * 31) + zzfy.b(this.d)) * 31;
        int[] iArr = this.f29761e;
        int iHashCode = 0;
        int iHashCode2 = (((iArr == null || iArr.length == 0) ? 0 : Arrays.hashCode(iArr)) + iB) * 31;
        long[] jArr = this.f29762f;
        int iHashCode3 = (((jArr == null || jArr.length == 0) ? 0 : Arrays.hashCode(jArr)) + iHashCode2) * 31;
        long[] jArr2 = this.g;
        if (jArr2 != null && jArr2.length != 0) {
            iHashCode = Arrays.hashCode(jArr2);
        }
        return (iHashCode + iHashCode3) * 31;
    }
}

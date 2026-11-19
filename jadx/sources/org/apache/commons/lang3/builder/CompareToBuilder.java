package org.apache.commons.lang3.builder;

/* JADX INFO: loaded from: classes3.dex */
public class CompareToBuilder implements Builder<Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f77544a = 0;

    public final void a(Object obj, Object obj2) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if (this.f77544a == 0 && obj != obj2) {
            if (obj == null) {
                this.f77544a = -1;
                return;
            }
            if (obj2 == null) {
                this.f77544a = 1;
                return;
            }
            if (!obj.getClass().isArray()) {
                this.f77544a = ((Comparable) obj).compareTo(obj2);
                return;
            }
            int i10 = 0;
            if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                if (this.f77544a == 0 && jArr != jArr2) {
                    if (jArr.length != jArr2.length) {
                        this.f77544a = jArr.length >= jArr2.length ? 1 : -1;
                        return;
                    }
                    while (i10 < jArr.length && (i9 = this.f77544a) == 0) {
                        long j2 = jArr[i10];
                        long j3 = jArr2[i10];
                        if (i9 == 0) {
                            this.f77544a = Long.compare(j2, j3);
                        }
                        i10++;
                    }
                    return;
                }
                return;
            }
            if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                int[] iArr2 = (int[]) obj2;
                if (this.f77544a == 0 && iArr != iArr2) {
                    if (iArr.length != iArr2.length) {
                        this.f77544a = iArr.length >= iArr2.length ? 1 : -1;
                        return;
                    }
                    while (i10 < iArr.length && (i8 = this.f77544a) == 0) {
                        int i11 = iArr[i10];
                        int i12 = iArr2[i10];
                        if (i8 == 0) {
                            this.f77544a = Integer.compare(i11, i12);
                        }
                        i10++;
                    }
                    return;
                }
                return;
            }
            if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                short[] sArr2 = (short[]) obj2;
                if (this.f77544a == 0 && sArr != sArr2) {
                    if (sArr.length != sArr2.length) {
                        this.f77544a = sArr.length >= sArr2.length ? 1 : -1;
                        return;
                    }
                    while (i10 < sArr.length && (i7 = this.f77544a) == 0) {
                        short s = sArr[i10];
                        short s2 = sArr2[i10];
                        if (i7 == 0) {
                            this.f77544a = Short.compare(s, s2);
                        }
                        i10++;
                    }
                    return;
                }
                return;
            }
            if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                char[] cArr2 = (char[]) obj2;
                if (this.f77544a == 0 && cArr != cArr2) {
                    if (cArr.length != cArr2.length) {
                        this.f77544a = cArr.length >= cArr2.length ? 1 : -1;
                        return;
                    }
                    while (i10 < cArr.length && (i6 = this.f77544a) == 0) {
                        char c2 = cArr[i10];
                        char c3 = cArr2[i10];
                        if (i6 == 0) {
                            this.f77544a = Character.compare(c2, c3);
                        }
                        i10++;
                    }
                    return;
                }
                return;
            }
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (this.f77544a == 0 && bArr != bArr2) {
                    if (bArr.length != bArr2.length) {
                        this.f77544a = bArr.length >= bArr2.length ? 1 : -1;
                        return;
                    }
                    while (i10 < bArr.length && (i5 = this.f77544a) == 0) {
                        byte b2 = bArr[i10];
                        byte b3 = bArr2[i10];
                        if (i5 == 0) {
                            this.f77544a = Byte.compare(b2, b3);
                        }
                        i10++;
                    }
                    return;
                }
                return;
            }
            if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                if (this.f77544a == 0 && dArr != dArr2) {
                    if (dArr.length != dArr2.length) {
                        this.f77544a = dArr.length >= dArr2.length ? 1 : -1;
                        return;
                    }
                    while (i10 < dArr.length && (i4 = this.f77544a) == 0) {
                        double d = dArr[i10];
                        double d2 = dArr2[i10];
                        if (i4 == 0) {
                            this.f77544a = Double.compare(d, d2);
                        }
                        i10++;
                    }
                    return;
                }
                return;
            }
            if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                float[] fArr2 = (float[]) obj2;
                if (this.f77544a == 0 && fArr != fArr2) {
                    if (fArr.length != fArr2.length) {
                        this.f77544a = fArr.length >= fArr2.length ? 1 : -1;
                        return;
                    }
                    while (i10 < fArr.length && (i3 = this.f77544a) == 0) {
                        float f2 = fArr[i10];
                        float f3 = fArr2[i10];
                        if (i3 == 0) {
                            this.f77544a = Float.compare(f2, f3);
                        }
                        i10++;
                    }
                    return;
                }
                return;
            }
            if (!(obj instanceof boolean[])) {
                Object[] objArr = (Object[]) obj;
                Object[] objArr2 = (Object[]) obj2;
                if (this.f77544a == 0 && objArr != objArr2) {
                    if (objArr.length != objArr2.length) {
                        this.f77544a = objArr.length >= objArr2.length ? 1 : -1;
                        return;
                    }
                    while (i10 < objArr.length && this.f77544a == 0) {
                        a(objArr[i10], objArr2[i10]);
                        i10++;
                    }
                    return;
                }
                return;
            }
            boolean[] zArr = (boolean[]) obj;
            boolean[] zArr2 = (boolean[]) obj2;
            if (this.f77544a == 0 && zArr != zArr2) {
                if (zArr.length != zArr2.length) {
                    this.f77544a = zArr.length >= zArr2.length ? 1 : -1;
                    return;
                }
                while (i10 < zArr.length && (i2 = this.f77544a) == 0) {
                    boolean z = zArr[i10];
                    boolean z2 = zArr2[i10];
                    if (i2 == 0 && z != z2) {
                        if (z) {
                            this.f77544a = 1;
                        } else {
                            this.f77544a = -1;
                        }
                    }
                    i10++;
                }
            }
        }
    }
}

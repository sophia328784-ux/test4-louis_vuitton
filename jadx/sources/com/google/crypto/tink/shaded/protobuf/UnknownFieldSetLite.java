package com.google.crypto.tink.shaded.protobuf;

import defpackage.bm;
import defpackage.x1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UnknownFieldSetLite {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final UnknownFieldSetLite f34257f = new UnknownFieldSetLite(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f34258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f34259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f34260c;
    public int d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f34261e;

    public UnknownFieldSetLite(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f34258a = i2;
        this.f34259b = iArr;
        this.f34260c = objArr;
        this.f34261e = z;
    }

    public static UnknownFieldSetLite c() {
        return new UnknownFieldSetLite(0, new int[8], new Object[8], true);
    }

    public static void e(int i2, Object obj, Writer writer) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            writer.w(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 1) {
            writer.r(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 2) {
            writer.L(i3, (ByteString) obj);
            return;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                writer.b(i3, ((Integer) obj).intValue());
                return;
            } else {
                x1.m(InvalidProtocolBufferException.c());
                return;
            }
        }
        if (writer.s() == Writer.FieldOrder.ASCENDING) {
            writer.z(i3);
            ((UnknownFieldSetLite) obj).f(writer);
            writer.E(i3);
        } else {
            writer.E(i3);
            ((UnknownFieldSetLite) obj).f(writer);
            writer.z(i3);
        }
    }

    public final void a(int i2) {
        int[] iArr = this.f34259b;
        if (i2 > iArr.length) {
            int i3 = this.f34258a;
            int i4 = (i3 / 2) + i3;
            if (i4 >= i2) {
                i2 = i4;
            }
            if (i2 < 8) {
                i2 = 8;
            }
            this.f34259b = Arrays.copyOf(iArr, i2);
            this.f34260c = Arrays.copyOf(this.f34260c, i2);
        }
    }

    public final int b() {
        int i2;
        int iL;
        int iD;
        int i3 = this.d;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f34258a; i5++) {
            int i6 = this.f34259b[i5];
            int i7 = i6 >>> 3;
            int i8 = i6 & 7;
            if (i8 != 0) {
                if (i8 == 1) {
                    ((Long) this.f34260c[i5]).getClass();
                    iD = CodedOutputStream.d(i7);
                } else if (i8 == 2) {
                    iD = CodedOutputStream.a(i7, (ByteString) this.f34260c[i5]);
                } else if (i8 == 3) {
                    i2 = CodedOutputStream.i(i7) * 2;
                    iL = ((UnknownFieldSetLite) this.f34260c[i5]).b();
                } else {
                    if (i8 != 5) {
                        bm.i(InvalidProtocolBufferException.c());
                        return 0;
                    }
                    ((Integer) this.f34260c[i5]).getClass();
                    iD = CodedOutputStream.c(i7);
                }
                i4 = iD + i4;
            } else {
                long jLongValue = ((Long) this.f34260c[i5]).longValue();
                i2 = CodedOutputStream.i(i7);
                iL = CodedOutputStream.l(jLongValue);
            }
            i4 = iL + i2 + i4;
        }
        this.d = i4;
        return i4;
    }

    public final void d(int i2, Object obj) {
        if (!this.f34261e) {
            x1.i();
            return;
        }
        a(this.f34258a + 1);
        int[] iArr = this.f34259b;
        int i3 = this.f34258a;
        iArr[i3] = i2;
        this.f34260c[i3] = obj;
        this.f34258a = i3 + 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnknownFieldSetLite)) {
            return false;
        }
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        int i2 = this.f34258a;
        if (i2 == unknownFieldSetLite.f34258a) {
            int[] iArr = this.f34259b;
            int[] iArr2 = unknownFieldSetLite.f34259b;
            for (int i3 = 0; i3 < i2; i3++) {
                if (iArr[i3] == iArr2[i3]) {
                }
            }
            Object[] objArr = this.f34260c;
            Object[] objArr2 = unknownFieldSetLite.f34260c;
            int i4 = this.f34258a;
            for (int i5 = 0; i5 < i4; i5++) {
                if (objArr[i5].equals(objArr2[i5])) {
                }
            }
            return true;
        }
        return false;
    }

    public final void f(Writer writer) {
        if (this.f34258a == 0) {
            return;
        }
        if (writer.s() == Writer.FieldOrder.ASCENDING) {
            for (int i2 = 0; i2 < this.f34258a; i2++) {
                e(this.f34259b[i2], this.f34260c[i2], writer);
            }
            return;
        }
        for (int i3 = this.f34258a - 1; i3 >= 0; i3--) {
            e(this.f34259b[i3], this.f34260c[i3], writer);
        }
    }

    public final int hashCode() {
        int i2 = this.f34258a;
        int i3 = (527 + i2) * 31;
        int[] iArr = this.f34259b;
        int iHashCode = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i3 + i4) * 31;
        Object[] objArr = this.f34260c;
        int i7 = this.f34258a;
        for (int i8 = 0; i8 < i7; i8++) {
            iHashCode = (iHashCode * 31) + objArr[i8].hashCode();
        }
        return i6 + iHashCode;
    }
}

package androidx.datastore.preferences.protobuf;

import defpackage.bm;
import defpackage.x1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class UnknownFieldSetLite {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final UnknownFieldSetLite f13012f = new UnknownFieldSetLite(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f13014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f13015c;
    public int d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13016e;

    public UnknownFieldSetLite(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f13013a = i2;
        this.f13014b = iArr;
        this.f13015c = objArr;
        this.f13016e = z;
    }

    public static void d(int i2, Object obj, Writer writer) {
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
            writer.K(i3, (ByteString) obj);
            return;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                writer.b(i3, ((Integer) obj).intValue());
                return;
            } else {
                x1.m(InvalidProtocolBufferException.b());
                return;
            }
        }
        if (writer.s() == Writer.FieldOrder.ASCENDING) {
            writer.z(i3);
            ((UnknownFieldSetLite) obj).e(writer);
            writer.E(i3);
        } else {
            writer.E(i3);
            ((UnknownFieldSetLite) obj).e(writer);
            writer.z(i3);
        }
    }

    public final void a(int i2) {
        int[] iArr = this.f13014b;
        if (i2 > iArr.length) {
            int i3 = this.f13013a;
            int i4 = (i3 / 2) + i3;
            if (i4 >= i2) {
                i2 = i4;
            }
            if (i2 < 8) {
                i2 = 8;
            }
            this.f13014b = Arrays.copyOf(iArr, i2);
            this.f13015c = Arrays.copyOf(this.f13015c, i2);
        }
    }

    public final int b() {
        int iE;
        int iG;
        int iE2;
        int i2 = this.d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f13013a; i4++) {
            int i5 = this.f13014b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 != 0) {
                if (i7 == 1) {
                    ((Long) this.f13015c[i4]).getClass();
                    iE2 = CodedOutputStream.e(i6) + 8;
                } else if (i7 == 2) {
                    iE2 = CodedOutputStream.b(i6, (ByteString) this.f13015c[i4]);
                } else if (i7 == 3) {
                    iE = CodedOutputStream.e(i6) * 2;
                    iG = ((UnknownFieldSetLite) this.f13015c[i4]).b();
                } else {
                    if (i7 != 5) {
                        bm.i(InvalidProtocolBufferException.b());
                        return 0;
                    }
                    ((Integer) this.f13015c[i4]).getClass();
                    iE2 = CodedOutputStream.e(i6) + 4;
                }
                i3 = iE2 + i3;
            } else {
                long jLongValue = ((Long) this.f13015c[i4]).longValue();
                iE = CodedOutputStream.e(i6);
                iG = CodedOutputStream.g(jLongValue);
            }
            i3 = iG + iE + i3;
        }
        this.d = i3;
        return i3;
    }

    public final void c(int i2, Object obj) {
        if (!this.f13016e) {
            x1.i();
            return;
        }
        a(this.f13013a + 1);
        int[] iArr = this.f13014b;
        int i3 = this.f13013a;
        iArr[i3] = i2;
        this.f13015c[i3] = obj;
        this.f13013a = i3 + 1;
    }

    public final void e(Writer writer) {
        if (this.f13013a == 0) {
            return;
        }
        if (writer.s() == Writer.FieldOrder.ASCENDING) {
            for (int i2 = 0; i2 < this.f13013a; i2++) {
                d(this.f13014b[i2], this.f13015c[i2], writer);
            }
            return;
        }
        for (int i3 = this.f13013a - 1; i3 >= 0; i3--) {
            d(this.f13014b[i3], this.f13015c[i3], writer);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnknownFieldSetLite)) {
            return false;
        }
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        int i2 = this.f13013a;
        if (i2 == unknownFieldSetLite.f13013a) {
            int[] iArr = this.f13014b;
            int[] iArr2 = unknownFieldSetLite.f13014b;
            for (int i3 = 0; i3 < i2; i3++) {
                if (iArr[i3] == iArr2[i3]) {
                }
            }
            Object[] objArr = this.f13015c;
            Object[] objArr2 = unknownFieldSetLite.f13015c;
            int i4 = this.f13013a;
            for (int i5 = 0; i5 < i4; i5++) {
                if (objArr[i5].equals(objArr2[i5])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f13013a;
        int i3 = (527 + i2) * 31;
        int[] iArr = this.f13014b;
        int iHashCode = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i3 + i4) * 31;
        Object[] objArr = this.f13015c;
        int i7 = this.f13013a;
        for (int i8 = 0; i8 < i7; i8++) {
            iHashCode = (iHashCode * 31) + objArr[i8].hashCode();
        }
        return i6 + iHashCode;
    }
}

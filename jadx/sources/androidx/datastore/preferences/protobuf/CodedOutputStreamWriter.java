package androidx.datastore.preferences.protobuf;

import defpackage.r81;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
final class CodedOutputStreamWriter implements Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CodedOutputStream f12927a;

    public CodedOutputStreamWriter(CodedOutputStream codedOutputStream) {
        Internal.a(codedOutputStream, "output");
        this.f12927a = codedOutputStream;
        codedOutputStream.f12922a = this;
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void A(List list, int i2, boolean z) {
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.p(i2, ((Long) list.get(i3)).longValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Long) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f12920b;
            i4 += 8;
        }
        codedOutputStream.B(i4);
        while (i3 < list.size()) {
            codedOutputStream.q(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void B(List list, int i2, boolean z) {
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.A(i2, ((Integer) list.get(i3)).intValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int iF = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iF += CodedOutputStream.f(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream.B(iF);
        while (i3 < list.size()) {
            codedOutputStream.B(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void C(List list, int i2, boolean z) {
        if (list instanceof BooleanArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.j(i2, ((Boolean) list.get(i3)).booleanValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Boolean) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f12920b;
            i4++;
        }
        codedOutputStream.B(i4);
        while (i3 < list.size()) {
            codedOutputStream.i(((Boolean) list.get(i3)).booleanValue() ? (byte) 1 : (byte) 0);
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void D(List list, int i2, boolean z) {
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.n(i2, ((Integer) list.get(i3)).intValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Integer) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f12920b;
            i4 += 4;
        }
        codedOutputStream.B(i4);
        while (i3 < list.size()) {
            codedOutputStream.o(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void E(int i2) {
        this.f12927a.z(i2, 4);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void F(int i2, int i3) {
        this.f12927a.r(i2, i3);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void G(List list, int i2, boolean z) {
        if (list instanceof FloatArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                float fFloatValue = ((Float) list.get(i3)).floatValue();
                codedOutputStream.getClass();
                codedOutputStream.n(i2, Float.floatToRawIntBits(fFloatValue));
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Float) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f12920b;
            i4 += 4;
        }
        codedOutputStream.B(i4);
        while (i3 < list.size()) {
            codedOutputStream.o(Float.floatToRawIntBits(((Float) list.get(i3)).floatValue()));
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void H(int i2, int i3) {
        CodedOutputStream codedOutputStream = this.f12927a;
        codedOutputStream.A(i2, (i3 >> 31) ^ (i3 << 1));
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void I(int i2, List list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f12927a.l(i2, (ByteString) list.get(i3));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void J(int i2, List list, Schema schema) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            N(i2, list.get(i3), schema);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void K(int i2, ByteString byteString) {
        this.f12927a.l(i2, byteString);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void L(int i2, Object obj, Schema schema) {
        this.f12927a.t(i2, (MessageLite) obj, schema);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void M(int i2, MapEntryLite.Metadata metadata, Map map) {
        CodedOutputStream codedOutputStream = this.f12927a;
        codedOutputStream.getClass();
        for (Map.Entry entry : map.entrySet()) {
            codedOutputStream.z(i2, 2);
            codedOutputStream.B(MapEntryLite.a(metadata, entry.getKey(), entry.getValue()));
            MapEntryLite.b(codedOutputStream, metadata, entry.getKey(), entry.getValue());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void N(int i2, Object obj, Schema schema) {
        CodedOutputStream codedOutputStream = this.f12927a;
        codedOutputStream.z(i2, 3);
        schema.h((MessageLite) obj, codedOutputStream.f12922a);
        codedOutputStream.z(i2, 4);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void O(int i2, List list, Schema schema) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            L(i2, list.get(i3), schema);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void a(int i2, Object obj) {
        boolean z = obj instanceof ByteString;
        CodedOutputStream codedOutputStream = this.f12927a;
        if (z) {
            codedOutputStream.w(i2, (ByteString) obj);
        } else {
            codedOutputStream.v(i2, (MessageLite) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void b(int i2, int i3) {
        this.f12927a.n(i2, i3);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void c(List list, int i2, boolean z) {
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.C(i2, ((Long) list.get(i3)).longValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int iG = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iG += CodedOutputStream.g(((Long) list.get(i4)).longValue());
        }
        codedOutputStream.B(iG);
        while (i3 < list.size()) {
            codedOutputStream.D(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void d(int i2, List list) {
        boolean z = list instanceof LazyStringList;
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.x(i2, (String) list.get(i3));
                i3++;
            }
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        while (i3 < list.size()) {
            Object objM0 = lazyStringList.M0();
            if (objM0 instanceof String) {
                codedOutputStream.x(i2, (String) objM0);
            } else {
                codedOutputStream.l(i2, (ByteString) objM0);
            }
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void e(int i2, String str) {
        this.f12927a.x(i2, str);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void f(int i2, long j2) {
        this.f12927a.C(i2, j2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void g(List list, int i2, boolean z) {
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                long jLongValue = ((Long) list.get(i3)).longValue();
                codedOutputStream.C(i2, (jLongValue >> 63) ^ (jLongValue << 1));
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int iG = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long jLongValue2 = ((Long) list.get(i4)).longValue();
            iG += CodedOutputStream.g((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        codedOutputStream.B(iG);
        while (i3 < list.size()) {
            long jLongValue3 = ((Long) list.get(i3)).longValue();
            codedOutputStream.D((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void h(List list, int i2, boolean z) {
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.r(i2, ((Integer) list.get(i3)).intValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int iG = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iG += CodedOutputStream.g(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream.B(iG);
        while (i3 < list.size()) {
            codedOutputStream.s(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void i(List list, int i2, boolean z) {
        if (list instanceof DoubleArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                double dDoubleValue = ((Double) list.get(i3)).doubleValue();
                codedOutputStream.getClass();
                codedOutputStream.p(i2, Double.doubleToRawLongBits(dDoubleValue));
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Double) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f12920b;
            i4 += 8;
        }
        codedOutputStream.B(i4);
        while (i3 < list.size()) {
            codedOutputStream.q(Double.doubleToRawLongBits(((Double) list.get(i3)).doubleValue()));
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void j(List list, int i2, boolean z) {
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.C(i2, ((Long) list.get(i3)).longValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int iG = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iG += CodedOutputStream.g(((Long) list.get(i4)).longValue());
        }
        codedOutputStream.B(iG);
        while (i3 < list.size()) {
            codedOutputStream.D(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void k(List list, int i2, boolean z) {
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.n(i2, ((Integer) list.get(i3)).intValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Integer) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f12920b;
            i4 += 4;
        }
        codedOutputStream.B(i4);
        while (i3 < list.size()) {
            codedOutputStream.o(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void l(int i2, int i3) {
        this.f12927a.r(i2, i3);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void m(double d, int i2) {
        CodedOutputStream codedOutputStream = this.f12927a;
        codedOutputStream.getClass();
        codedOutputStream.p(i2, Double.doubleToRawLongBits(d));
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void n(List list, int i2, boolean z) {
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.p(i2, ((Long) list.get(i3)).longValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Long) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f12920b;
            i4 += 8;
        }
        codedOutputStream.B(i4);
        while (i3 < list.size()) {
            codedOutputStream.q(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void o(int i2, long j2) {
        this.f12927a.p(i2, j2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void p(int i2, long j2) {
        CodedOutputStream codedOutputStream = this.f12927a;
        codedOutputStream.C(i2, (j2 >> 63) ^ (j2 << 1));
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void q(int i2, int i3) {
        this.f12927a.A(i2, i3);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void r(int i2, long j2) {
        this.f12927a.p(i2, j2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final Writer.FieldOrder s() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void t(List list, int i2, boolean z) {
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.r(i2, ((Integer) list.get(i3)).intValue());
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int iG = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iG += CodedOutputStream.g(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream.B(iG);
        while (i3 < list.size()) {
            codedOutputStream.s(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void u(List list, int i2, boolean z) {
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        CodedOutputStream codedOutputStream = this.f12927a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                codedOutputStream.A(i2, (iIntValue >> 31) ^ (iIntValue << 1));
                i3++;
            }
            return;
        }
        codedOutputStream.z(i2, 2);
        int iF = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int iIntValue2 = ((Integer) list.get(i4)).intValue();
            iF += CodedOutputStream.f((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        codedOutputStream.B(iF);
        while (i3 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i3)).intValue();
            codedOutputStream.B((iIntValue3 >> 31) ^ (iIntValue3 << 1));
            i3++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void v(float f2, int i2) {
        CodedOutputStream codedOutputStream = this.f12927a;
        codedOutputStream.getClass();
        codedOutputStream.n(i2, Float.floatToRawIntBits(f2));
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void w(int i2, long j2) {
        this.f12927a.C(i2, j2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void x(int i2, boolean z) {
        this.f12927a.j(i2, z);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void y(int i2, int i3) {
        this.f12927a.n(i2, i3);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void z(int i2) {
        this.f12927a.z(i2, 3);
    }
}

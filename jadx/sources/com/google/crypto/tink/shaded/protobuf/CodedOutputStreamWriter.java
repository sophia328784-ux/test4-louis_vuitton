package com.google.crypto.tink.shaded.protobuf;

import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
final class CodedOutputStreamWriter implements Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CodedOutputStream f34170a;

    public CodedOutputStreamWriter(CodedOutputStream codedOutputStream) {
        Internal.a(codedOutputStream, "output");
        this.f34170a = codedOutputStream;
        codedOutputStream.f34167a = this;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void A(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.p(i2, ((Long) list.get(i3)).longValue());
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Long) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f34165b;
            i4 += 8;
        }
        codedOutputStream.t(i4);
        while (i3 < list.size()) {
            codedOutputStream.q(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void B(List list, int i2, boolean z) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                arrayEncoder.s(i2, 0);
                arrayEncoder.t(iIntValue);
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int iK = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iK += CodedOutputStream.k(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream.t(iK);
        for (int i5 = 0; i5 < list.size(); i5++) {
            codedOutputStream.t(((Integer) list.get(i5)).intValue());
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void C(List list, int i2, boolean z) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                boolean zBooleanValue = ((Boolean) list.get(i3)).booleanValue();
                CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                arrayEncoder.s(i2, 0);
                arrayEncoder.m(zBooleanValue ? (byte) 1 : (byte) 0);
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Boolean) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f34165b;
            i4++;
        }
        codedOutputStream.t(i4);
        for (int i6 = 0; i6 < list.size(); i6++) {
            codedOutputStream.m(((Boolean) list.get(i6)).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void D(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.n(i2, ((Integer) list.get(i3)).intValue());
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Integer) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f34165b;
            i4 += 4;
        }
        codedOutputStream.t(i4);
        while (i3 < list.size()) {
            codedOutputStream.o(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void E(int i2) {
        this.f34170a.s(i2, 4);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void F(int i2, int i3) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) this.f34170a;
        arrayEncoder.s(i2, 0);
        arrayEncoder.r(i3);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void G(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                float fFloatValue = ((Float) list.get(i3)).floatValue();
                codedOutputStream.getClass();
                codedOutputStream.n(i2, Float.floatToRawIntBits(fFloatValue));
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Float) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f34165b;
            i4 += 4;
        }
        codedOutputStream.t(i4);
        while (i3 < list.size()) {
            codedOutputStream.o(Float.floatToRawIntBits(((Float) list.get(i3)).floatValue()));
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void H(int i2, int i3) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream codedOutputStream = this.f34170a;
        codedOutputStream.getClass();
        CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
        arrayEncoder.s(i2, 0);
        arrayEncoder.t((i3 >> 31) ^ (i3 << 1));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void I(int i2, List list) throws CodedOutputStream.OutOfSpaceException {
        for (int i3 = 0; i3 < list.size(); i3++) {
            ByteString byteString = (ByteString) list.get(i3);
            CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) this.f34170a;
            arrayEncoder.s(i2, 2);
            arrayEncoder.x(byteString);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void J(int i2, Object obj, Schema schema) {
        CodedOutputStream codedOutputStream = this.f34170a;
        codedOutputStream.s(i2, 3);
        schema.i((MessageLite) obj, codedOutputStream.f34167a);
        codedOutputStream.s(i2, 4);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void K(int i2, List list, Schema schema) throws CodedOutputStream.OutOfSpaceException {
        for (int i3 = 0; i3 < list.size(); i3++) {
            M(i2, list.get(i3), schema);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void L(int i2, ByteString byteString) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) this.f34170a;
        arrayEncoder.s(i2, 2);
        arrayEncoder.x(byteString);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void M(int i2, Object obj, Schema schema) throws CodedOutputStream.OutOfSpaceException {
        MessageLite messageLite = (MessageLite) obj;
        CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) this.f34170a;
        arrayEncoder.s(i2, 2);
        arrayEncoder.t(((AbstractMessageLite) messageLite).j(schema));
        schema.i(messageLite, arrayEncoder.f34167a);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void N(int i2, List list, Schema schema) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            J(i2, list.get(i3), schema);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void a(int i2, Object obj) throws CodedOutputStream.OutOfSpaceException {
        boolean z = obj instanceof ByteString;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (z) {
            CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
            arrayEncoder.s(1, 3);
            arrayEncoder.s(2, 0);
            arrayEncoder.t(i2);
            arrayEncoder.s(3, 2);
            arrayEncoder.x((ByteString) obj);
            arrayEncoder.s(1, 4);
            return;
        }
        MessageLite messageLite = (MessageLite) obj;
        CodedOutputStream.ArrayEncoder arrayEncoder2 = (CodedOutputStream.ArrayEncoder) codedOutputStream;
        arrayEncoder2.s(1, 3);
        arrayEncoder2.s(2, 0);
        arrayEncoder2.t(i2);
        arrayEncoder2.s(3, 2);
        arrayEncoder2.t(messageLite.c());
        messageLite.h(arrayEncoder2);
        arrayEncoder2.s(1, 4);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void b(int i2, int i3) {
        this.f34170a.n(i2, i3);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void c(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.u(i2, ((Long) list.get(i3)).longValue());
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int iL = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iL += CodedOutputStream.l(((Long) list.get(i4)).longValue());
        }
        codedOutputStream.t(iL);
        while (i3 < list.size()) {
            codedOutputStream.v(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void d(int i2, List list) throws CodedOutputStream.OutOfSpaceException {
        boolean z = list instanceof LazyStringList;
        CodedOutputStream codedOutputStream = this.f34170a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                String str = (String) list.get(i3);
                CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                arrayEncoder.s(i2, 2);
                arrayEncoder.y(str);
                i3++;
            }
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        while (i3 < list.size()) {
            Object objL1 = lazyStringList.L1(i3);
            if (objL1 instanceof String) {
                CodedOutputStream.ArrayEncoder arrayEncoder2 = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                arrayEncoder2.s(i2, 2);
                arrayEncoder2.y((String) objL1);
            } else {
                CodedOutputStream.ArrayEncoder arrayEncoder3 = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                arrayEncoder3.s(i2, 2);
                arrayEncoder3.x((ByteString) objL1);
            }
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void e(int i2, String str) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) this.f34170a;
        arrayEncoder.s(i2, 2);
        arrayEncoder.y(str);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void f(int i2, long j2) {
        this.f34170a.u(i2, j2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void g(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                long jLongValue = ((Long) list.get(i3)).longValue();
                codedOutputStream.u(i2, (jLongValue >> 63) ^ (jLongValue << 1));
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int iL = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long jLongValue2 = ((Long) list.get(i4)).longValue();
            iL += CodedOutputStream.l((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        codedOutputStream.t(iL);
        while (i3 < list.size()) {
            long jLongValue3 = ((Long) list.get(i3)).longValue();
            codedOutputStream.v((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void h(List list, int i2, boolean z) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                arrayEncoder.s(i2, 0);
                arrayEncoder.r(iIntValue);
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int iF = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iF += CodedOutputStream.f(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream.t(iF);
        for (int i5 = 0; i5 < list.size(); i5++) {
            codedOutputStream.r(((Integer) list.get(i5)).intValue());
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void i(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                double dDoubleValue = ((Double) list.get(i3)).doubleValue();
                codedOutputStream.getClass();
                codedOutputStream.p(i2, Double.doubleToRawLongBits(dDoubleValue));
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Double) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f34165b;
            i4 += 8;
        }
        codedOutputStream.t(i4);
        while (i3 < list.size()) {
            codedOutputStream.q(Double.doubleToRawLongBits(((Double) list.get(i3)).doubleValue()));
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void j(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.u(i2, ((Long) list.get(i3)).longValue());
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int iL = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iL += CodedOutputStream.l(((Long) list.get(i4)).longValue());
        }
        codedOutputStream.t(iL);
        while (i3 < list.size()) {
            codedOutputStream.v(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void k(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.n(i2, ((Integer) list.get(i3)).intValue());
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Integer) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f34165b;
            i4 += 4;
        }
        codedOutputStream.t(i4);
        while (i3 < list.size()) {
            codedOutputStream.o(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void l(int i2, int i3) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) this.f34170a;
        arrayEncoder.s(i2, 0);
        arrayEncoder.r(i3);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void m(double d, int i2) {
        CodedOutputStream codedOutputStream = this.f34170a;
        codedOutputStream.getClass();
        codedOutputStream.p(i2, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void n(List list, int i2, boolean z) {
        int i3 = 0;
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            while (i3 < list.size()) {
                codedOutputStream.p(i2, ((Long) list.get(i3)).longValue());
                i3++;
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Long) list.get(i5)).getClass();
            Logger logger = CodedOutputStream.f34165b;
            i4 += 8;
        }
        codedOutputStream.t(i4);
        while (i3 < list.size()) {
            codedOutputStream.q(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void o(int i2, long j2) {
        this.f34170a.p(i2, j2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void p(int i2, long j2) {
        CodedOutputStream codedOutputStream = this.f34170a;
        codedOutputStream.u(i2, (j2 >> 63) ^ (j2 << 1));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void q(int i2, int i3) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) this.f34170a;
        arrayEncoder.s(i2, 0);
        arrayEncoder.t(i3);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void r(int i2, long j2) {
        this.f34170a.p(i2, j2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final Writer.FieldOrder s() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void t(List list, int i2, boolean z) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                arrayEncoder.s(i2, 0);
                arrayEncoder.r(iIntValue);
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int iF = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iF += CodedOutputStream.f(((Integer) list.get(i4)).intValue());
        }
        codedOutputStream.t(iF);
        for (int i5 = 0; i5 < list.size(); i5++) {
            codedOutputStream.r(((Integer) list.get(i5)).intValue());
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void u(List list, int i2, boolean z) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream codedOutputStream = this.f34170a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                codedOutputStream.getClass();
                CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
                arrayEncoder.s(i2, 0);
                arrayEncoder.t((iIntValue >> 31) ^ (iIntValue << 1));
            }
            return;
        }
        codedOutputStream.s(i2, 2);
        int iK = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int iIntValue2 = ((Integer) list.get(i4)).intValue();
            iK += CodedOutputStream.k((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        codedOutputStream.t(iK);
        for (int i5 = 0; i5 < list.size(); i5++) {
            int iIntValue3 = ((Integer) list.get(i5)).intValue();
            codedOutputStream.t((iIntValue3 >> 31) ^ (iIntValue3 << 1));
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void v(float f2, int i2) {
        CodedOutputStream codedOutputStream = this.f34170a;
        codedOutputStream.getClass();
        codedOutputStream.n(i2, Float.floatToRawIntBits(f2));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void w(int i2, long j2) {
        this.f34170a.u(i2, j2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void x(int i2, boolean z) throws CodedOutputStream.OutOfSpaceException {
        CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) this.f34170a;
        arrayEncoder.s(i2, 0);
        arrayEncoder.m(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void y(int i2, int i3) {
        this.f34170a.n(i2, i3);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void z(int i2) {
        this.f34170a.s(i2, 3);
    }
}

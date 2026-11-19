package com.google.crypto.tink.shaded.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
interface Writer {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FieldOrder {
        private static final /* synthetic */ FieldOrder[] $VALUES;
        public static final FieldOrder ASCENDING;
        public static final FieldOrder DESCENDING;

        static {
            FieldOrder fieldOrder = new FieldOrder("ASCENDING", 0);
            ASCENDING = fieldOrder;
            FieldOrder fieldOrder2 = new FieldOrder("DESCENDING", 1);
            DESCENDING = fieldOrder2;
            $VALUES = new FieldOrder[]{fieldOrder, fieldOrder2};
        }

        public static FieldOrder valueOf(String str) {
            return (FieldOrder) Enum.valueOf(FieldOrder.class, str);
        }

        public static FieldOrder[] values() {
            return (FieldOrder[]) $VALUES.clone();
        }
    }

    void A(List list, int i2, boolean z);

    void B(List list, int i2, boolean z);

    void C(List list, int i2, boolean z);

    void D(List list, int i2, boolean z);

    void E(int i2);

    void F(int i2, int i3);

    void G(List list, int i2, boolean z);

    void H(int i2, int i3);

    void I(int i2, List list);

    void J(int i2, Object obj, Schema schema);

    void K(int i2, List list, Schema schema);

    void L(int i2, ByteString byteString);

    void M(int i2, Object obj, Schema schema);

    void N(int i2, List list, Schema schema);

    void a(int i2, Object obj);

    void b(int i2, int i3);

    void c(List list, int i2, boolean z);

    void d(int i2, List list);

    void e(int i2, String str);

    void f(int i2, long j2);

    void g(List list, int i2, boolean z);

    void h(List list, int i2, boolean z);

    void i(List list, int i2, boolean z);

    void j(List list, int i2, boolean z);

    void k(List list, int i2, boolean z);

    void l(int i2, int i3);

    void m(double d, int i2);

    void n(List list, int i2, boolean z);

    void o(int i2, long j2);

    void p(int i2, long j2);

    void q(int i2, int i3);

    void r(int i2, long j2);

    FieldOrder s();

    void t(List list, int i2, boolean z);

    void u(List list, int i2, boolean z);

    void v(float f2, int i2);

    void w(int i2, long j2);

    void x(int i2, boolean z);

    void y(int i2, int i3);

    void z(int i2);
}

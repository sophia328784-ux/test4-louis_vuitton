package com.google.crypto.tink.shaded.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
final class CodedInputStreamReader implements Reader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CodedInputStream f34162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f34163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f34164c;
    public int d = 0;

    public CodedInputStreamReader(CodedInputStream codedInputStream) {
        Internal.a(codedInputStream, "input");
        this.f34162a = codedInputStream;
        codedInputStream.f34150b = this;
    }

    public static void R(int i2) throws InvalidProtocolBufferException {
        if ((i2 & 3) != 0) {
            throw InvalidProtocolBufferException.f();
        }
    }

    public static void S(int i2) throws InvalidProtocolBufferException {
        if ((i2 & 7) != 0) {
            throw InvalidProtocolBufferException.f();
        }
    }

    public final void A(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof IntArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 0) {
                do {
                    list.add(Integer.valueOf(codedInputStream.p()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iD = codedInputStream.d() + codedInputStream.y();
            do {
                list.add(Integer.valueOf(codedInputStream.p()));
            } while (codedInputStream.d() < iD);
            P(iD);
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 0) {
            do {
                intArrayList.h(codedInputStream.p());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iD2 = codedInputStream.d() + codedInputStream.y();
        do {
            intArrayList.h(codedInputStream.p());
        } while (codedInputStream.d() < iD2);
        P(iD2);
    }

    public final void B(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof LongArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 0) {
                do {
                    list.add(Long.valueOf(codedInputStream.q()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iD = codedInputStream.d() + codedInputStream.y();
            do {
                list.add(Long.valueOf(codedInputStream.q()));
            } while (codedInputStream.d() < iD);
            P(iD);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 0) {
            do {
                longArrayList.h(codedInputStream.q());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iD2 = codedInputStream.d() + codedInputStream.y();
        do {
            longArrayList.h(codedInputStream.q());
        } while (codedInputStream.d() < iD2);
        P(iD2);
    }

    public final void C(List list, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        int iX;
        int i2 = this.f34163b;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.c();
        }
        do {
            Object objB = schema.b();
            m(objB, schema, extensionRegistryLite);
            schema.c(objB);
            list.add(objB);
            CodedInputStream codedInputStream = this.f34162a;
            if (codedInputStream.e() || this.d != 0) {
                return;
            } else {
                iX = codedInputStream.x();
            }
        } while (iX == i2);
        this.d = iX;
    }

    public final int D() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(5);
        return this.f34162a.r();
    }

    public final void E(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof IntArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 2) {
                int iY = codedInputStream.y();
                R(iY);
                int iD = codedInputStream.d() + iY;
                do {
                    list.add(Integer.valueOf(codedInputStream.r()));
                } while (codedInputStream.d() < iD);
                return;
            }
            if (i3 != 5) {
                throw InvalidProtocolBufferException.c();
            }
            do {
                list.add(Integer.valueOf(codedInputStream.r()));
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX = codedInputStream.x();
                }
            } while (iX == this.f34163b);
            this.d = iX;
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 2) {
            int iY2 = codedInputStream.y();
            R(iY2);
            int iD2 = codedInputStream.d() + iY2;
            do {
                intArrayList.h(codedInputStream.r());
            } while (codedInputStream.d() < iD2);
            return;
        }
        if (i4 != 5) {
            throw InvalidProtocolBufferException.c();
        }
        do {
            intArrayList.h(codedInputStream.r());
            if (codedInputStream.e()) {
                return;
            } else {
                iX2 = codedInputStream.x();
            }
        } while (iX2 == this.f34163b);
        this.d = iX2;
    }

    public final long F() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(1);
        return this.f34162a.s();
    }

    public final void G(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof LongArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 1) {
                do {
                    list.add(Long.valueOf(codedInputStream.s()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iY = codedInputStream.y();
            S(iY);
            int iD = codedInputStream.d() + iY;
            do {
                list.add(Long.valueOf(codedInputStream.s()));
            } while (codedInputStream.d() < iD);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 1) {
            do {
                longArrayList.h(codedInputStream.s());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iY2 = codedInputStream.y();
        S(iY2);
        int iD2 = codedInputStream.d() + iY2;
        do {
            longArrayList.h(codedInputStream.s());
        } while (codedInputStream.d() < iD2);
    }

    public final int H() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(0);
        return this.f34162a.t();
    }

    public final void I(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof IntArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 0) {
                do {
                    list.add(Integer.valueOf(codedInputStream.t()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iD = codedInputStream.d() + codedInputStream.y();
            do {
                list.add(Integer.valueOf(codedInputStream.t()));
            } while (codedInputStream.d() < iD);
            P(iD);
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 0) {
            do {
                intArrayList.h(codedInputStream.t());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iD2 = codedInputStream.d() + codedInputStream.y();
        do {
            intArrayList.h(codedInputStream.t());
        } while (codedInputStream.d() < iD2);
        P(iD2);
    }

    public final long J() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(0);
        return this.f34162a.u();
    }

    public final void K(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof LongArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 0) {
                do {
                    list.add(Long.valueOf(codedInputStream.u()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iD = codedInputStream.d() + codedInputStream.y();
            do {
                list.add(Long.valueOf(codedInputStream.u()));
            } while (codedInputStream.d() < iD);
            P(iD);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 0) {
            do {
                longArrayList.h(codedInputStream.u());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iD2 = codedInputStream.d() + codedInputStream.y();
        do {
            longArrayList.h(codedInputStream.u());
        } while (codedInputStream.d() < iD2);
        P(iD2);
    }

    public final void L(List list, boolean z) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iX;
        int iX2;
        if ((this.f34163b & 7) != 2) {
            throw InvalidProtocolBufferException.c();
        }
        boolean z2 = list instanceof LazyStringList;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z2 || z) {
            do {
                list.add(z ? i() : d());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX = codedInputStream.x();
                }
            } while (iX == this.f34163b);
            this.d = iX;
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        do {
            lazyStringList.A1(b());
            if (codedInputStream.e()) {
                return;
            } else {
                iX2 = codedInputStream.x();
            }
        } while (iX2 == this.f34163b);
        this.d = iX2;
    }

    public final void M(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof IntArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 0) {
                do {
                    list.add(Integer.valueOf(codedInputStream.y()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iD = codedInputStream.d() + codedInputStream.y();
            do {
                list.add(Integer.valueOf(codedInputStream.y()));
            } while (codedInputStream.d() < iD);
            P(iD);
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 0) {
            do {
                intArrayList.h(codedInputStream.y());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iD2 = codedInputStream.d() + codedInputStream.y();
        do {
            intArrayList.h(codedInputStream.y());
        } while (codedInputStream.d() < iD2);
        P(iD2);
    }

    public final long N() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(0);
        return this.f34162a.z();
    }

    public final void O(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof LongArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 0) {
                do {
                    list.add(Long.valueOf(codedInputStream.z()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iD = codedInputStream.d() + codedInputStream.y();
            do {
                list.add(Long.valueOf(codedInputStream.z()));
            } while (codedInputStream.d() < iD);
            P(iD);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 0) {
            do {
                longArrayList.h(codedInputStream.z());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iD2 = codedInputStream.d() + codedInputStream.y();
        do {
            longArrayList.h(codedInputStream.z());
        } while (codedInputStream.d() < iD2);
        P(iD2);
    }

    public final void P(int i2) throws InvalidProtocolBufferException {
        if (this.f34162a.d() != i2) {
            throw InvalidProtocolBufferException.g();
        }
    }

    public final void Q(int i2) throws InvalidProtocolBufferException.InvalidWireTypeException {
        if ((this.f34163b & 7) != i2) {
            throw InvalidProtocolBufferException.c();
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final long a() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(1);
        return this.f34162a.n();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final ByteString b() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(2);
        return this.f34162a.j();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final int c() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(5);
        return this.f34162a.m();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final String d() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(2);
        return this.f34162a.v();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final int e() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(0);
        return this.f34162a.y();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final int f() {
        int i2 = this.d;
        if (i2 != 0) {
            this.f34163b = i2;
            this.d = 0;
        } else {
            this.f34163b = this.f34162a.x();
        }
        int i3 = this.f34163b;
        if (i3 == 0 || i3 == this.f34164c) {
            return Integer.MAX_VALUE;
        }
        return i3 >>> 3;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final boolean g() {
        int i2;
        CodedInputStream codedInputStream = this.f34162a;
        if (codedInputStream.e() || (i2 = this.f34163b) == this.f34164c) {
            return false;
        }
        return codedInputStream.A(i2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final int getTag() {
        return this.f34163b;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final long h() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(0);
        return this.f34162a.q();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Reader
    public final String i() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(2);
        return this.f34162a.w();
    }

    public final void j(MessageLite messageLite, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(3);
        k(messageLite, schema, extensionRegistryLite);
    }

    public final void k(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int i2 = this.f34164c;
        this.f34164c = ((this.f34163b >>> 3) << 3) | 4;
        try {
            schema.f(obj, this, extensionRegistryLite);
            if (this.f34163b != this.f34164c) {
                throw InvalidProtocolBufferException.f();
            }
            this.f34164c = i2;
        } catch (Throwable th) {
            this.f34164c = i2;
            throw th;
        }
    }

    public final void l(MessageLite messageLite, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        Q(2);
        m(messageLite, schema, extensionRegistryLite);
    }

    public final void m(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        CodedInputStream codedInputStream = this.f34162a;
        int iY = codedInputStream.y();
        if (codedInputStream.f34149a >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iH = codedInputStream.h(iY);
        codedInputStream.f34149a++;
        schema.f(obj, this, extensionRegistryLite);
        codedInputStream.a(0);
        codedInputStream.f34149a--;
        codedInputStream.g(iH);
    }

    public final boolean n() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(0);
        return this.f34162a.i();
    }

    public final void o(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof BooleanArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 0) {
                do {
                    list.add(Boolean.valueOf(codedInputStream.i()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iD = codedInputStream.d() + codedInputStream.y();
            do {
                list.add(Boolean.valueOf(codedInputStream.i()));
            } while (codedInputStream.d() < iD);
            P(iD);
            return;
        }
        BooleanArrayList booleanArrayList = (BooleanArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 0) {
            do {
                booleanArrayList.h(codedInputStream.i());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iD2 = codedInputStream.d() + codedInputStream.y();
        do {
            booleanArrayList.h(codedInputStream.i());
        } while (codedInputStream.d() < iD2);
        P(iD2);
    }

    public final void p(List list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iX;
        if ((this.f34163b & 7) != 2) {
            throw InvalidProtocolBufferException.c();
        }
        do {
            list.add(b());
            CodedInputStream codedInputStream = this.f34162a;
            if (codedInputStream.e()) {
                return;
            } else {
                iX = codedInputStream.x();
            }
        } while (iX == this.f34163b);
        this.d = iX;
    }

    public final double q() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(1);
        return this.f34162a.k();
    }

    public final void r(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof DoubleArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 1) {
                do {
                    list.add(Double.valueOf(codedInputStream.k()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iY = codedInputStream.y();
            S(iY);
            int iD = codedInputStream.d() + iY;
            do {
                list.add(Double.valueOf(codedInputStream.k()));
            } while (codedInputStream.d() < iD);
            return;
        }
        DoubleArrayList doubleArrayList = (DoubleArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 1) {
            do {
                doubleArrayList.h(codedInputStream.k());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iY2 = codedInputStream.y();
        S(iY2);
        int iD2 = codedInputStream.d() + iY2;
        do {
            doubleArrayList.h(codedInputStream.k());
        } while (codedInputStream.d() < iD2);
    }

    public final int s() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(0);
        return this.f34162a.l();
    }

    public final void t(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof IntArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 0) {
                do {
                    list.add(Integer.valueOf(codedInputStream.l()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iD = codedInputStream.d() + codedInputStream.y();
            do {
                list.add(Integer.valueOf(codedInputStream.l()));
            } while (codedInputStream.d() < iD);
            P(iD);
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 0) {
            do {
                intArrayList.h(codedInputStream.l());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iD2 = codedInputStream.d() + codedInputStream.y();
        do {
            intArrayList.h(codedInputStream.l());
        } while (codedInputStream.d() < iD2);
        P(iD2);
    }

    public final void u(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof IntArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 2) {
                int iY = codedInputStream.y();
                R(iY);
                int iD = codedInputStream.d() + iY;
                do {
                    list.add(Integer.valueOf(codedInputStream.m()));
                } while (codedInputStream.d() < iD);
                return;
            }
            if (i3 != 5) {
                throw InvalidProtocolBufferException.c();
            }
            do {
                list.add(Integer.valueOf(codedInputStream.m()));
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX = codedInputStream.x();
                }
            } while (iX == this.f34163b);
            this.d = iX;
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 2) {
            int iY2 = codedInputStream.y();
            R(iY2);
            int iD2 = codedInputStream.d() + iY2;
            do {
                intArrayList.h(codedInputStream.m());
            } while (codedInputStream.d() < iD2);
            return;
        }
        if (i4 != 5) {
            throw InvalidProtocolBufferException.c();
        }
        do {
            intArrayList.h(codedInputStream.m());
            if (codedInputStream.e()) {
                return;
            } else {
                iX2 = codedInputStream.x();
            }
        } while (iX2 == this.f34163b);
        this.d = iX2;
    }

    public final void v(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof LongArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 1) {
                do {
                    list.add(Long.valueOf(codedInputStream.n()));
                    if (codedInputStream.e()) {
                        return;
                    } else {
                        iX = codedInputStream.x();
                    }
                } while (iX == this.f34163b);
                this.d = iX;
                return;
            }
            if (i3 != 2) {
                throw InvalidProtocolBufferException.c();
            }
            int iY = codedInputStream.y();
            S(iY);
            int iD = codedInputStream.d() + iY;
            do {
                list.add(Long.valueOf(codedInputStream.n()));
            } while (codedInputStream.d() < iD);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 1) {
            do {
                longArrayList.h(codedInputStream.n());
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX2 = codedInputStream.x();
                }
            } while (iX2 == this.f34163b);
            this.d = iX2;
            return;
        }
        if (i4 != 2) {
            throw InvalidProtocolBufferException.c();
        }
        int iY2 = codedInputStream.y();
        S(iY2);
        int iD2 = codedInputStream.d() + iY2;
        do {
            longArrayList.h(codedInputStream.n());
        } while (codedInputStream.d() < iD2);
    }

    public final float w() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(5);
        return this.f34162a.o();
    }

    public final void x(List list) throws InvalidProtocolBufferException {
        int iX;
        int iX2;
        boolean z = list instanceof FloatArrayList;
        int i2 = this.f34163b;
        CodedInputStream codedInputStream = this.f34162a;
        if (!z) {
            int i3 = i2 & 7;
            if (i3 == 2) {
                int iY = codedInputStream.y();
                R(iY);
                int iD = codedInputStream.d() + iY;
                do {
                    list.add(Float.valueOf(codedInputStream.o()));
                } while (codedInputStream.d() < iD);
                return;
            }
            if (i3 != 5) {
                throw InvalidProtocolBufferException.c();
            }
            do {
                list.add(Float.valueOf(codedInputStream.o()));
                if (codedInputStream.e()) {
                    return;
                } else {
                    iX = codedInputStream.x();
                }
            } while (iX == this.f34163b);
            this.d = iX;
            return;
        }
        FloatArrayList floatArrayList = (FloatArrayList) list;
        int i4 = i2 & 7;
        if (i4 == 2) {
            int iY2 = codedInputStream.y();
            R(iY2);
            int iD2 = codedInputStream.d() + iY2;
            do {
                floatArrayList.h(codedInputStream.o());
            } while (codedInputStream.d() < iD2);
            return;
        }
        if (i4 != 5) {
            throw InvalidProtocolBufferException.c();
        }
        do {
            floatArrayList.h(codedInputStream.o());
            if (codedInputStream.e()) {
                return;
            } else {
                iX2 = codedInputStream.x();
            }
        } while (iX2 == this.f34163b);
        this.d = iX2;
    }

    public final void y(List list, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iX;
        int i2 = this.f34163b;
        if ((i2 & 7) != 3) {
            throw InvalidProtocolBufferException.c();
        }
        do {
            Object objB = schema.b();
            k(objB, schema, extensionRegistryLite);
            schema.c(objB);
            list.add(objB);
            CodedInputStream codedInputStream = this.f34162a;
            if (codedInputStream.e() || this.d != 0) {
                return;
            } else {
                iX = codedInputStream.x();
            }
        } while (iX == i2);
        this.d = iX;
    }

    public final int z() throws InvalidProtocolBufferException.InvalidWireTypeException {
        Q(0);
        return this.f34162a.p();
    }
}

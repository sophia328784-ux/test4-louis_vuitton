package androidx.datastore.preferences.protobuf;

import defpackage.md;
import defpackage.r81;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
final class CodedInputStreamReader implements Reader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CodedInputStream f12916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12918c;
    public int d = 0;

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.CodedInputStreamReader$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12919a;

        static {
            int[] iArr = new int[WireFormat$FieldType.values().length];
            f12919a = iArr;
            try {
                iArr[WireFormat$FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12919a[WireFormat$FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12919a[WireFormat$FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12919a[WireFormat$FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12919a[WireFormat$FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12919a[WireFormat$FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12919a[WireFormat$FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12919a[WireFormat$FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f12919a[WireFormat$FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f12919a[WireFormat$FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f12919a[WireFormat$FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f12919a[WireFormat$FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f12919a[WireFormat$FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f12919a[WireFormat$FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f12919a[WireFormat$FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f12919a[WireFormat$FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f12919a[WireFormat$FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public CodedInputStreamReader(CodedInputStream codedInputStream) {
        Charset charset = Internal.f12947a;
        this.f12916a = codedInputStream;
        codedInputStream.f12904b = this;
    }

    public static void T(int i2) throws InvalidProtocolBufferException {
        if ((i2 & 3) != 0) {
            throw new InvalidProtocolBufferException("Failed to parse the message.");
        }
    }

    public static void U(int i2) throws InvalidProtocolBufferException {
        if ((i2 & 7) != 0) {
            throw new InvalidProtocolBufferException("Failed to parse the message.");
        }
    }

    public final void A(List list, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iV;
        int i2 = this.f12917b;
        if ((i2 & 7) != 3) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            Object objB = schema.b();
            l(objB, schema, extensionRegistryLite);
            schema.c(objB);
            list.add(objB);
            CodedInputStream codedInputStream = this.f12916a;
            if (codedInputStream.c() || this.d != 0) {
                return;
            } else {
                iV = codedInputStream.v();
            }
        } while (iV == i2);
        this.d = iV;
    }

    public final int B() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(0);
        return this.f12916a.n();
    }

    public final void C(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(codedInputStream.n()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iB = codedInputStream.b() + codedInputStream.w();
        do {
            list.add(Integer.valueOf(codedInputStream.n()));
        } while (codedInputStream.b() < iB);
        R(iB);
    }

    public final void D(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(codedInputStream.o()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iB = codedInputStream.b() + codedInputStream.w();
        do {
            list.add(Long.valueOf(codedInputStream.o()));
        } while (codedInputStream.b() < iB);
        R(iB);
    }

    public final void E(List list, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        int iV;
        int i2 = this.f12917b;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            Object objB = schema.b();
            n(objB, schema, extensionRegistryLite);
            schema.c(objB);
            list.add(objB);
            CodedInputStream codedInputStream = this.f12916a;
            if (codedInputStream.c() || this.d != 0) {
                return;
            } else {
                iV = codedInputStream.v();
            }
        } while (iV == i2);
        this.d = iV;
    }

    public final int F() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(5);
        return this.f12916a.p();
    }

    public final void G(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 2) {
            int iW = codedInputStream.w();
            T(iW);
            int iB = codedInputStream.b() + iW;
            do {
                list.add(Integer.valueOf(codedInputStream.p()));
            } while (codedInputStream.b() < iB);
            return;
        }
        if (i2 != 5) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            list.add(Integer.valueOf(codedInputStream.p()));
            if (codedInputStream.c()) {
                return;
            } else {
                iV = codedInputStream.v();
            }
        } while (iV == this.f12917b);
        this.d = iV;
    }

    public final long H() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(1);
        return this.f12916a.q();
    }

    public final void I(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 1) {
            do {
                list.add(Long.valueOf(codedInputStream.q()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iW = codedInputStream.w();
        U(iW);
        int iB = codedInputStream.b() + iW;
        do {
            list.add(Long.valueOf(codedInputStream.q()));
        } while (codedInputStream.b() < iB);
    }

    public final int J() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(0);
        return this.f12916a.r();
    }

    public final void K(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(codedInputStream.r()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iB = codedInputStream.b() + codedInputStream.w();
        do {
            list.add(Integer.valueOf(codedInputStream.r()));
        } while (codedInputStream.b() < iB);
        R(iB);
    }

    public final long L() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(0);
        return this.f12916a.s();
    }

    public final void M(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(codedInputStream.s()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iB = codedInputStream.b() + codedInputStream.w();
        do {
            list.add(Long.valueOf(codedInputStream.s()));
        } while (codedInputStream.b() < iB);
        R(iB);
    }

    public final void N(List list, boolean z) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iV;
        int iV2;
        if ((this.f12917b & 7) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        boolean z2 = list instanceof LazyStringList;
        CodedInputStream codedInputStream = this.f12916a;
        if (!z2 || z) {
            do {
                list.add(z ? i() : d());
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        do {
            b();
            lazyStringList.a1();
            if (codedInputStream.c()) {
                return;
            } else {
                iV2 = codedInputStream.v();
            }
        } while (iV2 == this.f12917b);
        this.d = iV2;
    }

    public final void O(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(codedInputStream.w()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iB = codedInputStream.b() + codedInputStream.w();
        do {
            list.add(Integer.valueOf(codedInputStream.w()));
        } while (codedInputStream.b() < iB);
        R(iB);
    }

    public final long P() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(0);
        return this.f12916a.x();
    }

    public final void Q(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(codedInputStream.x()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iB = codedInputStream.b() + codedInputStream.w();
        do {
            list.add(Long.valueOf(codedInputStream.x()));
        } while (codedInputStream.b() < iB);
        R(iB);
    }

    public final void R(int i2) throws InvalidProtocolBufferException {
        if (this.f12916a.b() != i2) {
            throw InvalidProtocolBufferException.e();
        }
    }

    public final void S(int i2) throws InvalidProtocolBufferException.InvalidWireTypeException {
        if ((this.f12917b & 7) != i2) {
            throw InvalidProtocolBufferException.b();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final long a() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(1);
        return this.f12916a.l();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final ByteString b() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(2);
        return this.f12916a.h();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final int c() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(5);
        return this.f12916a.k();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final String d() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(2);
        return this.f12916a.t();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final int e() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(0);
        return this.f12916a.w();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final int f() {
        int i2 = this.d;
        if (i2 != 0) {
            this.f12917b = i2;
            this.d = 0;
        } else {
            this.f12917b = this.f12916a.v();
        }
        int i3 = this.f12917b;
        if (i3 == 0 || i3 == this.f12918c) {
            return Integer.MAX_VALUE;
        }
        return i3 >>> 3;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final boolean g() {
        int i2;
        CodedInputStream codedInputStream = this.f12916a;
        if (codedInputStream.c() || (i2 = this.f12917b) == this.f12918c) {
            return false;
        }
        return codedInputStream.y(i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final int getTag() {
        return this.f12917b;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final long h() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(0);
        return this.f12916a.o();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final String i() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(2);
        return this.f12916a.u();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public final void j(Map map, MapEntryLite.Metadata metadata, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(2);
        CodedInputStream codedInputStream = this.f12916a;
        int iF = codedInputStream.f(codedInputStream.w());
        Object objV = metadata.f12964b;
        Object obj = metadata.d;
        Object objV2 = obj;
        while (true) {
            try {
                int iF2 = f();
                if (iF2 == Integer.MAX_VALUE || codedInputStream.c()) {
                    break;
                }
                if (iF2 == 1) {
                    objV = v(metadata.f12963a, null, null);
                } else if (iF2 != 2) {
                    try {
                        if (!g()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!g()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    }
                } else {
                    objV2 = v(metadata.f12965c, obj.getClass(), extensionRegistryLite);
                }
            } catch (Throwable th) {
                codedInputStream.e(iF);
                throw th;
            }
        }
        map.put(objV, objV2);
        codedInputStream.e(iF);
    }

    public final void k(MessageLite messageLite, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(3);
        l(messageLite, schema, extensionRegistryLite);
    }

    public final void l(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int i2 = this.f12918c;
        this.f12918c = ((this.f12917b >>> 3) << 3) | 4;
        try {
            schema.f(obj, this, extensionRegistryLite);
            if (this.f12917b != this.f12918c) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            this.f12918c = i2;
        } catch (Throwable th) {
            this.f12918c = i2;
            throw th;
        }
    }

    public final void m(MessageLite messageLite, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        S(2);
        n(messageLite, schema, extensionRegistryLite);
    }

    public final void n(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        CodedInputStream codedInputStream = this.f12916a;
        int iW = codedInputStream.w();
        if (codedInputStream.f12903a >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iF = codedInputStream.f(iW);
        codedInputStream.f12903a++;
        schema.f(obj, this, extensionRegistryLite);
        codedInputStream.a(0);
        codedInputStream.f12903a--;
        codedInputStream.e(iF);
    }

    public final boolean o() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(0);
        return this.f12916a.g();
    }

    public final void p(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof BooleanArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 0) {
            do {
                list.add(Boolean.valueOf(codedInputStream.g()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iB = codedInputStream.b() + codedInputStream.w();
        do {
            list.add(Boolean.valueOf(codedInputStream.g()));
        } while (codedInputStream.b() < iB);
        R(iB);
    }

    public final void q(List list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iV;
        if ((this.f12917b & 7) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            list.add(b());
            CodedInputStream codedInputStream = this.f12916a;
            if (codedInputStream.c()) {
                return;
            } else {
                iV = codedInputStream.v();
            }
        } while (iV == this.f12917b);
        this.d = iV;
    }

    public final double r() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(1);
        return this.f12916a.i();
    }

    public final void s(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof DoubleArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 1) {
            do {
                list.add(Double.valueOf(codedInputStream.i()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iW = codedInputStream.w();
        U(iW);
        int iB = codedInputStream.b() + iW;
        do {
            list.add(Double.valueOf(codedInputStream.i()));
        } while (codedInputStream.b() < iB);
    }

    public final int t() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(0);
        return this.f12916a.j();
    }

    public final void u(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(codedInputStream.j()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iB = codedInputStream.b() + codedInputStream.w();
        do {
            list.add(Integer.valueOf(codedInputStream.j()));
        } while (codedInputStream.b() < iB);
        R(iB);
    }

    public final Object v(WireFormat$FieldType wireFormat$FieldType, Class cls, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        switch (AnonymousClass1.f12919a[wireFormat$FieldType.ordinal()]) {
            case 1:
                return Boolean.valueOf(o());
            case 2:
                return b();
            case 3:
                return Double.valueOf(r());
            case 4:
                return Integer.valueOf(t());
            case 5:
                return Integer.valueOf(c());
            case 6:
                return Long.valueOf(a());
            case 7:
                return Float.valueOf(y());
            case 8:
                return Integer.valueOf(B());
            case 9:
                return Long.valueOf(h());
            case 10:
                S(2);
                Schema schemaA = Protobuf.f12985c.a(cls);
                Object objB = schemaA.b();
                n(objB, schemaA, extensionRegistryLite);
                schemaA.c(objB);
                return objB;
            case 11:
                return Integer.valueOf(F());
            case 12:
                return Long.valueOf(H());
            case 13:
                return Integer.valueOf(J());
            case 14:
                return Long.valueOf(L());
            case 15:
                return i();
            case 16:
                return Integer.valueOf(e());
            case 17:
                return Long.valueOf(P());
            default:
                md.n("unsupported field type.");
                return null;
        }
    }

    public final void w(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof IntArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 2) {
            int iW = codedInputStream.w();
            T(iW);
            int iB = codedInputStream.b() + iW;
            do {
                list.add(Integer.valueOf(codedInputStream.k()));
            } while (codedInputStream.b() < iB);
            return;
        }
        if (i2 != 5) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            list.add(Integer.valueOf(codedInputStream.k()));
            if (codedInputStream.c()) {
                return;
            } else {
                iV = codedInputStream.v();
            }
        } while (iV == this.f12917b);
        this.d = iV;
    }

    public final void x(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof LongArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 1) {
            do {
                list.add(Long.valueOf(codedInputStream.l()));
                if (codedInputStream.c()) {
                    return;
                } else {
                    iV = codedInputStream.v();
                }
            } while (iV == this.f12917b);
            this.d = iV;
            return;
        }
        if (i2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int iW = codedInputStream.w();
        U(iW);
        int iB = codedInputStream.b() + iW;
        do {
            list.add(Long.valueOf(codedInputStream.l()));
        } while (codedInputStream.b() < iB);
    }

    public final float y() throws InvalidProtocolBufferException.InvalidWireTypeException {
        S(5);
        return this.f12916a.m();
    }

    public final void z(List list) throws InvalidProtocolBufferException {
        int iV;
        if (list instanceof FloatArrayList) {
            r81.h();
            return;
        }
        int i2 = this.f12917b & 7;
        CodedInputStream codedInputStream = this.f12916a;
        if (i2 == 2) {
            int iW = codedInputStream.w();
            T(iW);
            int iB = codedInputStream.b() + iW;
            do {
                list.add(Float.valueOf(codedInputStream.m()));
            } while (codedInputStream.b() < iB);
            return;
        }
        if (i2 != 5) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            list.add(Float.valueOf(codedInputStream.m()));
            if (codedInputStream.c()) {
                return;
            } else {
                iV = codedInputStream.v();
            }
        } while (iV == this.f12917b);
        this.d = iV;
    }
}

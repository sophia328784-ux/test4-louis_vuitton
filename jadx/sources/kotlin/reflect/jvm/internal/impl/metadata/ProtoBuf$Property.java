package kotlin.reflect.jvm.internal.impl.metadata;

import com.github.druk.dnssd.DNSSDException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$Property extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Property> implements ProtoBuf$PropertyOrBuilder {
    public static final ProtoBuf$Property F;
    public static final Parser G = new AnonymousClass1();
    public List A;
    public ProtoBuf$Contract B;
    public ProtoBuf$Contract C;
    public byte D;
    public int E;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73437c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f73439f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ProtoBuf$Type f73440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f73441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f73442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ProtoBuf$Type f73443k;
    public int l;
    public List m;
    public List n;
    public int o;
    public List p;
    public ProtoBuf$ValueParameter q;
    public int r;
    public int s;
    public List t;
    public List u;
    public List v;
    public List w;
    public List x;
    public List y;
    public List z;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Property> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Property(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Property, Builder> implements ProtoBuf$PropertyOrBuilder {
        public List A;
        public ProtoBuf$Contract B;
        public ProtoBuf$Contract C;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73444e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73445f = 518;
        public int g = 2054;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f73446h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ProtoBuf$Type f73447i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f73448j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List f73449k;
        public ProtoBuf$Type l;
        public int m;
        public List n;
        public List o;
        public List p;
        public ProtoBuf$ValueParameter q;
        public int r;
        public int s;
        public List t;
        public List u;
        public List v;
        public List w;
        public List x;
        public List y;
        public List z;

        public Builder() {
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
            this.f73447i = protoBuf$Type;
            List list = Collections.EMPTY_LIST;
            this.f73449k = list;
            this.l = protoBuf$Type;
            this.n = list;
            this.o = list;
            this.p = list;
            this.q = ProtoBuf$ValueParameter.o;
            this.t = list;
            this.u = list;
            this.v = list;
            this.w = list;
            this.x = list;
            this.y = list;
            this.z = list;
            this.A = list;
            ProtoBuf$Contract protoBuf$Contract = ProtoBuf$Contract.f73362f;
            this.B = protoBuf$Contract;
            this.C = protoBuf$Contract;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Property protoBuf$PropertyK = k();
            if (protoBuf$PropertyK.a()) {
                return protoBuf$PropertyK;
            }
            throw new UninitializedMessageException(protoBuf$PropertyK);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        public final Object clone() {
            Builder builder = new Builder();
            builder.l(k());
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: g */
        public final AbstractMessageLite.Builder clone() {
            Builder builder = new Builder();
            builder.l(k());
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: h */
        public final /* bridge */ /* synthetic */ AbstractMessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder i(GeneratedMessageLite generatedMessageLite) {
            l((ProtoBuf$Property) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Property k() {
            ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(this);
            int i2 = this.f73444e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Property.f73438e = this.f73445f;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$Property.f73439f = this.g;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$Property.g = this.f73446h;
            if ((i2 & 8) == 8) {
                i3 |= 8;
            }
            protoBuf$Property.f73440h = this.f73447i;
            if ((i2 & 16) == 16) {
                i3 |= 16;
            }
            protoBuf$Property.f73441i = this.f73448j;
            if ((i2 & 32) == 32) {
                this.f73449k = Collections.unmodifiableList(this.f73449k);
                this.f73444e &= -33;
            }
            protoBuf$Property.f73442j = this.f73449k;
            if ((i2 & 64) == 64) {
                i3 |= 32;
            }
            protoBuf$Property.f73443k = this.l;
            if ((i2 & 128) == 128) {
                i3 |= 64;
            }
            protoBuf$Property.l = this.m;
            if ((this.f73444e & 256) == 256) {
                this.n = Collections.unmodifiableList(this.n);
                this.f73444e &= -257;
            }
            protoBuf$Property.m = this.n;
            if ((this.f73444e & 512) == 512) {
                this.o = Collections.unmodifiableList(this.o);
                this.f73444e &= -513;
            }
            protoBuf$Property.n = this.o;
            if ((this.f73444e & 1024) == 1024) {
                this.p = Collections.unmodifiableList(this.p);
                this.f73444e &= -1025;
            }
            protoBuf$Property.p = this.p;
            if ((i2 & 2048) == 2048) {
                i3 |= 128;
            }
            protoBuf$Property.q = this.q;
            if ((i2 & 4096) == 4096) {
                i3 |= 256;
            }
            protoBuf$Property.r = this.r;
            if ((i2 & 8192) == 8192) {
                i3 |= 512;
            }
            protoBuf$Property.s = this.s;
            if ((this.f73444e & 16384) == 16384) {
                this.t = Collections.unmodifiableList(this.t);
                this.f73444e &= -16385;
            }
            protoBuf$Property.t = this.t;
            if ((this.f73444e & 32768) == 32768) {
                this.u = Collections.unmodifiableList(this.u);
                this.f73444e &= -32769;
            }
            protoBuf$Property.u = this.u;
            if ((this.f73444e & 65536) == 65536) {
                this.v = Collections.unmodifiableList(this.v);
                this.f73444e &= DNSSDException.UNKNOWN;
            }
            protoBuf$Property.v = this.v;
            if ((this.f73444e & 131072) == 131072) {
                this.w = Collections.unmodifiableList(this.w);
                this.f73444e &= -131073;
            }
            protoBuf$Property.w = this.w;
            if ((this.f73444e & 262144) == 262144) {
                this.x = Collections.unmodifiableList(this.x);
                this.f73444e &= -262145;
            }
            protoBuf$Property.x = this.x;
            if ((this.f73444e & 524288) == 524288) {
                this.y = Collections.unmodifiableList(this.y);
                this.f73444e &= -524289;
            }
            protoBuf$Property.y = this.y;
            if ((this.f73444e & 1048576) == 1048576) {
                this.z = Collections.unmodifiableList(this.z);
                this.f73444e &= -1048577;
            }
            protoBuf$Property.z = this.z;
            if ((this.f73444e & PKIFailureInfo.badSenderNonce) == 2097152) {
                this.A = Collections.unmodifiableList(this.A);
                this.f73444e &= -2097153;
            }
            protoBuf$Property.A = this.A;
            if ((i2 & 4194304) == 4194304) {
                i3 |= 1024;
            }
            protoBuf$Property.B = this.B;
            if ((i2 & 8388608) == 8388608) {
                i3 |= 2048;
            }
            protoBuf$Property.C = this.C;
            protoBuf$Property.d = i3;
            return protoBuf$Property;
        }

        public final void l(ProtoBuf$Property protoBuf$Property) {
            ProtoBuf$Contract protoBuf$Contract;
            ProtoBuf$Contract protoBuf$Contract2;
            ProtoBuf$ValueParameter protoBuf$ValueParameter;
            ProtoBuf$Type protoBuf$Type;
            ProtoBuf$Type protoBuf$Type2;
            if (protoBuf$Property == ProtoBuf$Property.F) {
                return;
            }
            int i2 = protoBuf$Property.d;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$Property.f73438e;
                this.f73444e = 1 | this.f73444e;
                this.f73445f = i3;
            }
            if ((i2 & 2) == 2) {
                int i4 = protoBuf$Property.f73439f;
                this.f73444e = 2 | this.f73444e;
                this.g = i4;
            }
            if ((i2 & 4) == 4) {
                int i5 = protoBuf$Property.g;
                this.f73444e = 4 | this.f73444e;
                this.f73446h = i5;
            }
            if ((i2 & 8) == 8) {
                ProtoBuf$Type protoBuf$Type3 = protoBuf$Property.f73440h;
                if ((this.f73444e & 8) != 8 || (protoBuf$Type2 = this.f73447i) == ProtoBuf$Type.v) {
                    this.f73447i = protoBuf$Type3;
                } else {
                    ProtoBuf$Type.Builder builderU = ProtoBuf$Type.u(protoBuf$Type2);
                    builderU.l(protoBuf$Type3);
                    this.f73447i = builderU.k();
                }
                this.f73444e |= 8;
            }
            if ((protoBuf$Property.d & 16) == 16) {
                int i6 = protoBuf$Property.f73441i;
                this.f73444e = 16 | this.f73444e;
                this.f73448j = i6;
            }
            if (!protoBuf$Property.f73442j.isEmpty()) {
                if (this.f73449k.isEmpty()) {
                    this.f73449k = protoBuf$Property.f73442j;
                    this.f73444e &= -33;
                } else {
                    if ((this.f73444e & 32) != 32) {
                        this.f73449k = new ArrayList(this.f73449k);
                        this.f73444e |= 32;
                    }
                    this.f73449k.addAll(protoBuf$Property.f73442j);
                }
            }
            if ((protoBuf$Property.d & 32) == 32) {
                ProtoBuf$Type protoBuf$Type4 = protoBuf$Property.f73443k;
                if ((this.f73444e & 64) != 64 || (protoBuf$Type = this.l) == ProtoBuf$Type.v) {
                    this.l = protoBuf$Type4;
                } else {
                    ProtoBuf$Type.Builder builderU2 = ProtoBuf$Type.u(protoBuf$Type);
                    builderU2.l(protoBuf$Type4);
                    this.l = builderU2.k();
                }
                this.f73444e |= 64;
            }
            if ((protoBuf$Property.d & 64) == 64) {
                int i7 = protoBuf$Property.l;
                this.f73444e |= 128;
                this.m = i7;
            }
            if (!protoBuf$Property.m.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$Property.m;
                    this.f73444e &= -257;
                } else {
                    if ((this.f73444e & 256) != 256) {
                        this.n = new ArrayList(this.n);
                        this.f73444e |= 256;
                    }
                    this.n.addAll(protoBuf$Property.m);
                }
            }
            if (!protoBuf$Property.n.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Property.n;
                    this.f73444e &= -513;
                } else {
                    if ((this.f73444e & 512) != 512) {
                        this.o = new ArrayList(this.o);
                        this.f73444e |= 512;
                    }
                    this.o.addAll(protoBuf$Property.n);
                }
            }
            if (!protoBuf$Property.p.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Property.p;
                    this.f73444e &= -1025;
                } else {
                    if ((this.f73444e & 1024) != 1024) {
                        this.p = new ArrayList(this.p);
                        this.f73444e |= 1024;
                    }
                    this.p.addAll(protoBuf$Property.p);
                }
            }
            if ((protoBuf$Property.d & 128) == 128) {
                ProtoBuf$ValueParameter protoBuf$ValueParameter2 = protoBuf$Property.q;
                if ((this.f73444e & 2048) != 2048 || (protoBuf$ValueParameter = this.q) == ProtoBuf$ValueParameter.o) {
                    this.q = protoBuf$ValueParameter2;
                } else {
                    ProtoBuf$ValueParameter.Builder builder = new ProtoBuf$ValueParameter.Builder();
                    builder.l(protoBuf$ValueParameter);
                    builder.l(protoBuf$ValueParameter2);
                    this.q = builder.k();
                }
                this.f73444e |= 2048;
            }
            int i8 = protoBuf$Property.d;
            if ((i8 & 256) == 256) {
                int i9 = protoBuf$Property.r;
                this.f73444e |= 4096;
                this.r = i9;
            }
            if ((i8 & 512) == 512) {
                int i10 = protoBuf$Property.s;
                this.f73444e |= 8192;
                this.s = i10;
            }
            if (!protoBuf$Property.t.isEmpty()) {
                if (this.t.isEmpty()) {
                    this.t = protoBuf$Property.t;
                    this.f73444e &= -16385;
                } else {
                    if ((this.f73444e & 16384) != 16384) {
                        this.t = new ArrayList(this.t);
                        this.f73444e |= 16384;
                    }
                    this.t.addAll(protoBuf$Property.t);
                }
            }
            if (!protoBuf$Property.u.isEmpty()) {
                if (this.u.isEmpty()) {
                    this.u = protoBuf$Property.u;
                    this.f73444e &= -32769;
                } else {
                    if ((this.f73444e & 32768) != 32768) {
                        this.u = new ArrayList(this.u);
                        this.f73444e |= 32768;
                    }
                    this.u.addAll(protoBuf$Property.u);
                }
            }
            if (!protoBuf$Property.v.isEmpty()) {
                if (this.v.isEmpty()) {
                    this.v = protoBuf$Property.v;
                    this.f73444e &= DNSSDException.UNKNOWN;
                } else {
                    if ((this.f73444e & 65536) != 65536) {
                        this.v = new ArrayList(this.v);
                        this.f73444e |= 65536;
                    }
                    this.v.addAll(protoBuf$Property.v);
                }
            }
            if (!protoBuf$Property.w.isEmpty()) {
                if (this.w.isEmpty()) {
                    this.w = protoBuf$Property.w;
                    this.f73444e &= -131073;
                } else {
                    if ((this.f73444e & 131072) != 131072) {
                        this.w = new ArrayList(this.w);
                        this.f73444e |= 131072;
                    }
                    this.w.addAll(protoBuf$Property.w);
                }
            }
            if (!protoBuf$Property.x.isEmpty()) {
                if (this.x.isEmpty()) {
                    this.x = protoBuf$Property.x;
                    this.f73444e &= -262145;
                } else {
                    if ((this.f73444e & 262144) != 262144) {
                        this.x = new ArrayList(this.x);
                        this.f73444e |= 262144;
                    }
                    this.x.addAll(protoBuf$Property.x);
                }
            }
            if (!protoBuf$Property.y.isEmpty()) {
                if (this.y.isEmpty()) {
                    this.y = protoBuf$Property.y;
                    this.f73444e &= -524289;
                } else {
                    if ((this.f73444e & 524288) != 524288) {
                        this.y = new ArrayList(this.y);
                        this.f73444e |= 524288;
                    }
                    this.y.addAll(protoBuf$Property.y);
                }
            }
            if (!protoBuf$Property.z.isEmpty()) {
                if (this.z.isEmpty()) {
                    this.z = protoBuf$Property.z;
                    this.f73444e &= -1048577;
                } else {
                    if ((this.f73444e & 1048576) != 1048576) {
                        this.z = new ArrayList(this.z);
                        this.f73444e |= 1048576;
                    }
                    this.z.addAll(protoBuf$Property.z);
                }
            }
            if (!protoBuf$Property.A.isEmpty()) {
                if (this.A.isEmpty()) {
                    this.A = protoBuf$Property.A;
                    this.f73444e &= -2097153;
                } else {
                    if ((this.f73444e & PKIFailureInfo.badSenderNonce) != 2097152) {
                        this.A = new ArrayList(this.A);
                        this.f73444e |= PKIFailureInfo.badSenderNonce;
                    }
                    this.A.addAll(protoBuf$Property.A);
                }
            }
            if ((protoBuf$Property.d & 1024) == 1024) {
                ProtoBuf$Contract protoBuf$Contract3 = protoBuf$Property.B;
                if ((this.f73444e & 4194304) != 4194304 || (protoBuf$Contract2 = this.B) == ProtoBuf$Contract.f73362f) {
                    this.B = protoBuf$Contract3;
                } else {
                    ProtoBuf$Contract.Builder builder2 = new ProtoBuf$Contract.Builder();
                    builder2.k(protoBuf$Contract2);
                    builder2.k(protoBuf$Contract3);
                    this.B = builder2.j();
                }
                this.f73444e |= 4194304;
            }
            if ((protoBuf$Property.d & 2048) == 2048) {
                ProtoBuf$Contract protoBuf$Contract4 = protoBuf$Property.C;
                if ((this.f73444e & 8388608) != 8388608 || (protoBuf$Contract = this.C) == ProtoBuf$Contract.f73362f) {
                    this.C = protoBuf$Contract4;
                } else {
                    ProtoBuf$Contract.Builder builder3 = new ProtoBuf$Contract.Builder();
                    builder3.k(protoBuf$Contract);
                    builder3.k(protoBuf$Contract4);
                    this.C = builder3.j();
                }
                this.f73444e |= 8388608;
            }
            j(protoBuf$Property);
            this.f73731b = this.f73731b.b(protoBuf$Property.f73437c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Property protoBuf$Property = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Property.G).getClass();
                    l(new ProtoBuf$Property(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Property protoBuf$Property2 = (ProtoBuf$Property) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Property = protoBuf$Property2;
                        if (protoBuf$Property != null) {
                            l(protoBuf$Property);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Property != null) {
                    l(protoBuf$Property);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property();
        F = protoBuf$Property;
        protoBuf$Property.s();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:9:0x0042  */
    /* JADX WARN: Multi-variable type inference failed */
    public ProtoBuf$Property(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        ProtoBuf$Contract.Builder builder;
        ProtoBuf$Contract.Builder builder2;
        this.o = -1;
        this.D = (byte) -1;
        this.E = -1;
        s();
        ByteString.Output outputP = ByteString.p();
        boolean z = true;
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(outputP, 1);
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            boolean z3 = z;
            if (z2) {
                if ((i2 & 32) == 32) {
                    this.f73442j = Collections.unmodifiableList(this.f73442j);
                }
                if ((i2 & 256) == 256) {
                    this.m = Collections.unmodifiableList(this.m);
                }
                if ((i2 & 512) == 512) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                if ((i2 & 65536) == 65536) {
                    this.v = Collections.unmodifiableList(this.v);
                }
                if ((i2 & 131072) == 131072) {
                    this.w = Collections.unmodifiableList(this.w);
                }
                if ((i2 & 262144) == 262144) {
                    this.x = Collections.unmodifiableList(this.x);
                }
                if ((i2 & 1024) == 1024) {
                    this.p = Collections.unmodifiableList(this.p);
                }
                if ((i2 & 16384) == 16384) {
                    this.t = Collections.unmodifiableList(this.t);
                }
                if ((i2 & 32768) == 32768) {
                    this.u = Collections.unmodifiableList(this.u);
                }
                if ((i2 & 524288) == 524288) {
                    this.y = Collections.unmodifiableList(this.y);
                }
                if ((i2 & 1048576) == 1048576) {
                    this.z = Collections.unmodifiableList(this.z);
                }
                if ((i2 & PKIFailureInfo.badSenderNonce) == 2097152) {
                    this.A = Collections.unmodifiableList(this.A);
                }
                try {
                    codedOutputStreamJ.i();
                } catch (IOException unused) {
                } finally {
                    this.f73437c = outputP.j();
                }
                p();
                return;
            }
            try {
                try {
                    int iO = codedInputStream.o();
                    switch (iO) {
                        case 0:
                            z2 = z3;
                            z = z3;
                            break;
                        case 8:
                            this.d |= 2;
                            this.f73439f = codedInputStream.g();
                            z = z3;
                            break;
                        case 16:
                            this.d |= 4;
                            this.g = codedInputStream.g();
                            z = z3;
                            break;
                        case 26:
                            ProtoBuf$Type.Builder builderV = (this.d & 8) == 8 ? this.f73440h.b() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                            this.f73440h = protoBuf$Type;
                            if (builderV != 0) {
                                builderV.l(protoBuf$Type);
                                this.f73440h = builderV.k();
                            }
                            this.d |= 8;
                            z = z3;
                            break;
                        case 34:
                            if ((i2 & 32) != 32) {
                                this.f73442j = new ArrayList();
                                i2 |= 32;
                            }
                            this.f73442j.add(codedInputStream.h(ProtoBuf$TypeParameter.p, extensionRegistryLite));
                            z = z3;
                            break;
                        case EACTags.CURRENCY_CODE /* 42 */:
                            ProtoBuf$Type.Builder builderV2 = (this.d & 32) == 32 ? this.f73443k.b() : null;
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                            this.f73443k = protoBuf$Type2;
                            if (builderV2 != 0) {
                                builderV2.l(protoBuf$Type2);
                                this.f73443k = builderV2.k();
                            }
                            this.d |= 32;
                            z = z3;
                            break;
                        case 50:
                            ProtoBuf$ValueParameter.Builder builderS = (this.d & 128) == 128 ? this.q.s() : null;
                            ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) codedInputStream.h(ProtoBuf$ValueParameter.p, extensionRegistryLite);
                            this.q = protoBuf$ValueParameter;
                            if (builderS != 0) {
                                builderS.l(protoBuf$ValueParameter);
                                this.q = builderS.k();
                            }
                            this.d |= 128;
                            z = z3;
                            break;
                        case 56:
                            this.d |= 256;
                            this.r = codedInputStream.g();
                            z = z3;
                            break;
                        case 64:
                            this.d |= 512;
                            this.s = codedInputStream.g();
                            z = z3;
                            break;
                        case 72:
                            this.d |= 16;
                            this.f73441i = codedInputStream.g();
                            z = z3;
                            break;
                        case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                            this.d |= 64;
                            this.l = codedInputStream.g();
                            z = z3;
                            break;
                        case 88:
                            this.d |= 1;
                            this.f73438e = codedInputStream.g();
                            z = z3;
                            break;
                        case 98:
                            if ((i2 & 256) != 256) {
                                this.m = new ArrayList();
                                i2 |= 256;
                            }
                            this.m.add(codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite));
                            z = z3;
                            break;
                        case 104:
                            if ((i2 & 512) != 512) {
                                this.n = new ArrayList();
                                i2 |= 512;
                            }
                            this.n.add(Integer.valueOf(codedInputStream.g()));
                            z = z3;
                            break;
                        case 106:
                            int iE = codedInputStream.e(codedInputStream.l());
                            if ((i2 & 512) != 512 && codedInputStream.c() > 0) {
                                this.n = new ArrayList();
                                i2 |= 512;
                            }
                            while (codedInputStream.c() > 0) {
                                this.n.add(Integer.valueOf(codedInputStream.g()));
                            }
                            codedInputStream.d(iE);
                            z = z3;
                            break;
                        case 114:
                            if ((i2 & 65536) != 65536) {
                                this.v = new ArrayList();
                                i2 |= 65536;
                            }
                            this.v.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            z = z3;
                            break;
                        case 122:
                            if ((i2 & 131072) != 131072) {
                                this.w = new ArrayList();
                                i2 |= 131072;
                            }
                            this.w.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            z = z3;
                            break;
                        case 130:
                            if ((i2 & 262144) != 262144) {
                                this.x = new ArrayList();
                                i2 |= 262144;
                            }
                            this.x.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            z = z3;
                            break;
                        case 138:
                            if ((i2 & 1024) != 1024) {
                                this.p = new ArrayList();
                                i2 |= 1024;
                            }
                            this.p.add(codedInputStream.h(ProtoBuf$ValueParameter.p, extensionRegistryLite));
                            z = z3;
                            break;
                        case 248:
                            if ((i2 & 16384) != 16384) {
                                this.t = new ArrayList();
                                i2 |= 16384;
                            }
                            this.t.add(Integer.valueOf(codedInputStream.g()));
                            z = z3;
                            break;
                        case 250:
                            int iE2 = codedInputStream.e(codedInputStream.l());
                            if ((i2 & 16384) != 16384 && codedInputStream.c() > 0) {
                                this.t = new ArrayList();
                                i2 |= 16384;
                            }
                            while (codedInputStream.c() > 0) {
                                this.t.add(Integer.valueOf(codedInputStream.g()));
                            }
                            codedInputStream.d(iE2);
                            z = z3;
                            break;
                        case 258:
                            if ((i2 & 32768) != 32768) {
                                this.u = new ArrayList();
                                i2 |= 32768;
                            }
                            this.u.add(codedInputStream.h(ProtoBuf$CompilerPluginData.f73343i, extensionRegistryLite));
                            z = z3;
                            break;
                        case 266:
                            if ((i2 & 524288) != 524288) {
                                this.y = new ArrayList();
                                i2 |= 524288;
                            }
                            this.y.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            z = z3;
                            break;
                        case 274:
                            if ((i2 & 1048576) != 1048576) {
                                this.z = new ArrayList();
                                i2 |= 1048576;
                            }
                            this.z.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            z = z3;
                            break;
                        case 282:
                            if ((i2 & PKIFailureInfo.badSenderNonce) != 2097152) {
                                this.A = new ArrayList();
                                i2 |= PKIFailureInfo.badSenderNonce;
                            }
                            this.A.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            z = z3;
                            break;
                        case 322:
                            if ((this.d & 1024) == 1024) {
                                ProtoBuf$Contract protoBuf$Contract = this.B;
                                protoBuf$Contract.getClass();
                                builder2 = new ProtoBuf$Contract.Builder();
                                builder2.k(protoBuf$Contract);
                            } else {
                                builder2 = null;
                            }
                            ProtoBuf$Contract protoBuf$Contract2 = (ProtoBuf$Contract) codedInputStream.h(ProtoBuf$Contract.g, extensionRegistryLite);
                            this.B = protoBuf$Contract2;
                            if (builder2 != null) {
                                builder2.k(protoBuf$Contract2);
                                this.B = builder2.j();
                            }
                            this.d |= 1024;
                            z = z3;
                            break;
                        case 330:
                            try {
                                if ((this.d & 2048) == 2048) {
                                    try {
                                        ProtoBuf$Contract protoBuf$Contract3 = this.C;
                                        protoBuf$Contract3.getClass();
                                        builder = new ProtoBuf$Contract.Builder();
                                        builder.k(protoBuf$Contract3);
                                    } catch (InvalidProtocolBufferException e2) {
                                        e = e2;
                                        e.a(this);
                                        throw e;
                                    } catch (IOException e3) {
                                        e = e3;
                                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e.getMessage());
                                        invalidProtocolBufferException.a(this);
                                        throw invalidProtocolBufferException;
                                    } catch (Throwable th) {
                                        th = th;
                                        if ((i2 & 32) == 32) {
                                            this.f73442j = Collections.unmodifiableList(this.f73442j);
                                        }
                                        if ((i2 & 256) == 256) {
                                            this.m = Collections.unmodifiableList(this.m);
                                        }
                                        if ((i2 & 512) == 512) {
                                            this.n = Collections.unmodifiableList(this.n);
                                        }
                                        if ((i2 & 65536) == 65536) {
                                            this.v = Collections.unmodifiableList(this.v);
                                        }
                                        if ((i2 & 131072) == 131072) {
                                            this.w = Collections.unmodifiableList(this.w);
                                        }
                                        if ((i2 & 262144) == 262144) {
                                            this.x = Collections.unmodifiableList(this.x);
                                        }
                                        if ((i2 & 1024) == 1024) {
                                            this.p = Collections.unmodifiableList(this.p);
                                        }
                                        if ((i2 & 16384) == 16384) {
                                            this.t = Collections.unmodifiableList(this.t);
                                        }
                                        if ((i2 & 32768) == 32768) {
                                            this.u = Collections.unmodifiableList(this.u);
                                        }
                                        if ((i2 & 524288) == 524288) {
                                            this.y = Collections.unmodifiableList(this.y);
                                        }
                                        if ((i2 & 1048576) == 1048576) {
                                            this.z = Collections.unmodifiableList(this.z);
                                        }
                                        if ((i2 & PKIFailureInfo.badSenderNonce) == 2097152) {
                                            this.A = Collections.unmodifiableList(this.A);
                                        }
                                        try {
                                            codedOutputStreamJ.i();
                                            break;
                                        } catch (IOException unused2) {
                                        } finally {
                                            this.f73437c = outputP.j();
                                        }
                                        p();
                                        throw th;
                                    }
                                } else {
                                    builder = null;
                                }
                                ProtoBuf$Contract protoBuf$Contract4 = (ProtoBuf$Contract) codedInputStream.h(ProtoBuf$Contract.g, extensionRegistryLite);
                                this.C = protoBuf$Contract4;
                                if (builder != null) {
                                    builder.k(protoBuf$Contract4);
                                    this.C = builder.j();
                                }
                                this.d |= 2048;
                                z = z3;
                            } catch (InvalidProtocolBufferException e4) {
                                e = e4;
                            } catch (IOException e5) {
                                e = e5;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            break;
                        default:
                            if (!q(codedInputStream, codedOutputStreamJ, extensionRegistryLite, iO)) {
                                z2 = z3;
                            }
                            z = z3;
                            break;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (InvalidProtocolBufferException e6) {
                e = e6;
            } catch (IOException e7) {
                e = e7;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.D;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        int i2 = this.d;
        if ((i2 & 4) != 4) {
            this.D = (byte) 0;
            return false;
        }
        if ((i2 & 8) == 8 && !this.f73440h.a()) {
            this.D = (byte) 0;
            return false;
        }
        for (int i3 = 0; i3 < this.f73442j.size(); i3++) {
            if (!((ProtoBuf$TypeParameter) this.f73442j.get(i3)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        if ((this.d & 32) == 32 && !this.f73443k.a()) {
            this.D = (byte) 0;
            return false;
        }
        for (int i4 = 0; i4 < this.m.size(); i4++) {
            if (!((ProtoBuf$Type) this.m.get(i4)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        for (int i5 = 0; i5 < this.p.size(); i5++) {
            if (!((ProtoBuf$ValueParameter) this.p.get(i5)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        if ((this.d & 128) == 128 && !this.q.a()) {
            this.D = (byte) 0;
            return false;
        }
        for (int i6 = 0; i6 < this.u.size(); i6++) {
            if (!((ProtoBuf$CompilerPluginData) this.u.get(i6)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < this.v.size(); i7++) {
            if (!((ProtoBuf$Annotation) this.v.get(i7)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        for (int i8 = 0; i8 < this.w.size(); i8++) {
            if (!((ProtoBuf$Annotation) this.w.get(i8)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        for (int i9 = 0; i9 < this.x.size(); i9++) {
            if (!((ProtoBuf$Annotation) this.x.get(i9)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        for (int i10 = 0; i10 < this.y.size(); i10++) {
            if (!((ProtoBuf$Annotation) this.y.get(i10)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        for (int i11 = 0; i11 < this.z.size(); i11++) {
            if (!((ProtoBuf$Annotation) this.z.get(i11)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        for (int i12 = 0; i12 < this.A.size(); i12++) {
            if (!((ProtoBuf$Annotation) this.A.get(i12)).a()) {
                this.D = (byte) 0;
                return false;
            }
        }
        if ((this.d & 1024) == 1024 && !this.B.a()) {
            this.D = (byte) 0;
            return false;
        }
        if ((this.d & 2048) == 2048 && !this.C.a()) {
            this.D = (byte) 0;
            return false;
        }
        if (i()) {
            this.D = (byte) 1;
            return true;
        }
        this.D = (byte) 0;
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder b() {
        Builder builder = new Builder();
        builder.l(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final int c() {
        List list;
        List list2;
        int i2 = this.E;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 2) == 2 ? CodedOutputStream.b(1, this.f73439f) : 0;
        if ((this.d & 4) == 4) {
            iB += CodedOutputStream.b(2, this.g);
        }
        if ((this.d & 8) == 8) {
            iB += CodedOutputStream.d(3, this.f73440h);
        }
        for (int i3 = 0; i3 < this.f73442j.size(); i3++) {
            iB += CodedOutputStream.d(4, (MessageLite) this.f73442j.get(i3));
        }
        if ((this.d & 32) == 32) {
            iB += CodedOutputStream.d(5, this.f73443k);
        }
        if ((this.d & 128) == 128) {
            iB += CodedOutputStream.d(6, this.q);
        }
        if ((this.d & 256) == 256) {
            iB += CodedOutputStream.b(7, this.r);
        }
        if ((this.d & 512) == 512) {
            iB += CodedOutputStream.b(8, this.s);
        }
        if ((this.d & 16) == 16) {
            iB += CodedOutputStream.b(9, this.f73441i);
        }
        if ((this.d & 64) == 64) {
            iB += CodedOutputStream.b(10, this.l);
        }
        if ((this.d & 1) == 1) {
            iB += CodedOutputStream.b(11, this.f73438e);
        }
        for (int i4 = 0; i4 < this.m.size(); i4++) {
            iB += CodedOutputStream.d(12, (MessageLite) this.m.get(i4));
        }
        int i5 = 0;
        int iC = 0;
        while (true) {
            int size = this.n.size();
            list = this.n;
            if (i5 >= size) {
                break;
            }
            iC += CodedOutputStream.c(((Integer) list.get(i5)).intValue());
            i5++;
        }
        int iD = iB + iC;
        if (!list.isEmpty()) {
            iD = iD + 1 + CodedOutputStream.c(iC);
        }
        this.o = iC;
        for (int i6 = 0; i6 < this.v.size(); i6++) {
            iD += CodedOutputStream.d(14, (MessageLite) this.v.get(i6));
        }
        for (int i7 = 0; i7 < this.w.size(); i7++) {
            iD += CodedOutputStream.d(15, (MessageLite) this.w.get(i7));
        }
        for (int i8 = 0; i8 < this.x.size(); i8++) {
            iD += CodedOutputStream.d(16, (MessageLite) this.x.get(i8));
        }
        for (int i9 = 0; i9 < this.p.size(); i9++) {
            iD += CodedOutputStream.d(17, (MessageLite) this.p.get(i9));
        }
        int i10 = 0;
        int iC2 = 0;
        while (true) {
            int size2 = this.t.size();
            list2 = this.t;
            if (i10 >= size2) {
                break;
            }
            iC2 += CodedOutputStream.c(((Integer) list2.get(i10)).intValue());
            i10++;
        }
        int size3 = (list2.size() * 2) + iD + iC2;
        for (int i11 = 0; i11 < this.u.size(); i11++) {
            size3 += CodedOutputStream.d(32, (MessageLite) this.u.get(i11));
        }
        for (int i12 = 0; i12 < this.y.size(); i12++) {
            size3 += CodedOutputStream.d(33, (MessageLite) this.y.get(i12));
        }
        for (int i13 = 0; i13 < this.z.size(); i13++) {
            size3 += CodedOutputStream.d(34, (MessageLite) this.z.get(i13));
        }
        for (int i14 = 0; i14 < this.A.size(); i14++) {
            size3 += CodedOutputStream.d(35, (MessageLite) this.A.get(i14));
        }
        if ((this.d & 1024) == 1024) {
            size3 += CodedOutputStream.d(40, this.B);
        }
        if ((this.d & 2048) == 2048) {
            size3 += CodedOutputStream.d(41, this.C);
        }
        int size4 = this.f73437c.size() + j() + size3;
        this.E = size4;
        return size4;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        GeneratedMessageLite.ExtendableMessage.ExtensionWriter extensionWriter = new GeneratedMessageLite.ExtendableMessage.ExtensionWriter(this);
        if ((this.d & 2) == 2) {
            codedOutputStream.m(1, this.f73439f);
        }
        if ((this.d & 4) == 4) {
            codedOutputStream.m(2, this.g);
        }
        if ((this.d & 8) == 8) {
            codedOutputStream.o(3, this.f73440h);
        }
        for (int i2 = 0; i2 < this.f73442j.size(); i2++) {
            codedOutputStream.o(4, (MessageLite) this.f73442j.get(i2));
        }
        if ((this.d & 32) == 32) {
            codedOutputStream.o(5, this.f73443k);
        }
        if ((this.d & 128) == 128) {
            codedOutputStream.o(6, this.q);
        }
        if ((this.d & 256) == 256) {
            codedOutputStream.m(7, this.r);
        }
        if ((this.d & 512) == 512) {
            codedOutputStream.m(8, this.s);
        }
        if ((this.d & 16) == 16) {
            codedOutputStream.m(9, this.f73441i);
        }
        if ((this.d & 64) == 64) {
            codedOutputStream.m(10, this.l);
        }
        if ((this.d & 1) == 1) {
            codedOutputStream.m(11, this.f73438e);
        }
        for (int i3 = 0; i3 < this.m.size(); i3++) {
            codedOutputStream.o(12, (MessageLite) this.m.get(i3));
        }
        if (this.n.size() > 0) {
            codedOutputStream.v(106);
            codedOutputStream.v(this.o);
        }
        for (int i4 = 0; i4 < this.n.size(); i4++) {
            codedOutputStream.n(((Integer) this.n.get(i4)).intValue());
        }
        for (int i5 = 0; i5 < this.v.size(); i5++) {
            codedOutputStream.o(14, (MessageLite) this.v.get(i5));
        }
        for (int i6 = 0; i6 < this.w.size(); i6++) {
            codedOutputStream.o(15, (MessageLite) this.w.get(i6));
        }
        for (int i7 = 0; i7 < this.x.size(); i7++) {
            codedOutputStream.o(16, (MessageLite) this.x.get(i7));
        }
        for (int i8 = 0; i8 < this.p.size(); i8++) {
            codedOutputStream.o(17, (MessageLite) this.p.get(i8));
        }
        for (int i9 = 0; i9 < this.t.size(); i9++) {
            codedOutputStream.m(31, ((Integer) this.t.get(i9)).intValue());
        }
        for (int i10 = 0; i10 < this.u.size(); i10++) {
            codedOutputStream.o(32, (MessageLite) this.u.get(i10));
        }
        for (int i11 = 0; i11 < this.y.size(); i11++) {
            codedOutputStream.o(33, (MessageLite) this.y.get(i11));
        }
        for (int i12 = 0; i12 < this.z.size(); i12++) {
            codedOutputStream.o(34, (MessageLite) this.z.get(i12));
        }
        for (int i13 = 0; i13 < this.A.size(); i13++) {
            codedOutputStream.o(35, (MessageLite) this.A.get(i13));
        }
        if ((this.d & 1024) == 1024) {
            codedOutputStream.o(40, this.B);
        }
        if ((this.d & 2048) == 2048) {
            codedOutputStream.o(41, this.C);
        }
        extensionWriter.a(19000, codedOutputStream);
        codedOutputStream.r(this.f73437c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return F;
    }

    public final void s() {
        this.f73438e = 518;
        this.f73439f = 2054;
        this.g = 0;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
        this.f73440h = protoBuf$Type;
        this.f73441i = 0;
        List list = Collections.EMPTY_LIST;
        this.f73442j = list;
        this.f73443k = protoBuf$Type;
        this.l = 0;
        this.m = list;
        this.n = list;
        this.p = list;
        this.q = ProtoBuf$ValueParameter.o;
        this.r = 0;
        this.s = 0;
        this.t = list;
        this.u = list;
        this.v = list;
        this.w = list;
        this.x = list;
        this.y = list;
        this.z = list;
        this.A = list;
        ProtoBuf$Contract protoBuf$Contract = ProtoBuf$Contract.f73362f;
        this.B = protoBuf$Contract;
        this.C = protoBuf$Contract;
    }

    public ProtoBuf$Property() {
        this.o = -1;
        this.D = (byte) -1;
        this.E = -1;
        this.f73437c = ByteString.f73706b;
    }

    public ProtoBuf$Property(Builder builder) {
        super(builder);
        this.o = -1;
        this.D = (byte) -1;
        this.E = -1;
        this.f73437c = builder.f73731b;
    }
}

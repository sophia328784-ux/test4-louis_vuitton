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
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$Function extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Function> implements ProtoBuf$FunctionOrBuilder {
    public static final Parser A = new AnonymousClass1();
    public static final ProtoBuf$Function z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73401c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f73403f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ProtoBuf$Type f73404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f73405i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f73406j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ProtoBuf$Type f73407k;
    public int l;
    public List m;
    public List n;
    public int o;
    public List p;
    public List q;
    public ProtoBuf$TypeTable r;
    public List s;
    public ProtoBuf$Contract t;
    public List u;
    public List v;
    public List w;
    public byte x;
    public int y;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Function> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Function(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Function, Builder> implements ProtoBuf$FunctionOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73408e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73409f = 6;
        public int g = 6;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f73410h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ProtoBuf$Type f73411i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f73412j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List f73413k;
        public ProtoBuf$Type l;
        public int m;
        public List n;
        public List o;
        public List p;
        public List q;
        public ProtoBuf$TypeTable r;
        public List s;
        public ProtoBuf$Contract t;
        public List u;
        public List v;
        public List w;

        public Builder() {
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
            this.f73411i = protoBuf$Type;
            List list = Collections.EMPTY_LIST;
            this.f73413k = list;
            this.l = protoBuf$Type;
            this.n = list;
            this.o = list;
            this.p = list;
            this.q = list;
            this.r = ProtoBuf$TypeTable.f73519h;
            this.s = list;
            this.t = ProtoBuf$Contract.f73362f;
            this.u = list;
            this.v = list;
            this.w = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Function protoBuf$FunctionK = k();
            if (protoBuf$FunctionK.a()) {
                return protoBuf$FunctionK;
            }
            throw new UninitializedMessageException(protoBuf$FunctionK);
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
            l((ProtoBuf$Function) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Function k() {
            ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function(this);
            int i2 = this.f73408e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Function.f73402e = this.f73409f;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$Function.f73403f = this.g;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$Function.g = this.f73410h;
            if ((i2 & 8) == 8) {
                i3 |= 8;
            }
            protoBuf$Function.f73404h = this.f73411i;
            if ((i2 & 16) == 16) {
                i3 |= 16;
            }
            protoBuf$Function.f73405i = this.f73412j;
            if ((i2 & 32) == 32) {
                this.f73413k = Collections.unmodifiableList(this.f73413k);
                this.f73408e &= -33;
            }
            protoBuf$Function.f73406j = this.f73413k;
            if ((i2 & 64) == 64) {
                i3 |= 32;
            }
            protoBuf$Function.f73407k = this.l;
            if ((i2 & 128) == 128) {
                i3 |= 64;
            }
            protoBuf$Function.l = this.m;
            if ((this.f73408e & 256) == 256) {
                this.n = Collections.unmodifiableList(this.n);
                this.f73408e &= -257;
            }
            protoBuf$Function.m = this.n;
            if ((this.f73408e & 512) == 512) {
                this.o = Collections.unmodifiableList(this.o);
                this.f73408e &= -513;
            }
            protoBuf$Function.n = this.o;
            if ((this.f73408e & 1024) == 1024) {
                this.p = Collections.unmodifiableList(this.p);
                this.f73408e &= -1025;
            }
            protoBuf$Function.p = this.p;
            if ((this.f73408e & 2048) == 2048) {
                this.q = Collections.unmodifiableList(this.q);
                this.f73408e &= -2049;
            }
            protoBuf$Function.q = this.q;
            if ((i2 & 4096) == 4096) {
                i3 |= 128;
            }
            protoBuf$Function.r = this.r;
            if ((this.f73408e & 8192) == 8192) {
                this.s = Collections.unmodifiableList(this.s);
                this.f73408e &= -8193;
            }
            protoBuf$Function.s = this.s;
            if ((i2 & 16384) == 16384) {
                i3 |= 256;
            }
            protoBuf$Function.t = this.t;
            if ((this.f73408e & 32768) == 32768) {
                this.u = Collections.unmodifiableList(this.u);
                this.f73408e &= -32769;
            }
            protoBuf$Function.u = this.u;
            if ((this.f73408e & 65536) == 65536) {
                this.v = Collections.unmodifiableList(this.v);
                this.f73408e &= DNSSDException.UNKNOWN;
            }
            protoBuf$Function.v = this.v;
            if ((this.f73408e & 131072) == 131072) {
                this.w = Collections.unmodifiableList(this.w);
                this.f73408e &= -131073;
            }
            protoBuf$Function.w = this.w;
            protoBuf$Function.d = i3;
            return protoBuf$Function;
        }

        public final void l(ProtoBuf$Function protoBuf$Function) {
            ProtoBuf$Contract protoBuf$Contract;
            ProtoBuf$TypeTable protoBuf$TypeTable;
            ProtoBuf$Type protoBuf$Type;
            ProtoBuf$Type protoBuf$Type2;
            if (protoBuf$Function == ProtoBuf$Function.z) {
                return;
            }
            int i2 = protoBuf$Function.d;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$Function.f73402e;
                this.f73408e = 1 | this.f73408e;
                this.f73409f = i3;
            }
            if ((i2 & 2) == 2) {
                int i4 = protoBuf$Function.f73403f;
                this.f73408e = 2 | this.f73408e;
                this.g = i4;
            }
            if ((i2 & 4) == 4) {
                int i5 = protoBuf$Function.g;
                this.f73408e = 4 | this.f73408e;
                this.f73410h = i5;
            }
            if ((i2 & 8) == 8) {
                ProtoBuf$Type protoBuf$Type3 = protoBuf$Function.f73404h;
                if ((this.f73408e & 8) != 8 || (protoBuf$Type2 = this.f73411i) == ProtoBuf$Type.v) {
                    this.f73411i = protoBuf$Type3;
                } else {
                    ProtoBuf$Type.Builder builderU = ProtoBuf$Type.u(protoBuf$Type2);
                    builderU.l(protoBuf$Type3);
                    this.f73411i = builderU.k();
                }
                this.f73408e |= 8;
            }
            if ((protoBuf$Function.d & 16) == 16) {
                int i6 = protoBuf$Function.f73405i;
                this.f73408e = 16 | this.f73408e;
                this.f73412j = i6;
            }
            if (!protoBuf$Function.f73406j.isEmpty()) {
                if (this.f73413k.isEmpty()) {
                    this.f73413k = protoBuf$Function.f73406j;
                    this.f73408e &= -33;
                } else {
                    if ((this.f73408e & 32) != 32) {
                        this.f73413k = new ArrayList(this.f73413k);
                        this.f73408e |= 32;
                    }
                    this.f73413k.addAll(protoBuf$Function.f73406j);
                }
            }
            if ((protoBuf$Function.d & 32) == 32) {
                ProtoBuf$Type protoBuf$Type4 = protoBuf$Function.f73407k;
                if ((this.f73408e & 64) != 64 || (protoBuf$Type = this.l) == ProtoBuf$Type.v) {
                    this.l = protoBuf$Type4;
                } else {
                    ProtoBuf$Type.Builder builderU2 = ProtoBuf$Type.u(protoBuf$Type);
                    builderU2.l(protoBuf$Type4);
                    this.l = builderU2.k();
                }
                this.f73408e |= 64;
            }
            if ((protoBuf$Function.d & 64) == 64) {
                int i7 = protoBuf$Function.l;
                this.f73408e |= 128;
                this.m = i7;
            }
            if (!protoBuf$Function.m.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$Function.m;
                    this.f73408e &= -257;
                } else {
                    if ((this.f73408e & 256) != 256) {
                        this.n = new ArrayList(this.n);
                        this.f73408e |= 256;
                    }
                    this.n.addAll(protoBuf$Function.m);
                }
            }
            if (!protoBuf$Function.n.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Function.n;
                    this.f73408e &= -513;
                } else {
                    if ((this.f73408e & 512) != 512) {
                        this.o = new ArrayList(this.o);
                        this.f73408e |= 512;
                    }
                    this.o.addAll(protoBuf$Function.n);
                }
            }
            if (!protoBuf$Function.p.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Function.p;
                    this.f73408e &= -1025;
                } else {
                    if ((this.f73408e & 1024) != 1024) {
                        this.p = new ArrayList(this.p);
                        this.f73408e |= 1024;
                    }
                    this.p.addAll(protoBuf$Function.p);
                }
            }
            if (!protoBuf$Function.q.isEmpty()) {
                if (this.q.isEmpty()) {
                    this.q = protoBuf$Function.q;
                    this.f73408e &= -2049;
                } else {
                    if ((this.f73408e & 2048) != 2048) {
                        this.q = new ArrayList(this.q);
                        this.f73408e |= 2048;
                    }
                    this.q.addAll(protoBuf$Function.q);
                }
            }
            if ((protoBuf$Function.d & 128) == 128) {
                ProtoBuf$TypeTable protoBuf$TypeTable2 = protoBuf$Function.r;
                if ((this.f73408e & 4096) != 4096 || (protoBuf$TypeTable = this.r) == ProtoBuf$TypeTable.f73519h) {
                    this.r = protoBuf$TypeTable2;
                } else {
                    ProtoBuf$TypeTable.Builder builderI = ProtoBuf$TypeTable.i(protoBuf$TypeTable);
                    builderI.k(protoBuf$TypeTable2);
                    this.r = builderI.j();
                }
                this.f73408e |= 4096;
            }
            if (!protoBuf$Function.s.isEmpty()) {
                if (this.s.isEmpty()) {
                    this.s = protoBuf$Function.s;
                    this.f73408e &= -8193;
                } else {
                    if ((this.f73408e & 8192) != 8192) {
                        this.s = new ArrayList(this.s);
                        this.f73408e |= 8192;
                    }
                    this.s.addAll(protoBuf$Function.s);
                }
            }
            if ((protoBuf$Function.d & 256) == 256) {
                ProtoBuf$Contract protoBuf$Contract2 = protoBuf$Function.t;
                if ((this.f73408e & 16384) != 16384 || (protoBuf$Contract = this.t) == ProtoBuf$Contract.f73362f) {
                    this.t = protoBuf$Contract2;
                } else {
                    ProtoBuf$Contract.Builder builder = new ProtoBuf$Contract.Builder();
                    builder.k(protoBuf$Contract);
                    builder.k(protoBuf$Contract2);
                    this.t = builder.j();
                }
                this.f73408e |= 16384;
            }
            if (!protoBuf$Function.u.isEmpty()) {
                if (this.u.isEmpty()) {
                    this.u = protoBuf$Function.u;
                    this.f73408e &= -32769;
                } else {
                    if ((this.f73408e & 32768) != 32768) {
                        this.u = new ArrayList(this.u);
                        this.f73408e |= 32768;
                    }
                    this.u.addAll(protoBuf$Function.u);
                }
            }
            if (!protoBuf$Function.v.isEmpty()) {
                if (this.v.isEmpty()) {
                    this.v = protoBuf$Function.v;
                    this.f73408e &= DNSSDException.UNKNOWN;
                } else {
                    if ((this.f73408e & 65536) != 65536) {
                        this.v = new ArrayList(this.v);
                        this.f73408e |= 65536;
                    }
                    this.v.addAll(protoBuf$Function.v);
                }
            }
            if (!protoBuf$Function.w.isEmpty()) {
                if (this.w.isEmpty()) {
                    this.w = protoBuf$Function.w;
                    this.f73408e &= -131073;
                } else {
                    if ((this.f73408e & 131072) != 131072) {
                        this.w = new ArrayList(this.w);
                        this.f73408e |= 131072;
                    }
                    this.w.addAll(protoBuf$Function.w);
                }
            }
            j(protoBuf$Function);
            this.f73731b = this.f73731b.b(protoBuf$Function.f73401c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Function protoBuf$Function = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Function.A).getClass();
                    l(new ProtoBuf$Function(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Function protoBuf$Function2 = (ProtoBuf$Function) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Function = protoBuf$Function2;
                        if (protoBuf$Function != null) {
                            l(protoBuf$Function);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Function != null) {
                    l(protoBuf$Function);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function();
        z = protoBuf$Function;
        protoBuf$Function.s();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x0045  */
    /* JADX WARN: Code duplicated, block: B:135:0x033e  */
    /* JADX WARN: Code duplicated, block: B:138:0x034a  */
    /* JADX WARN: Code duplicated, block: B:141:0x0356  */
    /* JADX WARN: Code duplicated, block: B:144:0x0362  */
    /* JADX WARN: Code duplicated, block: B:147:0x036e  */
    /* JADX WARN: Code duplicated, block: B:150:0x037a  */
    /* JADX WARN: Code duplicated, block: B:153:0x0386  */
    /* JADX WARN: Code duplicated, block: B:156:0x0394  */
    /* JADX WARN: Code duplicated, block: B:159:0x03a2  */
    /* JADX WARN: Multi-variable type inference failed */
    public ProtoBuf$Function(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        int i2;
        ProtoBuf$Contract.Builder builder;
        this.o = -1;
        this.x = (byte) -1;
        this.y = -1;
        s();
        ByteString.Output output = new ByteString.Output();
        boolean z2 = true;
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z3 = false;
        int i3 = 0;
        while (true) {
            int i4 = 32768;
            int i5 = 131072;
            boolean z4 = z2;
            if (z3) {
                if ((i3 & 32) == 32) {
                    this.f73406j = Collections.unmodifiableList(this.f73406j);
                }
                if ((i3 & 2048) == 2048) {
                    this.q = Collections.unmodifiableList(this.q);
                }
                if ((i3 & 256) == 256) {
                    this.m = Collections.unmodifiableList(this.m);
                }
                if ((i3 & 512) == 512) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                if ((i3 & 65536) == 65536) {
                    this.v = Collections.unmodifiableList(this.v);
                }
                if ((i3 & 1024) == 1024) {
                    this.p = Collections.unmodifiableList(this.p);
                }
                if ((i3 & 8192) == 8192) {
                    this.s = Collections.unmodifiableList(this.s);
                }
                if ((i3 & 32768) == 32768) {
                    this.u = Collections.unmodifiableList(this.u);
                }
                if ((i3 & 131072) == 131072) {
                    this.w = Collections.unmodifiableList(this.w);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73401c = output.j();
                }
                p();
                return;
            }
            try {
                int iO = codedInputStream.o();
                Cloneable cloneableU = null;
                switch (iO) {
                    case 0:
                        z3 = z4;
                        z2 = z4;
                        break;
                    case 8:
                        this.d |= 2;
                        this.f73403f = codedInputStream.l();
                        z2 = z4;
                        break;
                    case 16:
                        this.d |= 4;
                        this.g = codedInputStream.l();
                        z2 = z4;
                        break;
                    case 26:
                        if ((this.d & 8) == 8) {
                            ProtoBuf$Type protoBuf$Type = this.f73404h;
                            protoBuf$Type.getClass();
                            cloneableU = ProtoBuf$Type.u(protoBuf$Type);
                        }
                        ProtoBuf$Type.Builder builder2 = cloneableU;
                        ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                        this.f73404h = protoBuf$Type2;
                        if (builder2 != 0) {
                            builder2.l(protoBuf$Type2);
                            this.f73404h = builder2.k();
                        }
                        this.d |= 8;
                        z2 = z4;
                        break;
                    case 34:
                        if ((i3 & 32) != 32) {
                            this.f73406j = new ArrayList();
                            i3 |= 32;
                        }
                        this.f73406j.add(codedInputStream.h(ProtoBuf$TypeParameter.p, extensionRegistryLite));
                        z2 = z4;
                        break;
                    case EACTags.CURRENCY_CODE /* 42 */:
                        if ((this.d & 32) == 32) {
                            ProtoBuf$Type protoBuf$Type3 = this.f73407k;
                            protoBuf$Type3.getClass();
                            cloneableU = ProtoBuf$Type.u(protoBuf$Type3);
                        }
                        ProtoBuf$Type.Builder builder3 = cloneableU;
                        ProtoBuf$Type protoBuf$Type4 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                        this.f73407k = protoBuf$Type4;
                        if (builder3 != 0) {
                            builder3.l(protoBuf$Type4);
                            this.f73407k = builder3.k();
                        }
                        this.d |= 32;
                        z2 = z4;
                        break;
                    case 50:
                        if ((i3 & 2048) != 2048) {
                            this.q = new ArrayList();
                            i3 |= 2048;
                        }
                        this.q.add(codedInputStream.h(ProtoBuf$ValueParameter.p, extensionRegistryLite));
                        z2 = z4;
                        break;
                    case 56:
                        this.d |= 16;
                        this.f73405i = codedInputStream.l();
                        z2 = z4;
                        break;
                    case 64:
                        this.d |= 64;
                        this.l = codedInputStream.l();
                        z2 = z4;
                        break;
                    case 72:
                        this.d |= 1;
                        this.f73402e = codedInputStream.l();
                        z2 = z4;
                        break;
                    case EACTags.HISTORICAL_BYTES /* 82 */:
                        if ((i3 & 256) != 256) {
                            this.m = new ArrayList();
                            i3 |= 256;
                        }
                        this.m.add(codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite));
                        z2 = z4;
                        break;
                    case 88:
                        if ((i3 & 512) != 512) {
                            this.n = new ArrayList();
                            i3 |= 512;
                        }
                        this.n.add(Integer.valueOf(codedInputStream.l()));
                        z2 = z4;
                        break;
                    case Sink.ORIENTATION_90 /* 90 */:
                        int iE = codedInputStream.e(codedInputStream.l());
                        if ((i3 & 512) != 512 && codedInputStream.c() > 0) {
                            this.n = new ArrayList();
                            i3 |= 512;
                        }
                        while (codedInputStream.c() > 0) {
                            this.n.add(Integer.valueOf(codedInputStream.l()));
                        }
                        codedInputStream.d(iE);
                        z2 = z4;
                        break;
                    case 98:
                        if ((i3 & 65536) != 65536) {
                            this.v = new ArrayList();
                            i3 |= 65536;
                        }
                        this.v.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                        z2 = z4;
                        break;
                    case 106:
                        if ((i3 & 1024) != 1024) {
                            this.p = new ArrayList();
                            i3 |= 1024;
                        }
                        this.p.add(codedInputStream.h(ProtoBuf$ValueParameter.p, extensionRegistryLite));
                        z2 = z4;
                        break;
                    case 242:
                        if ((this.d & 128) == 128) {
                            ProtoBuf$TypeTable protoBuf$TypeTable = this.r;
                            protoBuf$TypeTable.getClass();
                            cloneableU = ProtoBuf$TypeTable.i(protoBuf$TypeTable);
                        }
                        ProtoBuf$TypeTable.Builder builder4 = cloneableU;
                        ProtoBuf$TypeTable protoBuf$TypeTable2 = (ProtoBuf$TypeTable) codedInputStream.h(ProtoBuf$TypeTable.f73520i, extensionRegistryLite);
                        this.r = protoBuf$TypeTable2;
                        if (builder4 != 0) {
                            builder4.k(protoBuf$TypeTable2);
                            this.r = builder4.j();
                        }
                        this.d |= 128;
                        z2 = z4;
                        break;
                    case 248:
                        if ((i3 & 8192) != 8192) {
                            this.s = new ArrayList();
                            i3 |= 8192;
                        }
                        this.s.add(Integer.valueOf(codedInputStream.l()));
                        z2 = z4;
                        break;
                    case 250:
                        i5 = 131072;
                        int iE2 = codedInputStream.e(codedInputStream.l());
                        if ((i3 & 8192) != 8192 && codedInputStream.c() > 0) {
                            this.s = new ArrayList();
                            i3 |= 8192;
                        }
                        while (codedInputStream.c() > 0) {
                            i2 = i4;
                            try {
                                try {
                                    this.s.add(Integer.valueOf(codedInputStream.l()));
                                    i4 = i2;
                                } catch (Throwable th) {
                                    th = th;
                                    if ((i3 & 32) == 32) {
                                        this.f73406j = Collections.unmodifiableList(this.f73406j);
                                    }
                                    if ((i3 & 2048) == 2048) {
                                        this.q = Collections.unmodifiableList(this.q);
                                    }
                                    if ((i3 & 256) == 256) {
                                        this.m = Collections.unmodifiableList(this.m);
                                    }
                                    if ((i3 & 512) == 512) {
                                        this.n = Collections.unmodifiableList(this.n);
                                    }
                                    if ((i3 & 65536) == 65536) {
                                        this.v = Collections.unmodifiableList(this.v);
                                    }
                                    if ((i3 & 1024) == 1024) {
                                        this.p = Collections.unmodifiableList(this.p);
                                    }
                                    if ((i3 & 8192) == 8192) {
                                        this.s = Collections.unmodifiableList(this.s);
                                    }
                                    if ((i3 & i2) == i2) {
                                        this.u = Collections.unmodifiableList(this.u);
                                    }
                                    if ((i3 & i5) == i5) {
                                        this.w = Collections.unmodifiableList(this.w);
                                    }
                                    try {
                                        codedOutputStreamJ.k();
                                        break;
                                    } catch (IOException unused2) {
                                    } finally {
                                        this.f73401c = output.j();
                                    }
                                    p();
                                    throw th;
                                }
                            } catch (InvalidProtocolBufferException e2) {
                                e = e2;
                                e.f73743b = this;
                                throw e;
                            } catch (IOException e3) {
                                e = e3;
                                InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e.getMessage());
                                invalidProtocolBufferException.f73743b = this;
                                throw invalidProtocolBufferException;
                            }
                        }
                        codedInputStream.d(iE2);
                        z2 = z4;
                        break;
                    case 258:
                        if ((this.d & 256) == 256) {
                            ProtoBuf$Contract protoBuf$Contract = this.t;
                            protoBuf$Contract.getClass();
                            builder = new ProtoBuf$Contract.Builder();
                            builder.k(protoBuf$Contract);
                        } else {
                            builder = null;
                        }
                        ProtoBuf$Contract protoBuf$Contract2 = (ProtoBuf$Contract) codedInputStream.h(ProtoBuf$Contract.g, extensionRegistryLite);
                        this.t = protoBuf$Contract2;
                        if (builder != null) {
                            builder.k(protoBuf$Contract2);
                            this.t = builder.j();
                        }
                        this.d |= 256;
                        z2 = z4;
                        break;
                    case 266:
                        if ((i3 & 32768) != 32768) {
                            this.u = new ArrayList();
                            i3 |= 32768;
                        }
                        this.u.add(codedInputStream.h(ProtoBuf$CompilerPluginData.f73343i, extensionRegistryLite));
                        z2 = z4;
                        break;
                    case 274:
                        if ((i3 & 131072) != 131072) {
                            this.w = new ArrayList();
                            i3 |= 131072;
                        }
                        try {
                            try {
                                this.w.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                                z2 = z4;
                            } catch (InvalidProtocolBufferException e4) {
                                e = e4;
                                e.f73743b = this;
                                throw e;
                            } catch (IOException e5) {
                                e = e5;
                                InvalidProtocolBufferException invalidProtocolBufferException2 = new InvalidProtocolBufferException(e.getMessage());
                                invalidProtocolBufferException2.f73743b = this;
                                throw invalidProtocolBufferException2;
                            } catch (Throwable th2) {
                                th = th2;
                                i2 = 32768;
                                if ((i3 & 32) == 32) {
                                    this.f73406j = Collections.unmodifiableList(this.f73406j);
                                }
                                if ((i3 & 2048) == 2048) {
                                    this.q = Collections.unmodifiableList(this.q);
                                }
                                if ((i3 & 256) == 256) {
                                    this.m = Collections.unmodifiableList(this.m);
                                }
                                if ((i3 & 512) == 512) {
                                    this.n = Collections.unmodifiableList(this.n);
                                }
                                if ((i3 & 65536) == 65536) {
                                    this.v = Collections.unmodifiableList(this.v);
                                }
                                if ((i3 & 1024) == 1024) {
                                    this.p = Collections.unmodifiableList(this.p);
                                }
                                if ((i3 & 8192) == 8192) {
                                    this.s = Collections.unmodifiableList(this.s);
                                }
                                if ((i3 & i2) == i2) {
                                    this.u = Collections.unmodifiableList(this.u);
                                }
                                if ((i3 & i5) == i5) {
                                    this.w = Collections.unmodifiableList(this.w);
                                }
                                codedOutputStreamJ.k();
                                p();
                                throw th;
                            }
                        } catch (InvalidProtocolBufferException e6) {
                            e = e6;
                        } catch (IOException e7) {
                            e = e7;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        break;
                    default:
                        if (!q(codedInputStream, codedOutputStreamJ, extensionRegistryLite, iO)) {
                            z3 = z4;
                        }
                        z2 = z4;
                        break;
                }
            } catch (InvalidProtocolBufferException e8) {
                e = e8;
            } catch (IOException e9) {
                e = e9;
            } catch (Throwable th4) {
                th = th4;
                i2 = 32768;
                i5 = 131072;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.x;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        int i2 = this.d;
        if ((i2 & 4) != 4) {
            this.x = (byte) 0;
            return false;
        }
        if ((i2 & 8) == 8 && !this.f73404h.a()) {
            this.x = (byte) 0;
            return false;
        }
        for (int i3 = 0; i3 < this.f73406j.size(); i3++) {
            if (!((ProtoBuf$TypeParameter) this.f73406j.get(i3)).a()) {
                this.x = (byte) 0;
                return false;
            }
        }
        if ((this.d & 32) == 32 && !this.f73407k.a()) {
            this.x = (byte) 0;
            return false;
        }
        for (int i4 = 0; i4 < this.m.size(); i4++) {
            if (!((ProtoBuf$Type) this.m.get(i4)).a()) {
                this.x = (byte) 0;
                return false;
            }
        }
        for (int i5 = 0; i5 < this.p.size(); i5++) {
            if (!((ProtoBuf$ValueParameter) this.p.get(i5)).a()) {
                this.x = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < this.q.size(); i6++) {
            if (!((ProtoBuf$ValueParameter) this.q.get(i6)).a()) {
                this.x = (byte) 0;
                return false;
            }
        }
        if ((this.d & 128) == 128 && !this.r.a()) {
            this.x = (byte) 0;
            return false;
        }
        if ((this.d & 256) == 256 && !this.t.a()) {
            this.x = (byte) 0;
            return false;
        }
        for (int i7 = 0; i7 < this.u.size(); i7++) {
            if (!((ProtoBuf$CompilerPluginData) this.u.get(i7)).a()) {
                this.x = (byte) 0;
                return false;
            }
        }
        for (int i8 = 0; i8 < this.v.size(); i8++) {
            if (!((ProtoBuf$Annotation) this.v.get(i8)).a()) {
                this.x = (byte) 0;
                return false;
            }
        }
        for (int i9 = 0; i9 < this.w.size(); i9++) {
            if (!((ProtoBuf$Annotation) this.w.get(i9)).a()) {
                this.x = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.x = (byte) 1;
            return true;
        }
        this.x = (byte) 0;
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
        int i2 = this.y;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 2) == 2 ? CodedOutputStream.b(1, this.f73403f) : 0;
        if ((this.d & 4) == 4) {
            iB += CodedOutputStream.b(2, this.g);
        }
        if ((this.d & 8) == 8) {
            iB += CodedOutputStream.d(3, this.f73404h);
        }
        for (int i3 = 0; i3 < this.f73406j.size(); i3++) {
            iB += CodedOutputStream.d(4, (MessageLite) this.f73406j.get(i3));
        }
        if ((this.d & 32) == 32) {
            iB += CodedOutputStream.d(5, this.f73407k);
        }
        for (int i4 = 0; i4 < this.q.size(); i4++) {
            iB += CodedOutputStream.d(6, (MessageLite) this.q.get(i4));
        }
        if ((this.d & 16) == 16) {
            iB += CodedOutputStream.b(7, this.f73405i);
        }
        if ((this.d & 64) == 64) {
            iB += CodedOutputStream.b(8, this.l);
        }
        if ((this.d & 1) == 1) {
            iB += CodedOutputStream.b(9, this.f73402e);
        }
        for (int i5 = 0; i5 < this.m.size(); i5++) {
            iB += CodedOutputStream.d(10, (MessageLite) this.m.get(i5));
        }
        int i6 = 0;
        int iC = 0;
        while (true) {
            int size = this.n.size();
            list = this.n;
            if (i6 >= size) {
                break;
            }
            iC += CodedOutputStream.c(((Integer) list.get(i6)).intValue());
            i6++;
        }
        int iD = iB + iC;
        if (!list.isEmpty()) {
            iD = iD + 1 + CodedOutputStream.c(iC);
        }
        this.o = iC;
        for (int i7 = 0; i7 < this.v.size(); i7++) {
            iD += CodedOutputStream.d(12, (MessageLite) this.v.get(i7));
        }
        for (int i8 = 0; i8 < this.p.size(); i8++) {
            iD += CodedOutputStream.d(13, (MessageLite) this.p.get(i8));
        }
        if ((this.d & 128) == 128) {
            iD += CodedOutputStream.d(30, this.r);
        }
        int i9 = 0;
        int iC2 = 0;
        while (true) {
            int size2 = this.s.size();
            list2 = this.s;
            if (i9 >= size2) {
                break;
            }
            iC2 += CodedOutputStream.c(((Integer) list2.get(i9)).intValue());
            i9++;
        }
        int size3 = (list2.size() * 2) + iD + iC2;
        if ((this.d & 256) == 256) {
            size3 += CodedOutputStream.d(32, this.t);
        }
        for (int i10 = 0; i10 < this.u.size(); i10++) {
            size3 += CodedOutputStream.d(33, (MessageLite) this.u.get(i10));
        }
        for (int i11 = 0; i11 < this.w.size(); i11++) {
            size3 += CodedOutputStream.d(34, (MessageLite) this.w.get(i11));
        }
        int size4 = this.f73401c.size() + j() + size3;
        this.y = size4;
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
            codedOutputStream.m(1, this.f73403f);
        }
        if ((this.d & 4) == 4) {
            codedOutputStream.m(2, this.g);
        }
        if ((this.d & 8) == 8) {
            codedOutputStream.o(3, this.f73404h);
        }
        for (int i2 = 0; i2 < this.f73406j.size(); i2++) {
            codedOutputStream.o(4, (MessageLite) this.f73406j.get(i2));
        }
        if ((this.d & 32) == 32) {
            codedOutputStream.o(5, this.f73407k);
        }
        for (int i3 = 0; i3 < this.q.size(); i3++) {
            codedOutputStream.o(6, (MessageLite) this.q.get(i3));
        }
        if ((this.d & 16) == 16) {
            codedOutputStream.m(7, this.f73405i);
        }
        if ((this.d & 64) == 64) {
            codedOutputStream.m(8, this.l);
        }
        if ((this.d & 1) == 1) {
            codedOutputStream.m(9, this.f73402e);
        }
        for (int i4 = 0; i4 < this.m.size(); i4++) {
            codedOutputStream.o(10, (MessageLite) this.m.get(i4));
        }
        if (this.n.size() > 0) {
            codedOutputStream.v(90);
            codedOutputStream.v(this.o);
        }
        for (int i5 = 0; i5 < this.n.size(); i5++) {
            codedOutputStream.n(((Integer) this.n.get(i5)).intValue());
        }
        for (int i6 = 0; i6 < this.v.size(); i6++) {
            codedOutputStream.o(12, (MessageLite) this.v.get(i6));
        }
        for (int i7 = 0; i7 < this.p.size(); i7++) {
            codedOutputStream.o(13, (MessageLite) this.p.get(i7));
        }
        if ((this.d & 128) == 128) {
            codedOutputStream.o(30, this.r);
        }
        for (int i8 = 0; i8 < this.s.size(); i8++) {
            codedOutputStream.m(31, ((Integer) this.s.get(i8)).intValue());
        }
        if ((this.d & 256) == 256) {
            codedOutputStream.o(32, this.t);
        }
        for (int i9 = 0; i9 < this.u.size(); i9++) {
            codedOutputStream.o(33, (MessageLite) this.u.get(i9));
        }
        for (int i10 = 0; i10 < this.w.size(); i10++) {
            codedOutputStream.o(34, (MessageLite) this.w.get(i10));
        }
        extensionWriter.a(19000, codedOutputStream);
        codedOutputStream.r(this.f73401c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return z;
    }

    public final void s() {
        this.f73402e = 6;
        this.f73403f = 6;
        this.g = 0;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
        this.f73404h = protoBuf$Type;
        this.f73405i = 0;
        List list = Collections.EMPTY_LIST;
        this.f73406j = list;
        this.f73407k = protoBuf$Type;
        this.l = 0;
        this.m = list;
        this.n = list;
        this.p = list;
        this.q = list;
        this.r = ProtoBuf$TypeTable.f73519h;
        this.s = list;
        this.t = ProtoBuf$Contract.f73362f;
        this.u = list;
        this.v = list;
        this.w = list;
    }

    public ProtoBuf$Function() {
        this.o = -1;
        this.x = (byte) -1;
        this.y = -1;
        this.f73401c = ByteString.f73706b;
    }

    public ProtoBuf$Function(Builder builder) {
        super(builder);
        this.o = -1;
        this.x = (byte) -1;
        this.y = -1;
        this.f73401c = builder.f73731b;
    }
}

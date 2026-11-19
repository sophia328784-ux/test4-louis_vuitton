package kotlin.reflect.jvm.internal.impl.metadata;

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
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$Type extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Type> implements ProtoBuf$TypeOrBuilder {
    public static final ProtoBuf$Type v;
    public static final Parser w = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73470c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f73471e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f73472f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ProtoBuf$Type f73473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f73474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f73475j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f73476k;
    public int l;
    public int m;
    public ProtoBuf$Type n;
    public int o;
    public ProtoBuf$Type p;
    public int q;
    public int r;
    public List s;
    public byte t;
    public int u;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Type> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Type(codedInputStream, extensionRegistryLite);
        }
    }

    public interface ArgumentOrBuilder extends MessageLiteOrBuilder {
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Type, Builder> implements ProtoBuf$TypeOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73487e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public List f73488f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f73489h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ProtoBuf$Type f73490i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f73491j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f73492k;
        public int l;
        public int m;
        public int n;
        public ProtoBuf$Type o;
        public int p;
        public ProtoBuf$Type q;
        public int r;
        public int s;
        public List t;

        public Builder() {
            List list = Collections.EMPTY_LIST;
            this.f73488f = list;
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
            this.f73490i = protoBuf$Type;
            this.o = protoBuf$Type;
            this.q = protoBuf$Type;
            this.t = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Type protoBuf$TypeK = k();
            if (protoBuf$TypeK.a()) {
                return protoBuf$TypeK;
            }
            throw new UninitializedMessageException(protoBuf$TypeK);
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
            l((ProtoBuf$Type) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Type k() {
            ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(this);
            int i2 = this.f73487e;
            if ((i2 & 1) == 1) {
                this.f73488f = Collections.unmodifiableList(this.f73488f);
                this.f73487e &= -2;
            }
            protoBuf$Type.f73471e = this.f73488f;
            int i3 = (i2 & 2) != 2 ? 0 : 1;
            protoBuf$Type.f73472f = this.g;
            if ((i2 & 4) == 4) {
                i3 |= 2;
            }
            protoBuf$Type.g = this.f73489h;
            if ((i2 & 8) == 8) {
                i3 |= 4;
            }
            protoBuf$Type.f73473h = this.f73490i;
            if ((i2 & 16) == 16) {
                i3 |= 8;
            }
            protoBuf$Type.f73474i = this.f73491j;
            if ((i2 & 32) == 32) {
                i3 |= 16;
            }
            protoBuf$Type.f73475j = this.f73492k;
            if ((i2 & 64) == 64) {
                i3 |= 32;
            }
            protoBuf$Type.f73476k = this.l;
            if ((i2 & 128) == 128) {
                i3 |= 64;
            }
            protoBuf$Type.l = this.m;
            if ((i2 & 256) == 256) {
                i3 |= 128;
            }
            protoBuf$Type.m = this.n;
            if ((i2 & 512) == 512) {
                i3 |= 256;
            }
            protoBuf$Type.n = this.o;
            if ((i2 & 1024) == 1024) {
                i3 |= 512;
            }
            protoBuf$Type.o = this.p;
            if ((i2 & 2048) == 2048) {
                i3 |= 1024;
            }
            protoBuf$Type.p = this.q;
            if ((i2 & 4096) == 4096) {
                i3 |= 2048;
            }
            protoBuf$Type.q = this.r;
            if ((i2 & 8192) == 8192) {
                i3 |= 4096;
            }
            protoBuf$Type.r = this.s;
            if ((this.f73487e & 16384) == 16384) {
                this.t = Collections.unmodifiableList(this.t);
                this.f73487e &= -16385;
            }
            protoBuf$Type.s = this.t;
            protoBuf$Type.d = i3;
            return protoBuf$Type;
        }

        public final Builder l(ProtoBuf$Type protoBuf$Type) {
            ProtoBuf$Type protoBuf$Type2;
            ProtoBuf$Type protoBuf$Type3;
            ProtoBuf$Type protoBuf$Type4;
            ProtoBuf$Type protoBuf$Type5 = ProtoBuf$Type.v;
            if (protoBuf$Type == protoBuf$Type5) {
                return this;
            }
            if (!protoBuf$Type.f73471e.isEmpty()) {
                if (this.f73488f.isEmpty()) {
                    this.f73488f = protoBuf$Type.f73471e;
                    this.f73487e &= -2;
                } else {
                    if ((this.f73487e & 1) != 1) {
                        this.f73488f = new ArrayList(this.f73488f);
                        this.f73487e |= 1;
                    }
                    this.f73488f.addAll(protoBuf$Type.f73471e);
                }
            }
            int i2 = protoBuf$Type.d;
            if ((i2 & 1) == 1) {
                boolean z = protoBuf$Type.f73472f;
                this.f73487e |= 2;
                this.g = z;
            }
            if ((i2 & 2) == 2) {
                int i3 = protoBuf$Type.g;
                this.f73487e |= 4;
                this.f73489h = i3;
            }
            if ((i2 & 4) == 4) {
                ProtoBuf$Type protoBuf$Type6 = protoBuf$Type.f73473h;
                if ((this.f73487e & 8) != 8 || (protoBuf$Type4 = this.f73490i) == protoBuf$Type5) {
                    this.f73490i = protoBuf$Type6;
                } else {
                    Builder builderU = ProtoBuf$Type.u(protoBuf$Type4);
                    builderU.l(protoBuf$Type6);
                    this.f73490i = builderU.k();
                }
                this.f73487e |= 8;
            }
            if ((protoBuf$Type.d & 8) == 8) {
                int i4 = protoBuf$Type.f73474i;
                this.f73487e |= 16;
                this.f73491j = i4;
            }
            if (protoBuf$Type.s()) {
                int i5 = protoBuf$Type.f73475j;
                this.f73487e |= 32;
                this.f73492k = i5;
            }
            int i6 = protoBuf$Type.d;
            if ((i6 & 32) == 32) {
                int i7 = protoBuf$Type.f73476k;
                this.f73487e |= 64;
                this.l = i7;
            }
            if ((i6 & 64) == 64) {
                int i8 = protoBuf$Type.l;
                this.f73487e |= 128;
                this.m = i8;
            }
            if ((i6 & 128) == 128) {
                int i9 = protoBuf$Type.m;
                this.f73487e |= 256;
                this.n = i9;
            }
            if ((i6 & 256) == 256) {
                ProtoBuf$Type protoBuf$Type7 = protoBuf$Type.n;
                if ((this.f73487e & 512) != 512 || (protoBuf$Type3 = this.o) == protoBuf$Type5) {
                    this.o = protoBuf$Type7;
                } else {
                    Builder builderU2 = ProtoBuf$Type.u(protoBuf$Type3);
                    builderU2.l(protoBuf$Type7);
                    this.o = builderU2.k();
                }
                this.f73487e |= 512;
            }
            int i10 = protoBuf$Type.d;
            if ((i10 & 512) == 512) {
                int i11 = protoBuf$Type.o;
                this.f73487e |= 1024;
                this.p = i11;
            }
            if ((i10 & 1024) == 1024) {
                ProtoBuf$Type protoBuf$Type8 = protoBuf$Type.p;
                if ((this.f73487e & 2048) != 2048 || (protoBuf$Type2 = this.q) == protoBuf$Type5) {
                    this.q = protoBuf$Type8;
                } else {
                    Builder builderU3 = ProtoBuf$Type.u(protoBuf$Type2);
                    builderU3.l(protoBuf$Type8);
                    this.q = builderU3.k();
                }
                this.f73487e |= 2048;
            }
            int i12 = protoBuf$Type.d;
            if ((i12 & 2048) == 2048) {
                int i13 = protoBuf$Type.q;
                this.f73487e |= 4096;
                this.r = i13;
            }
            if ((i12 & 4096) == 4096) {
                int i14 = protoBuf$Type.r;
                this.f73487e |= 8192;
                this.s = i14;
            }
            if (!protoBuf$Type.s.isEmpty()) {
                if (this.t.isEmpty()) {
                    this.t = protoBuf$Type.s;
                    this.f73487e &= -16385;
                } else {
                    if ((this.f73487e & 16384) != 16384) {
                        this.t = new ArrayList(this.t);
                        this.f73487e |= 16384;
                    }
                    this.t.addAll(protoBuf$Type.s);
                }
            }
            j(protoBuf$Type);
            this.f73731b = this.f73731b.b(protoBuf$Type.f73470c);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Type protoBuf$Type = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Type.w).getClass();
                    l(new ProtoBuf$Type(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Type = protoBuf$Type2;
                        if (protoBuf$Type != null) {
                            l(protoBuf$Type);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Type != null) {
                    l(protoBuf$Type);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type();
        v = protoBuf$Type;
        protoBuf$Type.t();
    }

    public ProtoBuf$Type(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.t = (byte) -1;
        this.u = -1;
        t();
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z = false;
        int i2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    Parser parser = w;
                    Builder builderU = null;
                    switch (iO) {
                        case 0:
                            break;
                        case 8:
                            this.d |= 4096;
                            this.r = codedInputStream.l();
                            continue;
                        case 18:
                            if ((i2 & 1) != 1) {
                                this.f73471e = new ArrayList();
                                i2 |= 1;
                            }
                            this.f73471e.add(codedInputStream.h(Argument.f73478j, extensionRegistryLite));
                            continue;
                        case 24:
                            this.d |= 1;
                            this.f73472f = codedInputStream.m() != 0;
                            continue;
                        case 32:
                            this.d |= 2;
                            this.g = codedInputStream.l();
                            continue;
                        case EACTags.CURRENCY_CODE /* 42 */:
                            if ((this.d & 4) == 4) {
                                ProtoBuf$Type protoBuf$Type = this.f73473h;
                                protoBuf$Type.getClass();
                                builderU = u(protoBuf$Type);
                            }
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.h(parser, extensionRegistryLite);
                            this.f73473h = protoBuf$Type2;
                            if (builderU != null) {
                                builderU.l(protoBuf$Type2);
                                this.f73473h = builderU.k();
                            }
                            this.d |= 4;
                            continue;
                        case 48:
                            this.d |= 16;
                            this.f73475j = codedInputStream.l();
                            continue;
                        case 56:
                            this.d |= 32;
                            this.f73476k = codedInputStream.l();
                            continue;
                        case 64:
                            this.d |= 8;
                            this.f73474i = codedInputStream.l();
                            continue;
                        case 72:
                            this.d |= 64;
                            this.l = codedInputStream.l();
                            continue;
                        case EACTags.HISTORICAL_BYTES /* 82 */:
                            if ((this.d & 256) == 256) {
                                ProtoBuf$Type protoBuf$Type3 = this.n;
                                protoBuf$Type3.getClass();
                                builderU = u(protoBuf$Type3);
                            }
                            ProtoBuf$Type protoBuf$Type4 = (ProtoBuf$Type) codedInputStream.h(parser, extensionRegistryLite);
                            this.n = protoBuf$Type4;
                            if (builderU != null) {
                                builderU.l(protoBuf$Type4);
                                this.n = builderU.k();
                            }
                            this.d |= 256;
                            continue;
                        case 88:
                            this.d |= 512;
                            this.o = codedInputStream.l();
                            continue;
                        case 96:
                            this.d |= 128;
                            this.m = codedInputStream.l();
                            continue;
                        case 106:
                            if ((this.d & 1024) == 1024) {
                                ProtoBuf$Type protoBuf$Type5 = this.p;
                                protoBuf$Type5.getClass();
                                builderU = u(protoBuf$Type5);
                            }
                            ProtoBuf$Type protoBuf$Type6 = (ProtoBuf$Type) codedInputStream.h(parser, extensionRegistryLite);
                            this.p = protoBuf$Type6;
                            if (builderU != null) {
                                builderU.l(protoBuf$Type6);
                                this.p = builderU.k();
                            }
                            this.d |= 1024;
                            continue;
                        case 112:
                            this.d |= 2048;
                            this.q = codedInputStream.l();
                            continue;
                        case 802:
                            if ((i2 & 16384) != 16384) {
                                this.s = new ArrayList();
                                i2 |= 16384;
                            }
                            this.s.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            continue;
                        default:
                            if (!q(codedInputStream, codedOutputStreamJ, extensionRegistryLite, iO)) {
                                break;
                            }
                            break;
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e2) {
                    e2.f73743b = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f73743b = this;
                    throw invalidProtocolBufferException;
                }
            } catch (Throwable th) {
                if ((i2 & 1) == 1) {
                    this.f73471e = Collections.unmodifiableList(this.f73471e);
                }
                if ((i2 & 16384) == 16384) {
                    this.s = Collections.unmodifiableList(this.s);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73470c = output.j();
                }
                p();
                throw th;
            }
        }
        if ((i2 & 1) == 1) {
            this.f73471e = Collections.unmodifiableList(this.f73471e);
        }
        if ((i2 & 16384) == 16384) {
            this.s = Collections.unmodifiableList(this.s);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73470c = output.j();
        }
        p();
    }

    public static Builder u(ProtoBuf$Type protoBuf$Type) {
        Builder builder = new Builder();
        builder.l(protoBuf$Type);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.t;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i2 = 0; i2 < this.f73471e.size(); i2++) {
            if (!((Argument) this.f73471e.get(i2)).a()) {
                this.t = (byte) 0;
                return false;
            }
        }
        if ((this.d & 4) == 4 && !this.f73473h.a()) {
            this.t = (byte) 0;
            return false;
        }
        if ((this.d & 256) == 256 && !this.n.a()) {
            this.t = (byte) 0;
            return false;
        }
        if ((this.d & 1024) == 1024 && !this.p.a()) {
            this.t = (byte) 0;
            return false;
        }
        for (int i3 = 0; i3 < this.s.size(); i3++) {
            if (!((ProtoBuf$Annotation) this.s.get(i3)).a()) {
                this.t = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.t = (byte) 1;
            return true;
        }
        this.t = (byte) 0;
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final int c() {
        int i2 = this.u;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 4096) == 4096 ? CodedOutputStream.b(1, this.r) : 0;
        for (int i3 = 0; i3 < this.f73471e.size(); i3++) {
            iB += CodedOutputStream.d(2, (MessageLite) this.f73471e.get(i3));
        }
        if ((this.d & 1) == 1) {
            iB += CodedOutputStream.h(3) + 1;
        }
        if ((this.d & 2) == 2) {
            iB += CodedOutputStream.b(4, this.g);
        }
        if ((this.d & 4) == 4) {
            iB += CodedOutputStream.d(5, this.f73473h);
        }
        if ((this.d & 16) == 16) {
            iB += CodedOutputStream.b(6, this.f73475j);
        }
        if ((this.d & 32) == 32) {
            iB += CodedOutputStream.b(7, this.f73476k);
        }
        if ((this.d & 8) == 8) {
            iB += CodedOutputStream.b(8, this.f73474i);
        }
        if ((this.d & 64) == 64) {
            iB += CodedOutputStream.b(9, this.l);
        }
        if ((this.d & 256) == 256) {
            iB += CodedOutputStream.d(10, this.n);
        }
        if ((this.d & 512) == 512) {
            iB += CodedOutputStream.b(11, this.o);
        }
        if ((this.d & 128) == 128) {
            iB += CodedOutputStream.b(12, this.m);
        }
        if ((this.d & 1024) == 1024) {
            iB += CodedOutputStream.d(13, this.p);
        }
        if ((this.d & 2048) == 2048) {
            iB += CodedOutputStream.b(14, this.q);
        }
        for (int i4 = 0; i4 < this.s.size(); i4++) {
            iB += CodedOutputStream.d(100, (MessageLite) this.s.get(i4));
        }
        int size = this.f73470c.size() + j() + iB;
        this.u = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) throws IOException {
        c();
        GeneratedMessageLite.ExtendableMessage.ExtensionWriter extensionWriter = new GeneratedMessageLite.ExtendableMessage.ExtensionWriter(this);
        if ((this.d & 4096) == 4096) {
            codedOutputStream.m(1, this.r);
        }
        for (int i2 = 0; i2 < this.f73471e.size(); i2++) {
            codedOutputStream.o(2, (MessageLite) this.f73471e.get(i2));
        }
        if ((this.d & 1) == 1) {
            boolean z = this.f73472f;
            codedOutputStream.x(3, 0);
            codedOutputStream.q(z ? 1 : 0);
        }
        if ((this.d & 2) == 2) {
            codedOutputStream.m(4, this.g);
        }
        if ((this.d & 4) == 4) {
            codedOutputStream.o(5, this.f73473h);
        }
        if ((this.d & 16) == 16) {
            codedOutputStream.m(6, this.f73475j);
        }
        if ((this.d & 32) == 32) {
            codedOutputStream.m(7, this.f73476k);
        }
        if ((this.d & 8) == 8) {
            codedOutputStream.m(8, this.f73474i);
        }
        if ((this.d & 64) == 64) {
            codedOutputStream.m(9, this.l);
        }
        if ((this.d & 256) == 256) {
            codedOutputStream.o(10, this.n);
        }
        if ((this.d & 512) == 512) {
            codedOutputStream.m(11, this.o);
        }
        if ((this.d & 128) == 128) {
            codedOutputStream.m(12, this.m);
        }
        if ((this.d & 1024) == 1024) {
            codedOutputStream.o(13, this.p);
        }
        if ((this.d & 2048) == 2048) {
            codedOutputStream.m(14, this.q);
        }
        for (int i3 = 0; i3 < this.s.size(); i3++) {
            codedOutputStream.o(100, (MessageLite) this.s.get(i3));
        }
        extensionWriter.a(200, codedOutputStream);
        codedOutputStream.r(this.f73470c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return v;
    }

    public final boolean s() {
        return (this.d & 16) == 16;
    }

    public final void t() {
        List list = Collections.EMPTY_LIST;
        this.f73471e = list;
        this.f73472f = false;
        this.g = 0;
        ProtoBuf$Type protoBuf$Type = v;
        this.f73473h = protoBuf$Type;
        this.f73474i = 0;
        this.f73475j = 0;
        this.f73476k = 0;
        this.l = 0;
        this.m = 0;
        this.n = protoBuf$Type;
        this.o = 0;
        this.p = protoBuf$Type;
        this.q = 0;
        this.r = 0;
        this.s = list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final Builder b() {
        return u(this);
    }

    public static final class Argument extends GeneratedMessageLite implements ArgumentOrBuilder {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Argument f73477i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Parser f73478j = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteString f73479b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73480c;
        public Projection d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ProtoBuf$Type f73481e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73482f;
        public byte g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f73483h;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument$1, reason: invalid class name */
        public static class AnonymousClass1 extends AbstractParser<Argument> {
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
            public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new Argument(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class Builder extends GeneratedMessageLite.Builder<Argument, Builder> implements ArgumentOrBuilder {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73484c;
            public Projection d = Projection.INV;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public ProtoBuf$Type f73485e = ProtoBuf$Type.v;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f73486f;

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            public final MessageLite build() {
                Argument argumentJ = j();
                if (argumentJ.a()) {
                    return argumentJ;
                }
                throw new UninitializedMessageException(argumentJ);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
            public final Object clone() {
                Builder builder = new Builder();
                builder.k(j());
                return builder;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: g */
            public final AbstractMessageLite.Builder clone() {
                Builder builder = new Builder();
                builder.k(j());
                return builder;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: h */
            public final /* bridge */ /* synthetic */ AbstractMessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                l(codedInputStream, extensionRegistryLite);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder i(GeneratedMessageLite generatedMessageLite) {
                k((Argument) generatedMessageLite);
                return this;
            }

            public final Argument j() {
                Argument argument = new Argument(this);
                int i2 = this.f73484c;
                int i3 = (i2 & 1) != 1 ? 0 : 1;
                argument.d = this.d;
                if ((i2 & 2) == 2) {
                    i3 |= 2;
                }
                argument.f73481e = this.f73485e;
                if ((i2 & 4) == 4) {
                    i3 |= 4;
                }
                argument.f73482f = this.f73486f;
                argument.f73480c = i3;
                return argument;
            }

            public final void k(Argument argument) {
                ProtoBuf$Type protoBuf$Type;
                if (argument == Argument.f73477i) {
                    return;
                }
                if ((argument.f73480c & 1) == 1) {
                    Projection projection = argument.d;
                    projection.getClass();
                    this.f73484c = 1 | this.f73484c;
                    this.d = projection;
                }
                if ((argument.f73480c & 2) == 2) {
                    ProtoBuf$Type protoBuf$Type2 = argument.f73481e;
                    if ((this.f73484c & 2) != 2 || (protoBuf$Type = this.f73485e) == ProtoBuf$Type.v) {
                        this.f73485e = protoBuf$Type2;
                    } else {
                        Builder builderU = ProtoBuf$Type.u(protoBuf$Type);
                        builderU.l(protoBuf$Type2);
                        this.f73485e = builderU.k();
                    }
                    this.f73484c |= 2;
                }
                if ((argument.f73480c & 4) == 4) {
                    int i2 = argument.f73482f;
                    this.f73484c = 4 | this.f73484c;
                    this.f73486f = i2;
                }
                this.f73731b = this.f73731b.b(argument.f73479b);
            }

            /* JADX WARN: Code duplicated, block: B:14:0x001d  */
            public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                Argument argument = null;
                try {
                    try {
                        ((AnonymousClass1) Argument.f73478j).getClass();
                        k(new Argument(codedInputStream, extensionRegistryLite));
                    } catch (InvalidProtocolBufferException e2) {
                        Argument argument2 = (Argument) e2.f73743b;
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            argument = argument2;
                            if (argument != null) {
                                k(argument);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (argument != null) {
                        k(argument);
                    }
                    throw th;
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                l(codedInputStream, extensionRegistryLite);
                return this;
            }
        }

        public enum Projection implements Internal.EnumLite {
            IN(0),
            OUT(1),
            INV(2),
            STAR(3);

            private static Internal.EnumLiteMap<Projection> internalValueMap = new AnonymousClass1();
            private final int value;

            /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument$Projection$1, reason: invalid class name */
            public static class AnonymousClass1 implements Internal.EnumLiteMap<Projection> {
            }

            Projection(int i2) {
                this.value = i2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
            public final int m() {
                return this.value;
            }
        }

        static {
            Argument argument = new Argument();
            f73477i = argument;
            argument.d = Projection.INV;
            argument.f73481e = ProtoBuf$Type.v;
            argument.f73482f = 0;
        }

        public Argument(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this.g = (byte) -1;
            this.f73483h = -1;
            this.d = Projection.INV;
            this.f73481e = ProtoBuf$Type.v;
            boolean z = false;
            this.f73482f = 0;
            ByteString.Output output = new ByteString.Output();
            CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
            while (!z) {
                try {
                    try {
                        int iO = codedInputStream.o();
                        if (iO != 0) {
                            Builder builderU = null;
                            Projection projection = null;
                            if (iO == 8) {
                                int iL = codedInputStream.l();
                                if (iL == 0) {
                                    projection = Projection.IN;
                                } else if (iL == 1) {
                                    projection = Projection.OUT;
                                } else if (iL == 2) {
                                    projection = Projection.INV;
                                } else if (iL == 3) {
                                    projection = Projection.STAR;
                                }
                                if (projection == null) {
                                    codedOutputStreamJ.v(iO);
                                    codedOutputStreamJ.v(iL);
                                } else {
                                    this.f73480c |= 1;
                                    this.d = projection;
                                }
                            } else if (iO == 18) {
                                if ((this.f73480c & 2) == 2) {
                                    ProtoBuf$Type protoBuf$Type = this.f73481e;
                                    protoBuf$Type.getClass();
                                    builderU = ProtoBuf$Type.u(protoBuf$Type);
                                }
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                                this.f73481e = protoBuf$Type2;
                                if (builderU != null) {
                                    builderU.l(protoBuf$Type2);
                                    this.f73481e = builderU.k();
                                }
                                this.f73480c |= 2;
                            } else if (iO == 24) {
                                this.f73480c |= 4;
                                this.f73482f = codedInputStream.l();
                            } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        try {
                            codedOutputStreamJ.k();
                        } catch (IOException unused) {
                        } finally {
                            this.f73479b = output.j();
                        }
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f73743b = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f73743b = this;
                    throw invalidProtocolBufferException;
                }
            }
            try {
                codedOutputStreamJ.k();
            } catch (IOException unused2) {
            } finally {
                this.f73479b = output.j();
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
        public final boolean a() {
            byte b2 = this.g;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if ((this.f73480c & 2) != 2 || this.f73481e.a()) {
                this.g = (byte) 1;
                return true;
            }
            this.g = (byte) 0;
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final MessageLite.Builder b() {
            Builder builder = new Builder();
            builder.k(this);
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final int c() {
            int i2 = this.f73483h;
            if (i2 != -1) {
                return i2;
            }
            int iA = (this.f73480c & 1) == 1 ? CodedOutputStream.a(1, this.d.m()) : 0;
            if ((this.f73480c & 2) == 2) {
                iA += CodedOutputStream.d(2, this.f73481e);
            }
            if ((this.f73480c & 4) == 4) {
                iA += CodedOutputStream.b(3, this.f73482f);
            }
            int size = this.f73479b.size() + iA;
            this.f73483h = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final MessageLite.Builder d() {
            return new Builder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final void e(CodedOutputStream codedOutputStream) {
            c();
            if ((this.f73480c & 1) == 1) {
                codedOutputStream.l(1, this.d.m());
            }
            if ((this.f73480c & 2) == 2) {
                codedOutputStream.o(2, this.f73481e);
            }
            if ((this.f73480c & 4) == 4) {
                codedOutputStream.m(3, this.f73482f);
            }
            codedOutputStream.r(this.f73479b);
        }

        public Argument() {
            this.g = (byte) -1;
            this.f73483h = -1;
            this.f73479b = ByteString.f73706b;
        }

        public Argument(Builder builder) {
            this.g = (byte) -1;
            this.f73483h = -1;
            this.f73479b = builder.f73731b;
        }
    }

    public ProtoBuf$Type() {
        this.t = (byte) -1;
        this.u = -1;
        this.f73470c = ByteString.f73706b;
    }

    public ProtoBuf$Type(Builder builder) {
        super(builder);
        this.t = (byte) -1;
        this.u = -1;
        this.f73470c = builder.f73731b;
    }
}

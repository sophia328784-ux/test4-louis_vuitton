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
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$TypeAlias extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$TypeAlias> implements ProtoBuf$TypeAliasOrBuilder {
    public static final ProtoBuf$TypeAlias q;
    public static final Parser r = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73493c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f73495f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ProtoBuf$Type f73496h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f73497i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ProtoBuf$Type f73498j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f73499k;
    public List l;
    public List m;
    public List n;
    public byte o;
    public int p;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$TypeAlias> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$TypeAlias(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$TypeAlias, Builder> implements ProtoBuf$TypeAliasOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73500e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73501f = 6;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List f73502h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ProtoBuf$Type f73503i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f73504j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProtoBuf$Type f73505k;
        public int l;
        public List m;
        public List n;
        public List o;

        public Builder() {
            List list = Collections.EMPTY_LIST;
            this.f73502h = list;
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
            this.f73503i = protoBuf$Type;
            this.f73505k = protoBuf$Type;
            this.m = list;
            this.n = list;
            this.o = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$TypeAlias protoBuf$TypeAliasK = k();
            if (protoBuf$TypeAliasK.a()) {
                return protoBuf$TypeAliasK;
            }
            throw new UninitializedMessageException(protoBuf$TypeAliasK);
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
            l((ProtoBuf$TypeAlias) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$TypeAlias k() {
            ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias(this);
            int i2 = this.f73500e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$TypeAlias.f73494e = this.f73501f;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$TypeAlias.f73495f = this.g;
            if ((i2 & 4) == 4) {
                this.f73502h = Collections.unmodifiableList(this.f73502h);
                this.f73500e &= -5;
            }
            protoBuf$TypeAlias.g = this.f73502h;
            if ((i2 & 8) == 8) {
                i3 |= 4;
            }
            protoBuf$TypeAlias.f73496h = this.f73503i;
            if ((i2 & 16) == 16) {
                i3 |= 8;
            }
            protoBuf$TypeAlias.f73497i = this.f73504j;
            if ((i2 & 32) == 32) {
                i3 |= 16;
            }
            protoBuf$TypeAlias.f73498j = this.f73505k;
            if ((i2 & 64) == 64) {
                i3 |= 32;
            }
            protoBuf$TypeAlias.f73499k = this.l;
            if ((this.f73500e & 128) == 128) {
                this.m = Collections.unmodifiableList(this.m);
                this.f73500e &= -129;
            }
            protoBuf$TypeAlias.l = this.m;
            if ((this.f73500e & 256) == 256) {
                this.n = Collections.unmodifiableList(this.n);
                this.f73500e &= -257;
            }
            protoBuf$TypeAlias.m = this.n;
            if ((this.f73500e & 512) == 512) {
                this.o = Collections.unmodifiableList(this.o);
                this.f73500e &= -513;
            }
            protoBuf$TypeAlias.n = this.o;
            protoBuf$TypeAlias.d = i3;
            return protoBuf$TypeAlias;
        }

        public final void l(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
            ProtoBuf$Type protoBuf$Type;
            ProtoBuf$Type protoBuf$Type2;
            if (protoBuf$TypeAlias == ProtoBuf$TypeAlias.q) {
                return;
            }
            int i2 = protoBuf$TypeAlias.d;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$TypeAlias.f73494e;
                this.f73500e = 1 | this.f73500e;
                this.f73501f = i3;
            }
            if ((i2 & 2) == 2) {
                int i4 = protoBuf$TypeAlias.f73495f;
                this.f73500e = 2 | this.f73500e;
                this.g = i4;
            }
            if (!protoBuf$TypeAlias.g.isEmpty()) {
                if (this.f73502h.isEmpty()) {
                    this.f73502h = protoBuf$TypeAlias.g;
                    this.f73500e &= -5;
                } else {
                    if ((this.f73500e & 4) != 4) {
                        this.f73502h = new ArrayList(this.f73502h);
                        this.f73500e |= 4;
                    }
                    this.f73502h.addAll(protoBuf$TypeAlias.g);
                }
            }
            if ((protoBuf$TypeAlias.d & 4) == 4) {
                ProtoBuf$Type protoBuf$Type3 = protoBuf$TypeAlias.f73496h;
                if ((this.f73500e & 8) != 8 || (protoBuf$Type2 = this.f73503i) == ProtoBuf$Type.v) {
                    this.f73503i = protoBuf$Type3;
                } else {
                    ProtoBuf$Type.Builder builderU = ProtoBuf$Type.u(protoBuf$Type2);
                    builderU.l(protoBuf$Type3);
                    this.f73503i = builderU.k();
                }
                this.f73500e |= 8;
            }
            int i5 = protoBuf$TypeAlias.d;
            if ((i5 & 8) == 8) {
                int i6 = protoBuf$TypeAlias.f73497i;
                this.f73500e |= 16;
                this.f73504j = i6;
            }
            if ((i5 & 16) == 16) {
                ProtoBuf$Type protoBuf$Type4 = protoBuf$TypeAlias.f73498j;
                if ((this.f73500e & 32) != 32 || (protoBuf$Type = this.f73505k) == ProtoBuf$Type.v) {
                    this.f73505k = protoBuf$Type4;
                } else {
                    ProtoBuf$Type.Builder builderU2 = ProtoBuf$Type.u(protoBuf$Type);
                    builderU2.l(protoBuf$Type4);
                    this.f73505k = builderU2.k();
                }
                this.f73500e |= 32;
            }
            if ((protoBuf$TypeAlias.d & 32) == 32) {
                int i7 = protoBuf$TypeAlias.f73499k;
                this.f73500e |= 64;
                this.l = i7;
            }
            if (!protoBuf$TypeAlias.l.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$TypeAlias.l;
                    this.f73500e &= -129;
                } else {
                    if ((this.f73500e & 128) != 128) {
                        this.m = new ArrayList(this.m);
                        this.f73500e |= 128;
                    }
                    this.m.addAll(protoBuf$TypeAlias.l);
                }
            }
            if (!protoBuf$TypeAlias.m.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$TypeAlias.m;
                    this.f73500e &= -257;
                } else {
                    if ((this.f73500e & 256) != 256) {
                        this.n = new ArrayList(this.n);
                        this.f73500e |= 256;
                    }
                    this.n.addAll(protoBuf$TypeAlias.m);
                }
            }
            if (!protoBuf$TypeAlias.n.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$TypeAlias.n;
                    this.f73500e &= -513;
                } else {
                    if ((this.f73500e & 512) != 512) {
                        this.o = new ArrayList(this.o);
                        this.f73500e |= 512;
                    }
                    this.o.addAll(protoBuf$TypeAlias.n);
                }
            }
            j(protoBuf$TypeAlias);
            this.f73731b = this.f73731b.b(protoBuf$TypeAlias.f73493c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$TypeAlias protoBuf$TypeAlias = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$TypeAlias.r).getClass();
                    l(new ProtoBuf$TypeAlias(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$TypeAlias protoBuf$TypeAlias2 = (ProtoBuf$TypeAlias) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeAlias = protoBuf$TypeAlias2;
                        if (protoBuf$TypeAlias != null) {
                            l(protoBuf$TypeAlias);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeAlias != null) {
                    l(protoBuf$TypeAlias);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias();
        q = protoBuf$TypeAlias;
        protoBuf$TypeAlias.f73494e = 6;
        protoBuf$TypeAlias.f73495f = 0;
        List list = Collections.EMPTY_LIST;
        protoBuf$TypeAlias.g = list;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
        protoBuf$TypeAlias.f73496h = protoBuf$Type;
        protoBuf$TypeAlias.f73497i = 0;
        protoBuf$TypeAlias.f73498j = protoBuf$Type;
        protoBuf$TypeAlias.f73499k = 0;
        protoBuf$TypeAlias.l = list;
        protoBuf$TypeAlias.m = list;
        protoBuf$TypeAlias.n = list;
    }

    public ProtoBuf$TypeAlias(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.o = (byte) -1;
        this.p = -1;
        this.f73494e = 6;
        boolean z = false;
        this.f73495f = 0;
        List list = Collections.EMPTY_LIST;
        this.g = list;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
        this.f73496h = protoBuf$Type;
        this.f73497i = 0;
        this.f73498j = protoBuf$Type;
        this.f73499k = 0;
        this.l = list;
        this.m = list;
        this.n = list;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        int i2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    ProtoBuf$Type.Builder builderU = null;
                    switch (iO) {
                        case 0:
                            break;
                        case 8:
                            this.d |= 1;
                            this.f73494e = codedInputStream.l();
                            continue;
                        case 16:
                            this.d |= 2;
                            this.f73495f = codedInputStream.l();
                            continue;
                        case 26:
                            if ((i2 & 4) != 4) {
                                this.g = new ArrayList();
                                i2 |= 4;
                            }
                            this.g.add(codedInputStream.h(ProtoBuf$TypeParameter.p, extensionRegistryLite));
                            continue;
                        case 34:
                            if ((this.d & 4) == 4) {
                                ProtoBuf$Type protoBuf$Type2 = this.f73496h;
                                protoBuf$Type2.getClass();
                                builderU = ProtoBuf$Type.u(protoBuf$Type2);
                            }
                            ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                            this.f73496h = protoBuf$Type3;
                            if (builderU != null) {
                                builderU.l(protoBuf$Type3);
                                this.f73496h = builderU.k();
                            }
                            this.d |= 4;
                            continue;
                        case 40:
                            this.d |= 8;
                            this.f73497i = codedInputStream.l();
                            continue;
                        case 50:
                            if ((this.d & 16) == 16) {
                                ProtoBuf$Type protoBuf$Type4 = this.f73498j;
                                protoBuf$Type4.getClass();
                                builderU = ProtoBuf$Type.u(protoBuf$Type4);
                            }
                            ProtoBuf$Type protoBuf$Type5 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                            this.f73498j = protoBuf$Type5;
                            if (builderU != null) {
                                builderU.l(protoBuf$Type5);
                                this.f73498j = builderU.k();
                            }
                            this.d |= 16;
                            continue;
                        case 56:
                            this.d |= 32;
                            this.f73499k = codedInputStream.l();
                            continue;
                        case EACTags.ADDRESS /* 66 */:
                            if ((i2 & 128) != 128) {
                                this.l = new ArrayList();
                                i2 |= 128;
                            }
                            this.l.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            continue;
                        case 248:
                            if ((i2 & 256) != 256) {
                                this.m = new ArrayList();
                                i2 |= 256;
                            }
                            this.m.add(Integer.valueOf(codedInputStream.l()));
                            continue;
                        case 250:
                            int iE = codedInputStream.e(codedInputStream.l());
                            if ((i2 & 256) != 256 && codedInputStream.c() > 0) {
                                this.m = new ArrayList();
                                i2 |= 256;
                            }
                            while (codedInputStream.c() > 0) {
                                this.m.add(Integer.valueOf(codedInputStream.l()));
                            }
                            codedInputStream.d(iE);
                            continue;
                        case 258:
                            if ((i2 & 512) != 512) {
                                this.n = new ArrayList();
                                i2 |= 512;
                            }
                            this.n.add(codedInputStream.h(ProtoBuf$CompilerPluginData.f73343i, extensionRegistryLite));
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
                if ((i2 & 4) == 4) {
                    this.g = Collections.unmodifiableList(this.g);
                }
                if ((i2 & 128) == 128) {
                    this.l = Collections.unmodifiableList(this.l);
                }
                if ((i2 & 256) == 256) {
                    this.m = Collections.unmodifiableList(this.m);
                }
                if ((i2 & 512) == 512) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73493c = output.j();
                }
                p();
                throw th;
            }
        }
        if ((i2 & 4) == 4) {
            this.g = Collections.unmodifiableList(this.g);
        }
        if ((i2 & 128) == 128) {
            this.l = Collections.unmodifiableList(this.l);
        }
        if ((i2 & 256) == 256) {
            this.m = Collections.unmodifiableList(this.m);
        }
        if ((i2 & 512) == 512) {
            this.n = Collections.unmodifiableList(this.n);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73493c = output.j();
        }
        p();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.o;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if ((this.d & 2) != 2) {
            this.o = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            if (!((ProtoBuf$TypeParameter) this.g.get(i2)).a()) {
                this.o = (byte) 0;
                return false;
            }
        }
        if ((this.d & 4) == 4 && !this.f73496h.a()) {
            this.o = (byte) 0;
            return false;
        }
        if ((this.d & 16) == 16 && !this.f73498j.a()) {
            this.o = (byte) 0;
            return false;
        }
        for (int i3 = 0; i3 < this.l.size(); i3++) {
            if (!((ProtoBuf$Annotation) this.l.get(i3)).a()) {
                this.o = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < this.n.size(); i4++) {
            if (!((ProtoBuf$CompilerPluginData) this.n.get(i4)).a()) {
                this.o = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.o = (byte) 1;
            return true;
        }
        this.o = (byte) 0;
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
        int i2 = this.p;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 1) == 1 ? CodedOutputStream.b(1, this.f73494e) : 0;
        if ((this.d & 2) == 2) {
            iB += CodedOutputStream.b(2, this.f73495f);
        }
        for (int i3 = 0; i3 < this.g.size(); i3++) {
            iB += CodedOutputStream.d(3, (MessageLite) this.g.get(i3));
        }
        if ((this.d & 4) == 4) {
            iB += CodedOutputStream.d(4, this.f73496h);
        }
        if ((this.d & 8) == 8) {
            iB += CodedOutputStream.b(5, this.f73497i);
        }
        if ((this.d & 16) == 16) {
            iB += CodedOutputStream.d(6, this.f73498j);
        }
        if ((this.d & 32) == 32) {
            iB += CodedOutputStream.b(7, this.f73499k);
        }
        for (int i4 = 0; i4 < this.l.size(); i4++) {
            iB += CodedOutputStream.d(8, (MessageLite) this.l.get(i4));
        }
        int i5 = 0;
        int iC = 0;
        while (true) {
            int size = this.m.size();
            list = this.m;
            if (i5 >= size) {
                break;
            }
            iC += CodedOutputStream.c(((Integer) list.get(i5)).intValue());
            i5++;
        }
        int size2 = (list.size() * 2) + iB + iC;
        for (int i6 = 0; i6 < this.n.size(); i6++) {
            size2 += CodedOutputStream.d(32, (MessageLite) this.n.get(i6));
        }
        int size3 = this.f73493c.size() + j() + size2;
        this.p = size3;
        return size3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        GeneratedMessageLite.ExtendableMessage.ExtensionWriter extensionWriter = new GeneratedMessageLite.ExtendableMessage.ExtensionWriter(this);
        if ((this.d & 1) == 1) {
            codedOutputStream.m(1, this.f73494e);
        }
        if ((this.d & 2) == 2) {
            codedOutputStream.m(2, this.f73495f);
        }
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            codedOutputStream.o(3, (MessageLite) this.g.get(i2));
        }
        if ((this.d & 4) == 4) {
            codedOutputStream.o(4, this.f73496h);
        }
        if ((this.d & 8) == 8) {
            codedOutputStream.m(5, this.f73497i);
        }
        if ((this.d & 16) == 16) {
            codedOutputStream.o(6, this.f73498j);
        }
        if ((this.d & 32) == 32) {
            codedOutputStream.m(7, this.f73499k);
        }
        for (int i3 = 0; i3 < this.l.size(); i3++) {
            codedOutputStream.o(8, (MessageLite) this.l.get(i3));
        }
        for (int i4 = 0; i4 < this.m.size(); i4++) {
            codedOutputStream.m(31, ((Integer) this.m.get(i4)).intValue());
        }
        for (int i5 = 0; i5 < this.n.size(); i5++) {
            codedOutputStream.o(32, (MessageLite) this.n.get(i5));
        }
        extensionWriter.a(200, codedOutputStream);
        codedOutputStream.r(this.f73493c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return q;
    }

    public ProtoBuf$TypeAlias() {
        this.o = (byte) -1;
        this.p = -1;
        this.f73493c = ByteString.f73706b;
    }

    public ProtoBuf$TypeAlias(Builder builder) {
        super(builder);
        this.o = (byte) -1;
        this.p = -1;
        this.f73493c = builder.f73731b;
    }
}

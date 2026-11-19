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
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$TypeParameter extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$TypeParameter> implements ProtoBuf$TypeParameterOrBuilder {
    public static final ProtoBuf$TypeParameter o;
    public static final Parser p = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73506c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f73508f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Variance f73509h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f73510i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f73511j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f73512k;
    public List l;
    public byte m;
    public int n;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$TypeParameter> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$TypeParameter(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$TypeParameter, Builder> implements ProtoBuf$TypeParameterOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73513e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73514f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f73515h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Variance f73516i = Variance.INV;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public List f73517j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List f73518k;
        public List l;

        public Builder() {
            List list = Collections.EMPTY_LIST;
            this.f73517j = list;
            this.f73518k = list;
            this.l = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$TypeParameter protoBuf$TypeParameterK = k();
            if (protoBuf$TypeParameterK.a()) {
                return protoBuf$TypeParameterK;
            }
            throw new UninitializedMessageException(protoBuf$TypeParameterK);
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
            l((ProtoBuf$TypeParameter) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$TypeParameter k() {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter(this);
            int i2 = this.f73513e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$TypeParameter.f73507e = this.f73514f;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$TypeParameter.f73508f = this.g;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$TypeParameter.g = this.f73515h;
            if ((i2 & 8) == 8) {
                i3 |= 8;
            }
            protoBuf$TypeParameter.f73509h = this.f73516i;
            if ((i2 & 16) == 16) {
                this.f73517j = Collections.unmodifiableList(this.f73517j);
                this.f73513e &= -17;
            }
            protoBuf$TypeParameter.f73510i = this.f73517j;
            if ((this.f73513e & 32) == 32) {
                this.f73518k = Collections.unmodifiableList(this.f73518k);
                this.f73513e &= -33;
            }
            protoBuf$TypeParameter.f73511j = this.f73518k;
            if ((this.f73513e & 64) == 64) {
                this.l = Collections.unmodifiableList(this.l);
                this.f73513e &= -65;
            }
            protoBuf$TypeParameter.l = this.l;
            protoBuf$TypeParameter.d = i3;
            return protoBuf$TypeParameter;
        }

        public final void l(ProtoBuf$TypeParameter protoBuf$TypeParameter) {
            if (protoBuf$TypeParameter == ProtoBuf$TypeParameter.o) {
                return;
            }
            int i2 = protoBuf$TypeParameter.d;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$TypeParameter.f73507e;
                this.f73513e = 1 | this.f73513e;
                this.f73514f = i3;
            }
            if ((i2 & 2) == 2) {
                int i4 = protoBuf$TypeParameter.f73508f;
                this.f73513e = 2 | this.f73513e;
                this.g = i4;
            }
            if ((i2 & 4) == 4) {
                boolean z = protoBuf$TypeParameter.g;
                this.f73513e = 4 | this.f73513e;
                this.f73515h = z;
            }
            if ((i2 & 8) == 8) {
                Variance variance = protoBuf$TypeParameter.f73509h;
                variance.getClass();
                this.f73513e = 8 | this.f73513e;
                this.f73516i = variance;
            }
            if (!protoBuf$TypeParameter.f73510i.isEmpty()) {
                if (this.f73517j.isEmpty()) {
                    this.f73517j = protoBuf$TypeParameter.f73510i;
                    this.f73513e &= -17;
                } else {
                    if ((this.f73513e & 16) != 16) {
                        this.f73517j = new ArrayList(this.f73517j);
                        this.f73513e |= 16;
                    }
                    this.f73517j.addAll(protoBuf$TypeParameter.f73510i);
                }
            }
            if (!protoBuf$TypeParameter.f73511j.isEmpty()) {
                if (this.f73518k.isEmpty()) {
                    this.f73518k = protoBuf$TypeParameter.f73511j;
                    this.f73513e &= -33;
                } else {
                    if ((this.f73513e & 32) != 32) {
                        this.f73518k = new ArrayList(this.f73518k);
                        this.f73513e |= 32;
                    }
                    this.f73518k.addAll(protoBuf$TypeParameter.f73511j);
                }
            }
            if (!protoBuf$TypeParameter.l.isEmpty()) {
                if (this.l.isEmpty()) {
                    this.l = protoBuf$TypeParameter.l;
                    this.f73513e &= -65;
                } else {
                    if ((this.f73513e & 64) != 64) {
                        this.l = new ArrayList(this.l);
                        this.f73513e |= 64;
                    }
                    this.l.addAll(protoBuf$TypeParameter.l);
                }
            }
            j(protoBuf$TypeParameter);
            this.f73731b = this.f73731b.b(protoBuf$TypeParameter.f73506c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$TypeParameter.p).getClass();
                    l(new ProtoBuf$TypeParameter(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$TypeParameter protoBuf$TypeParameter2 = (ProtoBuf$TypeParameter) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeParameter = protoBuf$TypeParameter2;
                        if (protoBuf$TypeParameter != null) {
                            l(protoBuf$TypeParameter);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeParameter != null) {
                    l(protoBuf$TypeParameter);
                }
                throw th;
            }
        }
    }

    public enum Variance implements Internal.EnumLite {
        IN(0),
        OUT(1),
        INV(2);

        private static Internal.EnumLiteMap<Variance> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter$Variance$1, reason: invalid class name */
        public static class AnonymousClass1 implements Internal.EnumLiteMap<Variance> {
        }

        Variance(int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int m() {
            return this.value;
        }
    }

    static {
        ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter();
        o = protoBuf$TypeParameter;
        protoBuf$TypeParameter.f73507e = 0;
        protoBuf$TypeParameter.f73508f = 0;
        protoBuf$TypeParameter.g = false;
        protoBuf$TypeParameter.f73509h = Variance.INV;
        List list = Collections.EMPTY_LIST;
        protoBuf$TypeParameter.f73510i = list;
        protoBuf$TypeParameter.f73511j = list;
        protoBuf$TypeParameter.l = list;
    }

    public ProtoBuf$TypeParameter(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.f73512k = -1;
        this.m = (byte) -1;
        this.n = -1;
        this.f73507e = 0;
        this.f73508f = 0;
        this.g = false;
        this.f73509h = Variance.INV;
        List list = Collections.EMPTY_LIST;
        this.f73510i = list;
        this.f73511j = list;
        this.l = list;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z = false;
        int i2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 8) {
                            this.d |= 1;
                            this.f73507e = codedInputStream.l();
                        } else if (iO == 16) {
                            this.d |= 2;
                            this.f73508f = codedInputStream.l();
                        } else if (iO == 24) {
                            this.d |= 4;
                            this.g = codedInputStream.m() != 0;
                        } else if (iO == 32) {
                            int iL = codedInputStream.l();
                            Variance variance = iL != 0 ? iL != 1 ? iL != 2 ? null : Variance.INV : Variance.OUT : Variance.IN;
                            if (variance == null) {
                                codedOutputStreamJ.v(iO);
                                codedOutputStreamJ.v(iL);
                            } else {
                                this.d |= 8;
                                this.f73509h = variance;
                            }
                        } else if (iO == 42) {
                            if ((i2 & 16) != 16) {
                                this.f73510i = new ArrayList();
                                i2 |= 16;
                            }
                            this.f73510i.add(codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite));
                        } else if (iO == 48) {
                            if ((i2 & 32) != 32) {
                                this.f73511j = new ArrayList();
                                i2 |= 32;
                            }
                            this.f73511j.add(Integer.valueOf(codedInputStream.l()));
                        } else if (iO == 50) {
                            int iE = codedInputStream.e(codedInputStream.l());
                            if ((i2 & 32) != 32 && codedInputStream.c() > 0) {
                                this.f73511j = new ArrayList();
                                i2 |= 32;
                            }
                            while (codedInputStream.c() > 0) {
                                this.f73511j.add(Integer.valueOf(codedInputStream.l()));
                            }
                            codedInputStream.d(iE);
                        } else if (iO == 802) {
                            if ((i2 & 64) != 64) {
                                this.l = new ArrayList();
                                i2 |= 64;
                            }
                            this.l.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                        } else if (!q(codedInputStream, codedOutputStreamJ, extensionRegistryLite, iO)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i2 & 16) == 16) {
                        this.f73510i = Collections.unmodifiableList(this.f73510i);
                    }
                    if ((i2 & 32) == 32) {
                        this.f73511j = Collections.unmodifiableList(this.f73511j);
                    }
                    if ((i2 & 64) == 64) {
                        this.l = Collections.unmodifiableList(this.l);
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73506c = output.j();
                    }
                    p();
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
        if ((i2 & 16) == 16) {
            this.f73510i = Collections.unmodifiableList(this.f73510i);
        }
        if ((i2 & 32) == 32) {
            this.f73511j = Collections.unmodifiableList(this.f73511j);
        }
        if ((i2 & 64) == 64) {
            this.l = Collections.unmodifiableList(this.l);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73506c = output.j();
        }
        p();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.m;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        int i2 = this.d;
        if ((i2 & 1) != 1) {
            this.m = (byte) 0;
            return false;
        }
        if ((i2 & 2) != 2) {
            this.m = (byte) 0;
            return false;
        }
        for (int i3 = 0; i3 < this.f73510i.size(); i3++) {
            if (!((ProtoBuf$Type) this.f73510i.get(i3)).a()) {
                this.m = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < this.l.size(); i4++) {
            if (!((ProtoBuf$Annotation) this.l.get(i4)).a()) {
                this.m = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.m = (byte) 1;
            return true;
        }
        this.m = (byte) 0;
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
        int i2 = this.n;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 1) == 1 ? CodedOutputStream.b(1, this.f73507e) : 0;
        if ((this.d & 2) == 2) {
            iB += CodedOutputStream.b(2, this.f73508f);
        }
        if ((this.d & 4) == 4) {
            iB += CodedOutputStream.h(3) + 1;
        }
        if ((this.d & 8) == 8) {
            iB += CodedOutputStream.a(4, this.f73509h.m());
        }
        for (int i3 = 0; i3 < this.f73510i.size(); i3++) {
            iB += CodedOutputStream.d(5, (MessageLite) this.f73510i.get(i3));
        }
        int i4 = 0;
        int iC = 0;
        while (true) {
            int size = this.f73511j.size();
            list = this.f73511j;
            if (i4 >= size) {
                break;
            }
            iC += CodedOutputStream.c(((Integer) list.get(i4)).intValue());
            i4++;
        }
        int iD = iB + iC;
        if (!list.isEmpty()) {
            iD = iD + 1 + CodedOutputStream.c(iC);
        }
        this.f73512k = iC;
        for (int i5 = 0; i5 < this.l.size(); i5++) {
            iD += CodedOutputStream.d(100, (MessageLite) this.l.get(i5));
        }
        int size2 = this.f73506c.size() + j() + iD;
        this.n = size2;
        return size2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) throws IOException {
        c();
        GeneratedMessageLite.ExtendableMessage.ExtensionWriter extensionWriter = new GeneratedMessageLite.ExtendableMessage.ExtensionWriter(this);
        if ((this.d & 1) == 1) {
            codedOutputStream.m(1, this.f73507e);
        }
        if ((this.d & 2) == 2) {
            codedOutputStream.m(2, this.f73508f);
        }
        if ((this.d & 4) == 4) {
            boolean z = this.g;
            codedOutputStream.x(3, 0);
            codedOutputStream.q(z ? 1 : 0);
        }
        if ((this.d & 8) == 8) {
            codedOutputStream.l(4, this.f73509h.m());
        }
        for (int i2 = 0; i2 < this.f73510i.size(); i2++) {
            codedOutputStream.o(5, (MessageLite) this.f73510i.get(i2));
        }
        if (this.f73511j.size() > 0) {
            codedOutputStream.v(50);
            codedOutputStream.v(this.f73512k);
        }
        for (int i3 = 0; i3 < this.f73511j.size(); i3++) {
            codedOutputStream.n(((Integer) this.f73511j.get(i3)).intValue());
        }
        for (int i4 = 0; i4 < this.l.size(); i4++) {
            codedOutputStream.o(100, (MessageLite) this.l.get(i4));
        }
        extensionWriter.a(1000, codedOutputStream);
        codedOutputStream.r(this.f73506c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return o;
    }

    public ProtoBuf$TypeParameter() {
        this.f73512k = -1;
        this.m = (byte) -1;
        this.n = -1;
        this.f73506c = ByteString.f73706b;
    }

    public ProtoBuf$TypeParameter(Builder builder) {
        super(builder);
        this.f73512k = -1;
        this.m = (byte) -1;
        this.n = -1;
        this.f73506c = builder.f73731b;
    }
}

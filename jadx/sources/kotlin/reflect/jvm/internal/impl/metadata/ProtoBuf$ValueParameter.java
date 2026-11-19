package kotlin.reflect.jvm.internal.impl.metadata;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
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

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$ValueParameter extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$ValueParameter> implements ProtoBuf$ValueParameterOrBuilder {
    public static final ProtoBuf$ValueParameter o;
    public static final Parser p = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73527c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f73529f;
    public ProtoBuf$Type g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f73530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ProtoBuf$Type f73531i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f73532j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f73533k;
    public ProtoBuf$Annotation.Argument.Value l;
    public byte m;
    public int n;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$ValueParameter> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$ValueParameter(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$ValueParameter, Builder> implements ProtoBuf$ValueParameterOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73534e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73535f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ProtoBuf$Type f73536h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f73537i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ProtoBuf$Type f73538j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f73539k;
        public List l;
        public ProtoBuf$Annotation.Argument.Value m;

        public Builder() {
            ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
            this.f73536h = protoBuf$Type;
            this.f73538j = protoBuf$Type;
            this.l = Collections.EMPTY_LIST;
            this.m = ProtoBuf$Annotation.Argument.Value.q;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$ValueParameter protoBuf$ValueParameterK = k();
            if (protoBuf$ValueParameterK.a()) {
                return protoBuf$ValueParameterK;
            }
            throw new UninitializedMessageException(protoBuf$ValueParameterK);
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
            l((ProtoBuf$ValueParameter) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$ValueParameter k() {
            ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter(this);
            int i2 = this.f73534e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$ValueParameter.f73528e = this.f73535f;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$ValueParameter.f73529f = this.g;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$ValueParameter.g = this.f73536h;
            if ((i2 & 8) == 8) {
                i3 |= 8;
            }
            protoBuf$ValueParameter.f73530h = this.f73537i;
            if ((i2 & 16) == 16) {
                i3 |= 16;
            }
            protoBuf$ValueParameter.f73531i = this.f73538j;
            if ((i2 & 32) == 32) {
                i3 |= 32;
            }
            protoBuf$ValueParameter.f73532j = this.f73539k;
            if ((i2 & 64) == 64) {
                this.l = Collections.unmodifiableList(this.l);
                this.f73534e &= -65;
            }
            protoBuf$ValueParameter.f73533k = this.l;
            if ((i2 & 128) == 128) {
                i3 |= 64;
            }
            protoBuf$ValueParameter.l = this.m;
            protoBuf$ValueParameter.d = i3;
            return protoBuf$ValueParameter;
        }

        public final void l(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            ProtoBuf$Annotation.Argument.Value value;
            ProtoBuf$Type protoBuf$Type;
            ProtoBuf$Type protoBuf$Type2;
            if (protoBuf$ValueParameter == ProtoBuf$ValueParameter.o) {
                return;
            }
            int i2 = protoBuf$ValueParameter.d;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$ValueParameter.f73528e;
                this.f73534e = 1 | this.f73534e;
                this.f73535f = i3;
            }
            if ((i2 & 2) == 2) {
                int i4 = protoBuf$ValueParameter.f73529f;
                this.f73534e = 2 | this.f73534e;
                this.g = i4;
            }
            if ((i2 & 4) == 4) {
                ProtoBuf$Type protoBuf$Type3 = protoBuf$ValueParameter.g;
                if ((this.f73534e & 4) != 4 || (protoBuf$Type2 = this.f73536h) == ProtoBuf$Type.v) {
                    this.f73536h = protoBuf$Type3;
                } else {
                    ProtoBuf$Type.Builder builderU = ProtoBuf$Type.u(protoBuf$Type2);
                    builderU.l(protoBuf$Type3);
                    this.f73536h = builderU.k();
                }
                this.f73534e |= 4;
            }
            int i5 = protoBuf$ValueParameter.d;
            if ((i5 & 8) == 8) {
                int i6 = protoBuf$ValueParameter.f73530h;
                this.f73534e = 8 | this.f73534e;
                this.f73537i = i6;
            }
            if ((i5 & 16) == 16) {
                ProtoBuf$Type protoBuf$Type4 = protoBuf$ValueParameter.f73531i;
                if ((this.f73534e & 16) != 16 || (protoBuf$Type = this.f73538j) == ProtoBuf$Type.v) {
                    this.f73538j = protoBuf$Type4;
                } else {
                    ProtoBuf$Type.Builder builderU2 = ProtoBuf$Type.u(protoBuf$Type);
                    builderU2.l(protoBuf$Type4);
                    this.f73538j = builderU2.k();
                }
                this.f73534e |= 16;
            }
            if ((protoBuf$ValueParameter.d & 32) == 32) {
                int i7 = protoBuf$ValueParameter.f73532j;
                this.f73534e = 32 | this.f73534e;
                this.f73539k = i7;
            }
            if (!protoBuf$ValueParameter.f73533k.isEmpty()) {
                if (this.l.isEmpty()) {
                    this.l = protoBuf$ValueParameter.f73533k;
                    this.f73534e &= -65;
                } else {
                    if ((this.f73534e & 64) != 64) {
                        this.l = new ArrayList(this.l);
                        this.f73534e |= 64;
                    }
                    this.l.addAll(protoBuf$ValueParameter.f73533k);
                }
            }
            if ((protoBuf$ValueParameter.d & 64) == 64) {
                ProtoBuf$Annotation.Argument.Value value2 = protoBuf$ValueParameter.l;
                if ((this.f73534e & 128) != 128 || (value = this.m) == ProtoBuf$Annotation.Argument.Value.q) {
                    this.m = value2;
                } else {
                    ProtoBuf$Annotation.Argument.Value.Builder builderJ = ProtoBuf$Annotation.Argument.Value.j(value);
                    builderJ.k(value2);
                    this.m = builderJ.j();
                }
                this.f73534e |= 128;
            }
            j(protoBuf$ValueParameter);
            this.f73731b = this.f73731b.b(protoBuf$ValueParameter.f73527c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$ValueParameter protoBuf$ValueParameter = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$ValueParameter.p).getClass();
                    l(new ProtoBuf$ValueParameter(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$ValueParameter protoBuf$ValueParameter2 = (ProtoBuf$ValueParameter) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$ValueParameter = protoBuf$ValueParameter2;
                        if (protoBuf$ValueParameter != null) {
                            l(protoBuf$ValueParameter);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$ValueParameter != null) {
                    l(protoBuf$ValueParameter);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter();
        o = protoBuf$ValueParameter;
        protoBuf$ValueParameter.f73528e = 0;
        protoBuf$ValueParameter.f73529f = 0;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
        protoBuf$ValueParameter.g = protoBuf$Type;
        protoBuf$ValueParameter.f73530h = 0;
        protoBuf$ValueParameter.f73531i = protoBuf$Type;
        protoBuf$ValueParameter.f73532j = 0;
        protoBuf$ValueParameter.f73533k = Collections.EMPTY_LIST;
        protoBuf$ValueParameter.l = ProtoBuf$Annotation.Argument.Value.q;
    }

    public ProtoBuf$ValueParameter(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.m = (byte) -1;
        this.n = -1;
        boolean z = false;
        this.f73528e = 0;
        this.f73529f = 0;
        ProtoBuf$Type protoBuf$Type = ProtoBuf$Type.v;
        this.g = protoBuf$Type;
        this.f73530h = 0;
        this.f73531i = protoBuf$Type;
        this.f73532j = 0;
        this.f73533k = Collections.EMPTY_LIST;
        this.l = ProtoBuf$Annotation.Argument.Value.q;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        char c2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 8) {
                            this.d |= 1;
                            this.f73528e = codedInputStream.l();
                        } else if (iO != 16) {
                            ProtoBuf$Annotation.Argument.Value.Builder builderJ = null;
                            ProtoBuf$Type.Builder builderU = null;
                            ProtoBuf$Type.Builder builderU2 = null;
                            if (iO == 26) {
                                if ((this.d & 4) == 4) {
                                    ProtoBuf$Type protoBuf$Type2 = this.g;
                                    protoBuf$Type2.getClass();
                                    builderU = ProtoBuf$Type.u(protoBuf$Type2);
                                }
                                ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                                this.g = protoBuf$Type3;
                                if (builderU != null) {
                                    builderU.l(protoBuf$Type3);
                                    this.g = builderU.k();
                                }
                                this.d |= 4;
                            } else if (iO == 34) {
                                if ((this.d & 16) == 16) {
                                    ProtoBuf$Type protoBuf$Type4 = this.f73531i;
                                    protoBuf$Type4.getClass();
                                    builderU2 = ProtoBuf$Type.u(protoBuf$Type4);
                                }
                                ProtoBuf$Type protoBuf$Type5 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                                this.f73531i = protoBuf$Type5;
                                if (builderU2 != null) {
                                    builderU2.l(protoBuf$Type5);
                                    this.f73531i = builderU2.k();
                                }
                                this.d |= 16;
                            } else if (iO == 40) {
                                this.d |= 8;
                                this.f73530h = codedInputStream.l();
                            } else if (iO == 48) {
                                this.d |= 32;
                                this.f73532j = codedInputStream.l();
                            } else if (iO == 58) {
                                int i2 = (c2 == true ? 1 : 0) & AnnotationParser.AnnotationInstruction;
                                c2 = c2;
                                if (i2 != 64) {
                                    this.f73533k = new ArrayList();
                                    c2 = '@';
                                }
                                this.f73533k.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                            } else if (iO == 66) {
                                if ((this.d & 64) == 64) {
                                    ProtoBuf$Annotation.Argument.Value value = this.l;
                                    value.getClass();
                                    builderJ = ProtoBuf$Annotation.Argument.Value.j(value);
                                }
                                ProtoBuf$Annotation.Argument.Value value2 = (ProtoBuf$Annotation.Argument.Value) codedInputStream.h(ProtoBuf$Annotation.Argument.Value.r, extensionRegistryLite);
                                this.l = value2;
                                if (builderJ != null) {
                                    builderJ.k(value2);
                                    this.l = builderJ.j();
                                }
                                this.d |= 64;
                            } else if (!q(codedInputStream, codedOutputStreamJ, extensionRegistryLite, iO)) {
                            }
                        } else {
                            this.d |= 2;
                            this.f73529f = codedInputStream.l();
                        }
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
                if (((c2 == true ? 1 : 0) & AnnotationParser.AnnotationInstruction) == 64) {
                    this.f73533k = Collections.unmodifiableList(this.f73533k);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73527c = output.j();
                }
                p();
                throw th;
            }
        }
        if (((c2 == true ? 1 : 0) & AnnotationParser.AnnotationInstruction) == 64) {
            this.f73533k = Collections.unmodifiableList(this.f73533k);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73527c = output.j();
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
        if ((i2 & 2) != 2) {
            this.m = (byte) 0;
            return false;
        }
        if ((i2 & 4) == 4 && !this.g.a()) {
            this.m = (byte) 0;
            return false;
        }
        if ((this.d & 16) == 16 && !this.f73531i.a()) {
            this.m = (byte) 0;
            return false;
        }
        for (int i3 = 0; i3 < this.f73533k.size(); i3++) {
            if (!((ProtoBuf$Annotation) this.f73533k.get(i3)).a()) {
                this.m = (byte) 0;
                return false;
            }
        }
        if ((this.d & 64) == 64 && !this.l.a()) {
            this.m = (byte) 0;
            return false;
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
        int i2 = this.n;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 1) == 1 ? CodedOutputStream.b(1, this.f73528e) : 0;
        if ((this.d & 2) == 2) {
            iB += CodedOutputStream.b(2, this.f73529f);
        }
        if ((this.d & 4) == 4) {
            iB += CodedOutputStream.d(3, this.g);
        }
        if ((this.d & 16) == 16) {
            iB += CodedOutputStream.d(4, this.f73531i);
        }
        if ((this.d & 8) == 8) {
            iB += CodedOutputStream.b(5, this.f73530h);
        }
        if ((this.d & 32) == 32) {
            iB += CodedOutputStream.b(6, this.f73532j);
        }
        for (int i3 = 0; i3 < this.f73533k.size(); i3++) {
            iB += CodedOutputStream.d(7, (MessageLite) this.f73533k.get(i3));
        }
        if ((this.d & 64) == 64) {
            iB += CodedOutputStream.d(8, this.l);
        }
        int size = this.f73527c.size() + j() + iB;
        this.n = size;
        return size;
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
            codedOutputStream.m(1, this.f73528e);
        }
        if ((this.d & 2) == 2) {
            codedOutputStream.m(2, this.f73529f);
        }
        if ((this.d & 4) == 4) {
            codedOutputStream.o(3, this.g);
        }
        if ((this.d & 16) == 16) {
            codedOutputStream.o(4, this.f73531i);
        }
        if ((this.d & 8) == 8) {
            codedOutputStream.m(5, this.f73530h);
        }
        if ((this.d & 32) == 32) {
            codedOutputStream.m(6, this.f73532j);
        }
        for (int i2 = 0; i2 < this.f73533k.size(); i2++) {
            codedOutputStream.o(7, (MessageLite) this.f73533k.get(i2));
        }
        if ((this.d & 64) == 64) {
            codedOutputStream.o(8, this.l);
        }
        extensionWriter.a(200, codedOutputStream);
        codedOutputStream.r(this.f73527c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return o;
    }

    public final Builder s() {
        Builder builder = new Builder();
        builder.l(this);
        return builder;
    }

    public ProtoBuf$ValueParameter() {
        this.m = (byte) -1;
        this.n = -1;
        this.f73527c = ByteString.f73706b;
    }

    public ProtoBuf$ValueParameter(Builder builder) {
        super(builder);
        this.m = (byte) -1;
        this.n = -1;
        this.f73527c = builder.f73731b;
    }
}

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
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$Annotation extends GeneratedMessageLite implements ProtoBuf$AnnotationOrBuilder {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ProtoBuf$Annotation f73298h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Parser f73299i = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f73301c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f73302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f73303f;
    public int g;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Annotation> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Annotation(codedInputStream, extensionRegistryLite);
        }
    }

    public interface ArgumentOrBuilder extends MessageLiteOrBuilder {
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$Annotation, Builder> implements ProtoBuf$AnnotationOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73327c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public List f73328e = Collections.EMPTY_LIST;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Annotation protoBuf$AnnotationJ = j();
            if (protoBuf$AnnotationJ.a()) {
                return protoBuf$AnnotationJ;
            }
            throw new UninitializedMessageException(protoBuf$AnnotationJ);
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
            k((ProtoBuf$Annotation) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Annotation j() {
            ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation(this);
            int i2 = this.f73327c;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Annotation.d = this.d;
            if ((i2 & 2) == 2) {
                this.f73328e = Collections.unmodifiableList(this.f73328e);
                this.f73327c &= -3;
            }
            protoBuf$Annotation.f73302e = this.f73328e;
            protoBuf$Annotation.f73301c = i3;
            return protoBuf$Annotation;
        }

        public final void k(ProtoBuf$Annotation protoBuf$Annotation) {
            if (protoBuf$Annotation == ProtoBuf$Annotation.f73298h) {
                return;
            }
            if ((protoBuf$Annotation.f73301c & 1) == 1) {
                int i2 = protoBuf$Annotation.d;
                this.f73327c = 1 | this.f73327c;
                this.d = i2;
            }
            if (!protoBuf$Annotation.f73302e.isEmpty()) {
                if (this.f73328e.isEmpty()) {
                    this.f73328e = protoBuf$Annotation.f73302e;
                    this.f73327c &= -3;
                } else {
                    if ((this.f73327c & 2) != 2) {
                        this.f73328e = new ArrayList(this.f73328e);
                        this.f73327c |= 2;
                    }
                    this.f73328e.addAll(protoBuf$Annotation.f73302e);
                }
            }
            this.f73731b = this.f73731b.b(protoBuf$Annotation.f73300b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001b  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Annotation protoBuf$Annotation = null;
            try {
                try {
                    k((ProtoBuf$Annotation) ((AnonymousClass1) ProtoBuf$Annotation.f73299i).a(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Annotation protoBuf$Annotation2 = (ProtoBuf$Annotation) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Annotation = protoBuf$Annotation2;
                        if (protoBuf$Annotation != null) {
                            k(protoBuf$Annotation);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Annotation != null) {
                    k(protoBuf$Annotation);
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

    static {
        ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation();
        f73298h = protoBuf$Annotation;
        protoBuf$Annotation.d = 0;
        protoBuf$Annotation.f73302e = Collections.EMPTY_LIST;
    }

    public ProtoBuf$Annotation(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.f73303f = (byte) -1;
        this.g = -1;
        boolean z = false;
        this.d = 0;
        this.f73302e = Collections.EMPTY_LIST;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        char c2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 8) {
                            this.f73301c |= 1;
                            this.d = codedInputStream.l();
                        } else if (iO == 18) {
                            if ((c2 & 2) != 2) {
                                this.f73302e = new ArrayList();
                                c2 = 2;
                            }
                            this.f73302e.add(codedInputStream.h(Argument.f73305i, extensionRegistryLite));
                        } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
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
                if ((c2 & 2) == 2) {
                    this.f73302e = Collections.unmodifiableList(this.f73302e);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73300b = output.j();
                }
                throw th;
            }
        }
        if ((c2 & 2) == 2) {
            this.f73302e = Collections.unmodifiableList(this.f73302e);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73300b = output.j();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73303f;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if ((this.f73301c & 1) != 1) {
            this.f73303f = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < this.f73302e.size(); i2++) {
            if (!((Argument) this.f73302e.get(i2)).a()) {
                this.f73303f = (byte) 0;
                return false;
            }
        }
        this.f73303f = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder b() {
        Builder builder = new Builder();
        builder.k(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final int c() {
        int i2 = this.g;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.f73301c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
        for (int i3 = 0; i3 < this.f73302e.size(); i3++) {
            iB += CodedOutputStream.d(2, (MessageLite) this.f73302e.get(i3));
        }
        int size = this.f73300b.size() + iB;
        this.g = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        if ((this.f73301c & 1) == 1) {
            codedOutputStream.m(1, this.d);
        }
        for (int i2 = 0; i2 < this.f73302e.size(); i2++) {
            codedOutputStream.o(2, (MessageLite) this.f73302e.get(i2));
        }
        codedOutputStream.r(this.f73300b);
    }

    public static final class Argument extends GeneratedMessageLite implements ArgumentOrBuilder {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Argument f73304h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Parser f73305i = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteString f73306b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73307c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Value f73308e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte f73309f;
        public int g;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$1, reason: invalid class name */
        public static class AnonymousClass1 extends AbstractParser<Argument> {
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
            public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new Argument(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class Builder extends GeneratedMessageLite.Builder<Argument, Builder> implements ArgumentOrBuilder {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73310c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public Value f73311e = Value.q;

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
                int i2 = this.f73310c;
                int i3 = (i2 & 1) != 1 ? 0 : 1;
                argument.d = this.d;
                if ((i2 & 2) == 2) {
                    i3 |= 2;
                }
                argument.f73308e = this.f73311e;
                argument.f73307c = i3;
                return argument;
            }

            public final void k(Argument argument) {
                Value value;
                if (argument == Argument.f73304h) {
                    return;
                }
                int i2 = argument.f73307c;
                if ((i2 & 1) == 1) {
                    int i3 = argument.d;
                    this.f73310c = 1 | this.f73310c;
                    this.d = i3;
                }
                if ((i2 & 2) == 2) {
                    Value value2 = argument.f73308e;
                    if ((this.f73310c & 2) != 2 || (value = this.f73311e) == Value.q) {
                        this.f73311e = value2;
                    } else {
                        Value.Builder builderJ = Value.j(value);
                        builderJ.k(value2);
                        this.f73311e = builderJ.j();
                    }
                    this.f73310c |= 2;
                }
                this.f73731b = this.f73731b.b(argument.f73306b);
            }

            /* JADX WARN: Code duplicated, block: B:14:0x001d  */
            public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                Argument argument = null;
                try {
                    try {
                        ((AnonymousClass1) Argument.f73305i).getClass();
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

        public interface ValueOrBuilder extends MessageLiteOrBuilder {
        }

        static {
            Argument argument = new Argument();
            f73304h = argument;
            argument.d = 0;
            argument.f73308e = Value.q;
        }

        public Argument(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            Value.Builder builderJ;
            this.f73309f = (byte) -1;
            this.g = -1;
            boolean z = false;
            this.d = 0;
            this.f73308e = Value.q;
            ByteString.Output output = new ByteString.Output();
            CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
            while (!z) {
                try {
                    try {
                        try {
                            int iO = codedInputStream.o();
                            if (iO != 0) {
                                if (iO == 8) {
                                    this.f73307c |= 1;
                                    this.d = codedInputStream.l();
                                } else if (iO == 18) {
                                    if ((this.f73307c & 2) == 2) {
                                        Value value = this.f73308e;
                                        value.getClass();
                                        builderJ = Value.j(value);
                                    } else {
                                        builderJ = null;
                                    }
                                    Value value2 = (Value) codedInputStream.h(Value.r, extensionRegistryLite);
                                    this.f73308e = value2;
                                    if (builderJ != null) {
                                        builderJ.k(value2);
                                        this.f73308e = builderJ.j();
                                    }
                                    this.f73307c |= 2;
                                } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e2) {
                            e2.f73743b = this;
                            throw e2;
                        }
                    } catch (IOException e3) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                        invalidProtocolBufferException.f73743b = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73306b = output.j();
                    }
                    throw th;
                }
            }
            try {
                codedOutputStreamJ.k();
            } catch (IOException unused2) {
            } finally {
                this.f73306b = output.j();
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
        public final boolean a() {
            byte b2 = this.f73309f;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            int i2 = this.f73307c;
            if ((i2 & 1) != 1) {
                this.f73309f = (byte) 0;
                return false;
            }
            if ((i2 & 2) != 2) {
                this.f73309f = (byte) 0;
                return false;
            }
            if (this.f73308e.a()) {
                this.f73309f = (byte) 1;
                return true;
            }
            this.f73309f = (byte) 0;
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
            int i2 = this.g;
            if (i2 != -1) {
                return i2;
            }
            int iB = (this.f73307c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
            if ((this.f73307c & 2) == 2) {
                iB += CodedOutputStream.d(2, this.f73308e);
            }
            int size = this.f73306b.size() + iB;
            this.g = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final MessageLite.Builder d() {
            return new Builder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final void e(CodedOutputStream codedOutputStream) {
            c();
            if ((this.f73307c & 1) == 1) {
                codedOutputStream.m(1, this.d);
            }
            if ((this.f73307c & 2) == 2) {
                codedOutputStream.o(2, this.f73308e);
            }
            codedOutputStream.r(this.f73306b);
        }

        public Argument() {
            this.f73309f = (byte) -1;
            this.g = -1;
            this.f73306b = ByteString.f73706b;
        }

        public Argument(Builder builder) {
            this.f73309f = (byte) -1;
            this.g = -1;
            this.f73306b = builder.f73731b;
        }

        public static final class Value extends GeneratedMessageLite implements ValueOrBuilder {
            public static final Value q;
            public static final Parser r = new AnonymousClass1();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ByteString f73312b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73313c;
            public Type d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public long f73314e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public float f73315f;
            public double g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f73316h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f73317i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f73318j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public ProtoBuf$Annotation f73319k;
            public List l;
            public int m;
            public int n;
            public byte o;
            public int p;

            /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value$1, reason: invalid class name */
            public static class AnonymousClass1 extends AbstractParser<Value> {
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
                public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                    return new Value(codedInputStream, extensionRegistryLite);
                }
            }

            public static final class Builder extends GeneratedMessageLite.Builder<Value, Builder> implements ValueOrBuilder {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public int f73320c;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public long f73321e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public float f73322f;
                public double g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public int f73323h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public int f73324i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public int f73325j;
                public int m;
                public int n;
                public Type d = Type.BYTE;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public ProtoBuf$Annotation f73326k = ProtoBuf$Annotation.f73298h;
                public List l = Collections.EMPTY_LIST;

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
                public final MessageLite build() {
                    Value valueJ = j();
                    if (valueJ.a()) {
                        return valueJ;
                    }
                    throw new UninitializedMessageException(valueJ);
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
                    k((Value) generatedMessageLite);
                    return this;
                }

                public final Value j() {
                    Value value = new Value(this);
                    int i2 = this.f73320c;
                    int i3 = (i2 & 1) != 1 ? 0 : 1;
                    value.d = this.d;
                    if ((i2 & 2) == 2) {
                        i3 |= 2;
                    }
                    value.f73314e = this.f73321e;
                    if ((i2 & 4) == 4) {
                        i3 |= 4;
                    }
                    value.f73315f = this.f73322f;
                    if ((i2 & 8) == 8) {
                        i3 |= 8;
                    }
                    value.g = this.g;
                    if ((i2 & 16) == 16) {
                        i3 |= 16;
                    }
                    value.f73316h = this.f73323h;
                    if ((i2 & 32) == 32) {
                        i3 |= 32;
                    }
                    value.f73317i = this.f73324i;
                    if ((i2 & 64) == 64) {
                        i3 |= 64;
                    }
                    value.f73318j = this.f73325j;
                    if ((i2 & 128) == 128) {
                        i3 |= 128;
                    }
                    value.f73319k = this.f73326k;
                    if ((i2 & 256) == 256) {
                        this.l = Collections.unmodifiableList(this.l);
                        this.f73320c &= -257;
                    }
                    value.l = this.l;
                    if ((i2 & 512) == 512) {
                        i3 |= 256;
                    }
                    value.m = this.m;
                    if ((i2 & 1024) == 1024) {
                        i3 |= 512;
                    }
                    value.n = this.n;
                    value.f73313c = i3;
                    return value;
                }

                public final void k(Value value) {
                    ProtoBuf$Annotation protoBuf$Annotation;
                    if (value == Value.q) {
                        return;
                    }
                    if ((value.f73313c & 1) == 1) {
                        Type type = value.d;
                        type.getClass();
                        this.f73320c = 1 | this.f73320c;
                        this.d = type;
                    }
                    int i2 = value.f73313c;
                    if ((i2 & 2) == 2) {
                        long j2 = value.f73314e;
                        this.f73320c |= 2;
                        this.f73321e = j2;
                    }
                    if ((i2 & 4) == 4) {
                        float f2 = value.f73315f;
                        this.f73320c = 4 | this.f73320c;
                        this.f73322f = f2;
                    }
                    if ((i2 & 8) == 8) {
                        double d = value.g;
                        this.f73320c |= 8;
                        this.g = d;
                    }
                    if ((i2 & 16) == 16) {
                        int i3 = value.f73316h;
                        this.f73320c = 16 | this.f73320c;
                        this.f73323h = i3;
                    }
                    if ((i2 & 32) == 32) {
                        int i4 = value.f73317i;
                        this.f73320c = 32 | this.f73320c;
                        this.f73324i = i4;
                    }
                    if ((i2 & 64) == 64) {
                        int i5 = value.f73318j;
                        this.f73320c = 64 | this.f73320c;
                        this.f73325j = i5;
                    }
                    if ((i2 & 128) == 128) {
                        ProtoBuf$Annotation protoBuf$Annotation2 = value.f73319k;
                        if ((this.f73320c & 128) != 128 || (protoBuf$Annotation = this.f73326k) == ProtoBuf$Annotation.f73298h) {
                            this.f73326k = protoBuf$Annotation2;
                        } else {
                            Builder builder = new Builder();
                            builder.k(protoBuf$Annotation);
                            builder.k(protoBuf$Annotation2);
                            this.f73326k = builder.j();
                        }
                        this.f73320c |= 128;
                    }
                    if (!value.l.isEmpty()) {
                        if (this.l.isEmpty()) {
                            this.l = value.l;
                            this.f73320c &= -257;
                        } else {
                            if ((this.f73320c & 256) != 256) {
                                this.l = new ArrayList(this.l);
                                this.f73320c |= 256;
                            }
                            this.l.addAll(value.l);
                        }
                    }
                    int i6 = value.f73313c;
                    if ((i6 & 256) == 256) {
                        int i7 = value.m;
                        this.f73320c |= 512;
                        this.m = i7;
                    }
                    if ((i6 & 512) == 512) {
                        int i8 = value.n;
                        this.f73320c |= 1024;
                        this.n = i8;
                    }
                    this.f73731b = this.f73731b.b(value.f73312b);
                }

                /* JADX WARN: Code duplicated, block: B:14:0x001d  */
                public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                    Value value = null;
                    try {
                        try {
                            ((AnonymousClass1) Value.r).getClass();
                            k(new Value(codedInputStream, extensionRegistryLite));
                        } catch (InvalidProtocolBufferException e2) {
                            Value value2 = (Value) e2.f73743b;
                            try {
                                throw e2;
                            } catch (Throwable th) {
                                th = th;
                                value = value2;
                                if (value != null) {
                                    k(value);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (value != null) {
                            k(value);
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

            public enum Type implements Internal.EnumLite {
                BYTE(0),
                CHAR(1),
                SHORT(2),
                INT(3),
                LONG(4),
                FLOAT(5),
                DOUBLE(6),
                BOOLEAN(7),
                STRING(8),
                CLASS(9),
                ENUM(10),
                ANNOTATION(11),
                ARRAY(12);

                private static Internal.EnumLiteMap<Type> internalValueMap = new AnonymousClass1();
                private final int value;

                /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value$Type$1, reason: invalid class name */
                public static class AnonymousClass1 implements Internal.EnumLiteMap<Type> {
                }

                Type(int i2) {
                    this.value = i2;
                }

                public static Type a(int i2) {
                    switch (i2) {
                        case 0:
                            return BYTE;
                        case 1:
                            return CHAR;
                        case 2:
                            return SHORT;
                        case 3:
                            return INT;
                        case 4:
                            return LONG;
                        case 5:
                            return FLOAT;
                        case 6:
                            return DOUBLE;
                        case 7:
                            return BOOLEAN;
                        case 8:
                            return STRING;
                        case 9:
                            return CLASS;
                        case 10:
                            return ENUM;
                        case 11:
                            return ANNOTATION;
                        case 12:
                            return ARRAY;
                        default:
                            return null;
                    }
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
                public final int m() {
                    return this.value;
                }
            }

            static {
                Value value = new Value();
                q = value;
                value.i();
            }

            public Value(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                Builder builder;
                this.o = (byte) -1;
                this.p = -1;
                i();
                ByteString.Output output = new ByteString.Output();
                CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
                boolean z = false;
                char c2 = 0;
                while (!z) {
                    try {
                        try {
                            int iO = codedInputStream.o();
                            switch (iO) {
                                case 0:
                                    break;
                                case 8:
                                    int iL = codedInputStream.l();
                                    Type typeA = Type.a(iL);
                                    if (typeA == null) {
                                        codedOutputStreamJ.v(iO);
                                        codedOutputStreamJ.v(iL);
                                    } else {
                                        this.f73313c |= 1;
                                        this.d = typeA;
                                        continue;
                                    }
                                    break;
                                case 16:
                                    this.f73313c |= 2;
                                    long jM = codedInputStream.m();
                                    this.f73314e = (-(jM & 1)) ^ (jM >>> 1);
                                    continue;
                                case 29:
                                    this.f73313c |= 4;
                                    this.f73315f = Float.intBitsToFloat(codedInputStream.j());
                                    continue;
                                case 33:
                                    this.f73313c |= 8;
                                    this.g = Double.longBitsToDouble(codedInputStream.k());
                                    continue;
                                case 40:
                                    this.f73313c |= 16;
                                    this.f73316h = codedInputStream.l();
                                    continue;
                                case 48:
                                    this.f73313c |= 32;
                                    this.f73317i = codedInputStream.l();
                                    continue;
                                case 56:
                                    this.f73313c |= 64;
                                    this.f73318j = codedInputStream.l();
                                    continue;
                                case EACTags.ADDRESS /* 66 */:
                                    if ((this.f73313c & 128) == 128) {
                                        ProtoBuf$Annotation protoBuf$Annotation = this.f73319k;
                                        protoBuf$Annotation.getClass();
                                        builder = new Builder();
                                        builder.k(protoBuf$Annotation);
                                    } else {
                                        builder = null;
                                    }
                                    ProtoBuf$Annotation protoBuf$Annotation2 = (ProtoBuf$Annotation) codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite);
                                    this.f73319k = protoBuf$Annotation2;
                                    if (builder != null) {
                                        builder.k(protoBuf$Annotation2);
                                        this.f73319k = builder.j();
                                    }
                                    this.f73313c |= 128;
                                    continue;
                                case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                                    if ((c2 & 256) != 256) {
                                        this.l = new ArrayList();
                                        c2 = 256;
                                    }
                                    this.l.add(codedInputStream.h(r, extensionRegistryLite));
                                    continue;
                                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                                    this.f73313c |= 512;
                                    this.n = codedInputStream.l();
                                    continue;
                                case 88:
                                    this.f73313c |= 256;
                                    this.m = codedInputStream.l();
                                    continue;
                                default:
                                    if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                                        break;
                                    }
                                    break;
                            }
                            z = true;
                        } catch (Throwable th) {
                            if ((c2 & 256) == 256) {
                                this.l = Collections.unmodifiableList(this.l);
                            }
                            try {
                                codedOutputStreamJ.k();
                            } catch (IOException unused) {
                            } finally {
                                this.f73312b = output.j();
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
                if ((c2 & 256) == 256) {
                    this.l = Collections.unmodifiableList(this.l);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused2) {
                } finally {
                    this.f73312b = output.j();
                }
            }

            public static Builder j(Value value) {
                Builder builder = new Builder();
                builder.k(value);
                return builder;
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
                if ((this.f73313c & 128) == 128 && !this.f73319k.a()) {
                    this.o = (byte) 0;
                    return false;
                }
                for (int i2 = 0; i2 < this.l.size(); i2++) {
                    if (!((Value) this.l.get(i2)).a()) {
                        this.o = (byte) 0;
                        return false;
                    }
                }
                this.o = (byte) 1;
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
            public final MessageLite.Builder b() {
                return j(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
            public final int c() {
                int i2 = this.p;
                if (i2 != -1) {
                    return i2;
                }
                int iA = (this.f73313c & 1) == 1 ? CodedOutputStream.a(1, this.d.m()) : 0;
                if ((this.f73313c & 2) == 2) {
                    long j2 = this.f73314e;
                    iA += CodedOutputStream.g((j2 >> 63) ^ (j2 << 1)) + CodedOutputStream.h(2);
                }
                if ((this.f73313c & 4) == 4) {
                    iA += CodedOutputStream.h(3) + 4;
                }
                if ((this.f73313c & 8) == 8) {
                    iA += CodedOutputStream.h(4) + 8;
                }
                if ((this.f73313c & 16) == 16) {
                    iA += CodedOutputStream.b(5, this.f73316h);
                }
                if ((this.f73313c & 32) == 32) {
                    iA += CodedOutputStream.b(6, this.f73317i);
                }
                if ((this.f73313c & 64) == 64) {
                    iA += CodedOutputStream.b(7, this.f73318j);
                }
                if ((this.f73313c & 128) == 128) {
                    iA += CodedOutputStream.d(8, this.f73319k);
                }
                for (int i3 = 0; i3 < this.l.size(); i3++) {
                    iA += CodedOutputStream.d(9, (MessageLite) this.l.get(i3));
                }
                if ((this.f73313c & 512) == 512) {
                    iA += CodedOutputStream.b(10, this.n);
                }
                if ((this.f73313c & 256) == 256) {
                    iA += CodedOutputStream.b(11, this.m);
                }
                int size = this.f73312b.size() + iA;
                this.p = size;
                return size;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
            public final MessageLite.Builder d() {
                return new Builder();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
            public final void e(CodedOutputStream codedOutputStream) {
                c();
                if ((this.f73313c & 1) == 1) {
                    codedOutputStream.l(1, this.d.m());
                }
                if ((this.f73313c & 2) == 2) {
                    long j2 = this.f73314e;
                    codedOutputStream.x(2, 0);
                    codedOutputStream.w((j2 >> 63) ^ (j2 << 1));
                }
                if ((this.f73313c & 4) == 4) {
                    float f2 = this.f73315f;
                    codedOutputStream.x(3, 5);
                    codedOutputStream.t(Float.floatToRawIntBits(f2));
                }
                if ((this.f73313c & 8) == 8) {
                    double d = this.g;
                    codedOutputStream.x(4, 1);
                    codedOutputStream.u(Double.doubleToRawLongBits(d));
                }
                if ((this.f73313c & 16) == 16) {
                    codedOutputStream.m(5, this.f73316h);
                }
                if ((this.f73313c & 32) == 32) {
                    codedOutputStream.m(6, this.f73317i);
                }
                if ((this.f73313c & 64) == 64) {
                    codedOutputStream.m(7, this.f73318j);
                }
                if ((this.f73313c & 128) == 128) {
                    codedOutputStream.o(8, this.f73319k);
                }
                for (int i2 = 0; i2 < this.l.size(); i2++) {
                    codedOutputStream.o(9, (MessageLite) this.l.get(i2));
                }
                if ((this.f73313c & 512) == 512) {
                    codedOutputStream.m(10, this.n);
                }
                if ((this.f73313c & 256) == 256) {
                    codedOutputStream.m(11, this.m);
                }
                codedOutputStream.r(this.f73312b);
            }

            public final void i() {
                this.d = Type.BYTE;
                this.f73314e = 0L;
                this.f73315f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                this.g = 0.0d;
                this.f73316h = 0;
                this.f73317i = 0;
                this.f73318j = 0;
                this.f73319k = ProtoBuf$Annotation.f73298h;
                this.l = Collections.EMPTY_LIST;
                this.m = 0;
                this.n = 0;
            }

            public Value() {
                this.o = (byte) -1;
                this.p = -1;
                this.f73312b = ByteString.f73706b;
            }

            public Value(Builder builder) {
                this.o = (byte) -1;
                this.p = -1;
                this.f73312b = builder.f73731b;
            }
        }
    }

    public ProtoBuf$Annotation() {
        this.f73303f = (byte) -1;
        this.g = -1;
        this.f73300b = ByteString.f73706b;
    }

    public ProtoBuf$Annotation(Builder builder) {
        this.f73303f = (byte) -1;
        this.g = -1;
        this.f73300b = builder.f73731b;
    }
}

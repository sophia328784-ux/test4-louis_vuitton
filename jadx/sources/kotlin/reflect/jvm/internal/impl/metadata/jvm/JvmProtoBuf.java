package kotlin.reflect.jvm.internal.impl.metadata.jvm;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
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
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JvmProtoBuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73605c;
    public static final GeneratedMessageLite.GeneratedExtension d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73607f;
    public static final GeneratedMessageLite.GeneratedExtension g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73608h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73609i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73610j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73611k;
    public static final GeneratedMessageLite.GeneratedExtension l;

    public interface JvmFieldSignatureOrBuilder extends MessageLiteOrBuilder {
    }

    public interface JvmMethodSignatureOrBuilder extends MessageLiteOrBuilder {
    }

    public interface JvmPropertySignatureOrBuilder extends MessageLiteOrBuilder {
    }

    public interface StringTableTypesOrBuilder extends MessageLiteOrBuilder {
    }

    static {
        ProtoBuf$Constructor protoBuf$Constructor = ProtoBuf$Constructor.l;
        JvmMethodSignature jvmMethodSignature = JvmMethodSignature.f73620h;
        WireFormat$FieldType wireFormat$FieldType = WireFormat$FieldType.MESSAGE;
        f73603a = GeneratedMessageLite.h(protoBuf$Constructor, jvmMethodSignature, jvmMethodSignature, 100, wireFormat$FieldType, JvmMethodSignature.class);
        ProtoBuf$Function protoBuf$Function = ProtoBuf$Function.z;
        f73604b = GeneratedMessageLite.h(protoBuf$Function, jvmMethodSignature, jvmMethodSignature, 100, wireFormat$FieldType, JvmMethodSignature.class);
        WireFormat$FieldType wireFormat$FieldType2 = WireFormat$FieldType.INT32;
        f73605c = GeneratedMessageLite.h(protoBuf$Function, 0, null, 101, wireFormat$FieldType2, Integer.class);
        ProtoBuf$Property protoBuf$Property = ProtoBuf$Property.F;
        JvmPropertySignature jvmPropertySignature = JvmPropertySignature.f73628k;
        d = GeneratedMessageLite.h(protoBuf$Property, jvmPropertySignature, jvmPropertySignature, 100, wireFormat$FieldType, JvmPropertySignature.class);
        f73606e = GeneratedMessageLite.h(protoBuf$Property, 0, null, 101, wireFormat$FieldType2, Integer.class);
        f73607f = GeneratedMessageLite.h(ProtoBuf$Type.v, Boolean.FALSE, null, 101, WireFormat$FieldType.BOOL, Boolean.class);
        ProtoBuf$Class protoBuf$Class = ProtoBuf$Class.H;
        g = GeneratedMessageLite.h(protoBuf$Class, 0, null, 101, wireFormat$FieldType2, Integer.class);
        f73608h = GeneratedMessageLite.g(protoBuf$Class, protoBuf$Property, 102, wireFormat$FieldType, ProtoBuf$Property.class);
        f73609i = GeneratedMessageLite.h(protoBuf$Class, 0, null, 103, wireFormat$FieldType2, Integer.class);
        f73610j = GeneratedMessageLite.h(protoBuf$Class, 0, null, 104, wireFormat$FieldType2, Integer.class);
        ProtoBuf$Package protoBuf$Package = ProtoBuf$Package.l;
        f73611k = GeneratedMessageLite.h(protoBuf$Package, 0, null, 101, wireFormat$FieldType2, Integer.class);
        l = GeneratedMessageLite.g(protoBuf$Package, protoBuf$Property, 102, wireFormat$FieldType, ProtoBuf$Property.class);
    }

    public static final class JvmFieldSignature extends GeneratedMessageLite implements JvmFieldSignatureOrBuilder {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final JvmFieldSignature f73612h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Parser f73613i = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteString f73614b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73615c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73616e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte f73617f;
        public int g;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature$1, reason: invalid class name */
        public static class AnonymousClass1 extends AbstractParser<JvmFieldSignature> {
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
            public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new JvmFieldSignature(codedInputStream);
            }
        }

        public static final class Builder extends GeneratedMessageLite.Builder<JvmFieldSignature, Builder> implements JvmFieldSignatureOrBuilder {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73618c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f73619e;

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            public final MessageLite build() {
                JvmFieldSignature jvmFieldSignatureJ = j();
                if (jvmFieldSignatureJ.a()) {
                    return jvmFieldSignatureJ;
                }
                throw new UninitializedMessageException(jvmFieldSignatureJ);
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
                k((JvmFieldSignature) generatedMessageLite);
                return this;
            }

            public final JvmFieldSignature j() {
                JvmFieldSignature jvmFieldSignature = new JvmFieldSignature(this);
                int i2 = this.f73618c;
                int i3 = (i2 & 1) != 1 ? 0 : 1;
                jvmFieldSignature.d = this.d;
                if ((i2 & 2) == 2) {
                    i3 |= 2;
                }
                jvmFieldSignature.f73616e = this.f73619e;
                jvmFieldSignature.f73615c = i3;
                return jvmFieldSignature;
            }

            public final void k(JvmFieldSignature jvmFieldSignature) {
                if (jvmFieldSignature == JvmFieldSignature.f73612h) {
                    return;
                }
                int i2 = jvmFieldSignature.f73615c;
                if ((i2 & 1) == 1) {
                    int i3 = jvmFieldSignature.d;
                    this.f73618c = 1 | this.f73618c;
                    this.d = i3;
                }
                if ((i2 & 2) == 2) {
                    int i4 = jvmFieldSignature.f73616e;
                    this.f73618c = 2 | this.f73618c;
                    this.f73619e = i4;
                }
                this.f73731b = this.f73731b.b(jvmFieldSignature.f73614b);
            }

            /* JADX WARN: Code duplicated, block: B:14:0x001d  */
            public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                JvmFieldSignature jvmFieldSignature = null;
                try {
                    try {
                        ((AnonymousClass1) JvmFieldSignature.f73613i).getClass();
                        k(new JvmFieldSignature(codedInputStream));
                    } catch (InvalidProtocolBufferException e2) {
                        JvmFieldSignature jvmFieldSignature2 = (JvmFieldSignature) e2.f73743b;
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            jvmFieldSignature = jvmFieldSignature2;
                            if (jvmFieldSignature != null) {
                                k(jvmFieldSignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmFieldSignature != null) {
                        k(jvmFieldSignature);
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
            JvmFieldSignature jvmFieldSignature = new JvmFieldSignature();
            f73612h = jvmFieldSignature;
            jvmFieldSignature.d = 0;
            jvmFieldSignature.f73616e = 0;
        }

        public JvmFieldSignature(CodedInputStream codedInputStream) {
            this.f73617f = (byte) -1;
            this.g = -1;
            boolean z = false;
            this.d = 0;
            this.f73616e = 0;
            ByteString.Output output = new ByteString.Output();
            CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
            while (!z) {
                try {
                    try {
                        int iO = codedInputStream.o();
                        if (iO != 0) {
                            if (iO == 8) {
                                this.f73615c |= 1;
                                this.d = codedInputStream.l();
                            } else if (iO == 16) {
                                this.f73615c |= 2;
                                this.f73616e = codedInputStream.l();
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
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73614b = output.j();
                    }
                    throw th;
                }
            }
            try {
                codedOutputStreamJ.k();
            } catch (IOException unused2) {
            } finally {
                this.f73614b = output.j();
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
        public final boolean a() {
            byte b2 = this.f73617f;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.f73617f = (byte) 1;
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
            int iB = (this.f73615c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
            if ((this.f73615c & 2) == 2) {
                iB += CodedOutputStream.b(2, this.f73616e);
            }
            int size = this.f73614b.size() + iB;
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
            if ((this.f73615c & 1) == 1) {
                codedOutputStream.m(1, this.d);
            }
            if ((this.f73615c & 2) == 2) {
                codedOutputStream.m(2, this.f73616e);
            }
            codedOutputStream.r(this.f73614b);
        }

        public JvmFieldSignature() {
            this.f73617f = (byte) -1;
            this.g = -1;
            this.f73614b = ByteString.f73706b;
        }

        public JvmFieldSignature(Builder builder) {
            this.f73617f = (byte) -1;
            this.g = -1;
            this.f73614b = builder.f73731b;
        }
    }

    public static final class JvmMethodSignature extends GeneratedMessageLite implements JvmMethodSignatureOrBuilder {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final JvmMethodSignature f73620h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Parser f73621i = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteString f73622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73623c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73624e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte f73625f;
        public int g;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmMethodSignature$1, reason: invalid class name */
        public static class AnonymousClass1 extends AbstractParser<JvmMethodSignature> {
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
            public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new JvmMethodSignature(codedInputStream);
            }
        }

        public static final class Builder extends GeneratedMessageLite.Builder<JvmMethodSignature, Builder> implements JvmMethodSignatureOrBuilder {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73626c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f73627e;

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            public final MessageLite build() {
                JvmMethodSignature jvmMethodSignatureJ = j();
                if (jvmMethodSignatureJ.a()) {
                    return jvmMethodSignatureJ;
                }
                throw new UninitializedMessageException(jvmMethodSignatureJ);
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
                k((JvmMethodSignature) generatedMessageLite);
                return this;
            }

            public final JvmMethodSignature j() {
                JvmMethodSignature jvmMethodSignature = new JvmMethodSignature(this);
                int i2 = this.f73626c;
                int i3 = (i2 & 1) != 1 ? 0 : 1;
                jvmMethodSignature.d = this.d;
                if ((i2 & 2) == 2) {
                    i3 |= 2;
                }
                jvmMethodSignature.f73624e = this.f73627e;
                jvmMethodSignature.f73623c = i3;
                return jvmMethodSignature;
            }

            public final void k(JvmMethodSignature jvmMethodSignature) {
                if (jvmMethodSignature == JvmMethodSignature.f73620h) {
                    return;
                }
                int i2 = jvmMethodSignature.f73623c;
                if ((i2 & 1) == 1) {
                    int i3 = jvmMethodSignature.d;
                    this.f73626c = 1 | this.f73626c;
                    this.d = i3;
                }
                if ((i2 & 2) == 2) {
                    int i4 = jvmMethodSignature.f73624e;
                    this.f73626c = 2 | this.f73626c;
                    this.f73627e = i4;
                }
                this.f73731b = this.f73731b.b(jvmMethodSignature.f73622b);
            }

            /* JADX WARN: Code duplicated, block: B:14:0x001d  */
            public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                JvmMethodSignature jvmMethodSignature = null;
                try {
                    try {
                        ((AnonymousClass1) JvmMethodSignature.f73621i).getClass();
                        k(new JvmMethodSignature(codedInputStream));
                    } catch (InvalidProtocolBufferException e2) {
                        JvmMethodSignature jvmMethodSignature2 = (JvmMethodSignature) e2.f73743b;
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            jvmMethodSignature = jvmMethodSignature2;
                            if (jvmMethodSignature != null) {
                                k(jvmMethodSignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmMethodSignature != null) {
                        k(jvmMethodSignature);
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
            JvmMethodSignature jvmMethodSignature = new JvmMethodSignature();
            f73620h = jvmMethodSignature;
            jvmMethodSignature.d = 0;
            jvmMethodSignature.f73624e = 0;
        }

        public JvmMethodSignature(CodedInputStream codedInputStream) {
            this.f73625f = (byte) -1;
            this.g = -1;
            boolean z = false;
            this.d = 0;
            this.f73624e = 0;
            ByteString.Output output = new ByteString.Output();
            CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
            while (!z) {
                try {
                    try {
                        int iO = codedInputStream.o();
                        if (iO != 0) {
                            if (iO == 8) {
                                this.f73623c |= 1;
                                this.d = codedInputStream.l();
                            } else if (iO == 16) {
                                this.f73623c |= 2;
                                this.f73624e = codedInputStream.l();
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
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73622b = output.j();
                    }
                    throw th;
                }
            }
            try {
                codedOutputStreamJ.k();
            } catch (IOException unused2) {
            } finally {
                this.f73622b = output.j();
            }
        }

        public static Builder i(JvmMethodSignature jvmMethodSignature) {
            Builder builder = new Builder();
            builder.k(jvmMethodSignature);
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
        public final boolean a() {
            byte b2 = this.f73625f;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.f73625f = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final MessageLite.Builder b() {
            return i(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final int c() {
            int i2 = this.g;
            if (i2 != -1) {
                return i2;
            }
            int iB = (this.f73623c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
            if ((this.f73623c & 2) == 2) {
                iB += CodedOutputStream.b(2, this.f73624e);
            }
            int size = this.f73622b.size() + iB;
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
            if ((this.f73623c & 1) == 1) {
                codedOutputStream.m(1, this.d);
            }
            if ((this.f73623c & 2) == 2) {
                codedOutputStream.m(2, this.f73624e);
            }
            codedOutputStream.r(this.f73622b);
        }

        public JvmMethodSignature() {
            this.f73625f = (byte) -1;
            this.g = -1;
            this.f73622b = ByteString.f73706b;
        }

        public JvmMethodSignature(Builder builder) {
            this.f73625f = (byte) -1;
            this.g = -1;
            this.f73622b = builder.f73731b;
        }
    }

    public static final class StringTableTypes extends GeneratedMessageLite implements StringTableTypesOrBuilder {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final StringTableTypes f73640h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Parser f73641i = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteString f73642b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List f73643c;
        public List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73644e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte f73645f;
        public int g;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$1, reason: invalid class name */
        public static class AnonymousClass1 extends AbstractParser<StringTableTypes> {
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
            public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new StringTableTypes(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class Builder extends GeneratedMessageLite.Builder<StringTableTypes, Builder> implements StringTableTypesOrBuilder {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73646c;
            public List d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List f73647e;

            public Builder() {
                List list = Collections.EMPTY_LIST;
                this.d = list;
                this.f73647e = list;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            public final MessageLite build() {
                StringTableTypes stringTableTypesJ = j();
                if (stringTableTypesJ.a()) {
                    return stringTableTypesJ;
                }
                throw new UninitializedMessageException(stringTableTypesJ);
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
                k((StringTableTypes) generatedMessageLite);
                return this;
            }

            public final StringTableTypes j() {
                StringTableTypes stringTableTypes = new StringTableTypes(this);
                if ((this.f73646c & 1) == 1) {
                    this.d = Collections.unmodifiableList(this.d);
                    this.f73646c &= -2;
                }
                stringTableTypes.f73643c = this.d;
                if ((this.f73646c & 2) == 2) {
                    this.f73647e = Collections.unmodifiableList(this.f73647e);
                    this.f73646c &= -3;
                }
                stringTableTypes.d = this.f73647e;
                return stringTableTypes;
            }

            public final void k(StringTableTypes stringTableTypes) {
                if (stringTableTypes == StringTableTypes.f73640h) {
                    return;
                }
                if (!stringTableTypes.f73643c.isEmpty()) {
                    if (this.d.isEmpty()) {
                        this.d = stringTableTypes.f73643c;
                        this.f73646c &= -2;
                    } else {
                        if ((this.f73646c & 1) != 1) {
                            this.d = new ArrayList(this.d);
                            this.f73646c |= 1;
                        }
                        this.d.addAll(stringTableTypes.f73643c);
                    }
                }
                if (!stringTableTypes.d.isEmpty()) {
                    if (this.f73647e.isEmpty()) {
                        this.f73647e = stringTableTypes.d;
                        this.f73646c &= -3;
                    } else {
                        if ((this.f73646c & 2) != 2) {
                            this.f73647e = new ArrayList(this.f73647e);
                            this.f73646c |= 2;
                        }
                        this.f73647e.addAll(stringTableTypes.d);
                    }
                }
                this.f73731b = this.f73731b.b(stringTableTypes.f73642b);
            }

            /* JADX WARN: Code duplicated, block: B:14:0x001d  */
            public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                StringTableTypes stringTableTypes = null;
                try {
                    try {
                        ((AnonymousClass1) StringTableTypes.f73641i).getClass();
                        k(new StringTableTypes(codedInputStream, extensionRegistryLite));
                    } catch (InvalidProtocolBufferException e2) {
                        StringTableTypes stringTableTypes2 = (StringTableTypes) e2.f73743b;
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            stringTableTypes = stringTableTypes2;
                            if (stringTableTypes != null) {
                                k(stringTableTypes);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (stringTableTypes != null) {
                        k(stringTableTypes);
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

        public interface RecordOrBuilder extends MessageLiteOrBuilder {
        }

        static {
            StringTableTypes stringTableTypes = new StringTableTypes();
            f73640h = stringTableTypes;
            List list = Collections.EMPTY_LIST;
            stringTableTypes.f73643c = list;
            stringTableTypes.d = list;
        }

        public StringTableTypes(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this.f73644e = -1;
            this.f73645f = (byte) -1;
            this.g = -1;
            List list = Collections.EMPTY_LIST;
            this.f73643c = list;
            this.d = list;
            ByteString.Output output = new ByteString.Output();
            CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
            boolean z = false;
            int i2 = 0;
            while (!z) {
                try {
                    try {
                        try {
                            int iO = codedInputStream.o();
                            if (iO != 0) {
                                if (iO == 10) {
                                    if ((i2 & 1) != 1) {
                                        this.f73643c = new ArrayList();
                                        i2 |= 1;
                                    }
                                    this.f73643c.add(codedInputStream.h(Record.o, extensionRegistryLite));
                                } else if (iO == 40) {
                                    if ((i2 & 2) != 2) {
                                        this.d = new ArrayList();
                                        i2 |= 2;
                                    }
                                    this.d.add(Integer.valueOf(codedInputStream.l()));
                                } else if (iO == 42) {
                                    int iE = codedInputStream.e(codedInputStream.l());
                                    if ((i2 & 2) != 2 && codedInputStream.c() > 0) {
                                        this.d = new ArrayList();
                                        i2 |= 2;
                                    }
                                    while (codedInputStream.c() > 0) {
                                        this.d.add(Integer.valueOf(codedInputStream.l()));
                                    }
                                    codedInputStream.d(iE);
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
                    if ((i2 & 1) == 1) {
                        this.f73643c = Collections.unmodifiableList(this.f73643c);
                    }
                    if ((i2 & 2) == 2) {
                        this.d = Collections.unmodifiableList(this.d);
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73642b = output.j();
                    }
                    throw th;
                }
            }
            if ((i2 & 1) == 1) {
                this.f73643c = Collections.unmodifiableList(this.f73643c);
            }
            if ((i2 & 2) == 2) {
                this.d = Collections.unmodifiableList(this.d);
            }
            try {
                codedOutputStreamJ.k();
            } catch (IOException unused2) {
            } finally {
                this.f73642b = output.j();
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
        public final boolean a() {
            byte b2 = this.f73645f;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.f73645f = (byte) 1;
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
            List list;
            int i2 = this.g;
            if (i2 != -1) {
                return i2;
            }
            int i3 = 0;
            int iD = 0;
            for (int i4 = 0; i4 < this.f73643c.size(); i4++) {
                iD += CodedOutputStream.d(1, (MessageLite) this.f73643c.get(i4));
            }
            int iC = 0;
            while (true) {
                int size = this.d.size();
                list = this.d;
                if (i3 >= size) {
                    break;
                }
                iC += CodedOutputStream.c(((Integer) list.get(i3)).intValue());
                i3++;
            }
            int iC2 = iD + iC;
            if (!list.isEmpty()) {
                iC2 = iC2 + 1 + CodedOutputStream.c(iC);
            }
            this.f73644e = iC;
            int size2 = this.f73642b.size() + iC2;
            this.g = size2;
            return size2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final MessageLite.Builder d() {
            return new Builder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final void e(CodedOutputStream codedOutputStream) {
            c();
            for (int i2 = 0; i2 < this.f73643c.size(); i2++) {
                codedOutputStream.o(1, (MessageLite) this.f73643c.get(i2));
            }
            if (this.d.size() > 0) {
                codedOutputStream.v(42);
                codedOutputStream.v(this.f73644e);
            }
            for (int i3 = 0; i3 < this.d.size(); i3++) {
                codedOutputStream.n(((Integer) this.d.get(i3)).intValue());
            }
            codedOutputStream.r(this.f73642b);
        }

        public StringTableTypes() {
            this.f73644e = -1;
            this.f73645f = (byte) -1;
            this.g = -1;
            this.f73642b = ByteString.f73706b;
        }

        public StringTableTypes(Builder builder) {
            this.f73644e = -1;
            this.f73645f = (byte) -1;
            this.g = -1;
            this.f73642b = builder.f73731b;
        }

        public static final class Record extends GeneratedMessageLite implements RecordOrBuilder {
            public static final Record n;
            public static final Parser o = new AnonymousClass1();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ByteString f73648b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73649c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f73650e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public Object f73651f;
            public Operation g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public List f73652h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f73653i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public List f73654j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f73655k;
            public byte l;
            public int m;

            /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record$1, reason: invalid class name */
            public static class AnonymousClass1 extends AbstractParser<Record> {
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
                public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                    return new Record(codedInputStream);
                }
            }

            public static final class Builder extends GeneratedMessageLite.Builder<Record, Builder> implements RecordOrBuilder {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public int f73656c;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public int f73657e;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public List f73659h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public List f73660i;
                public int d = 1;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public Object f73658f = "";
                public Operation g = Operation.NONE;

                public Builder() {
                    List list = Collections.EMPTY_LIST;
                    this.f73659h = list;
                    this.f73660i = list;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
                public final MessageLite build() {
                    Record recordJ = j();
                    if (recordJ.a()) {
                        return recordJ;
                    }
                    throw new UninitializedMessageException(recordJ);
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
                    k((Record) generatedMessageLite);
                    return this;
                }

                public final Record j() {
                    Record record = new Record(this);
                    int i2 = this.f73656c;
                    int i3 = (i2 & 1) != 1 ? 0 : 1;
                    record.d = this.d;
                    if ((i2 & 2) == 2) {
                        i3 |= 2;
                    }
                    record.f73650e = this.f73657e;
                    if ((i2 & 4) == 4) {
                        i3 |= 4;
                    }
                    record.f73651f = this.f73658f;
                    if ((i2 & 8) == 8) {
                        i3 |= 8;
                    }
                    record.g = this.g;
                    if ((i2 & 16) == 16) {
                        this.f73659h = Collections.unmodifiableList(this.f73659h);
                        this.f73656c &= -17;
                    }
                    record.f73652h = this.f73659h;
                    if ((this.f73656c & 32) == 32) {
                        this.f73660i = Collections.unmodifiableList(this.f73660i);
                        this.f73656c &= -33;
                    }
                    record.f73654j = this.f73660i;
                    record.f73649c = i3;
                    return record;
                }

                public final void k(Record record) {
                    if (record == Record.n) {
                        return;
                    }
                    int i2 = record.f73649c;
                    if ((i2 & 1) == 1) {
                        int i3 = record.d;
                        this.f73656c = 1 | this.f73656c;
                        this.d = i3;
                    }
                    if ((i2 & 2) == 2) {
                        int i4 = record.f73650e;
                        this.f73656c = 2 | this.f73656c;
                        this.f73657e = i4;
                    }
                    if ((i2 & 4) == 4) {
                        this.f73656c |= 4;
                        this.f73658f = record.f73651f;
                    }
                    if ((i2 & 8) == 8) {
                        Operation operation = record.g;
                        operation.getClass();
                        this.f73656c = 8 | this.f73656c;
                        this.g = operation;
                    }
                    if (!record.f73652h.isEmpty()) {
                        if (this.f73659h.isEmpty()) {
                            this.f73659h = record.f73652h;
                            this.f73656c &= -17;
                        } else {
                            if ((this.f73656c & 16) != 16) {
                                this.f73659h = new ArrayList(this.f73659h);
                                this.f73656c |= 16;
                            }
                            this.f73659h.addAll(record.f73652h);
                        }
                    }
                    if (!record.f73654j.isEmpty()) {
                        if (this.f73660i.isEmpty()) {
                            this.f73660i = record.f73654j;
                            this.f73656c &= -33;
                        } else {
                            if ((this.f73656c & 32) != 32) {
                                this.f73660i = new ArrayList(this.f73660i);
                                this.f73656c |= 32;
                            }
                            this.f73660i.addAll(record.f73654j);
                        }
                    }
                    this.f73731b = this.f73731b.b(record.f73648b);
                }

                /* JADX WARN: Code duplicated, block: B:14:0x001d  */
                public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                    Record record = null;
                    try {
                        try {
                            ((AnonymousClass1) Record.o).getClass();
                            k(new Record(codedInputStream));
                        } catch (InvalidProtocolBufferException e2) {
                            Record record2 = (Record) e2.f73743b;
                            try {
                                throw e2;
                            } catch (Throwable th) {
                                th = th;
                                record = record2;
                                if (record != null) {
                                    k(record);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (record != null) {
                            k(record);
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

            public enum Operation implements Internal.EnumLite {
                NONE(0),
                INTERNAL_TO_CLASS_ID(1),
                DESC_TO_CLASS_ID(2);

                private static Internal.EnumLiteMap<Operation> internalValueMap = new AnonymousClass1();
                private final int value;

                /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record$Operation$1, reason: invalid class name */
                public static class AnonymousClass1 implements Internal.EnumLiteMap<Operation> {
                }

                Operation(int i2) {
                    this.value = i2;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
                public final int m() {
                    return this.value;
                }
            }

            static {
                Record record = new Record();
                n = record;
                record.d = 1;
                record.f73650e = 0;
                record.f73651f = "";
                record.g = Operation.NONE;
                List list = Collections.EMPTY_LIST;
                record.f73652h = list;
                record.f73654j = list;
            }

            public Record(CodedInputStream codedInputStream) {
                this.f73653i = -1;
                this.f73655k = -1;
                this.l = (byte) -1;
                this.m = -1;
                this.d = 1;
                boolean z = false;
                this.f73650e = 0;
                this.f73651f = "";
                this.g = Operation.NONE;
                List list = Collections.EMPTY_LIST;
                this.f73652h = list;
                this.f73654j = list;
                ByteString.Output output = new ByteString.Output();
                CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
                int i2 = 0;
                while (!z) {
                    try {
                        try {
                            int iO = codedInputStream.o();
                            if (iO != 0) {
                                if (iO == 8) {
                                    this.f73649c |= 1;
                                    this.d = codedInputStream.l();
                                } else if (iO == 16) {
                                    this.f73649c |= 2;
                                    this.f73650e = codedInputStream.l();
                                } else if (iO == 24) {
                                    int iL = codedInputStream.l();
                                    Operation operation = iL != 0 ? iL != 1 ? iL != 2 ? null : Operation.DESC_TO_CLASS_ID : Operation.INTERNAL_TO_CLASS_ID : Operation.NONE;
                                    if (operation == null) {
                                        codedOutputStreamJ.v(iO);
                                        codedOutputStreamJ.v(iL);
                                    } else {
                                        this.f73649c |= 8;
                                        this.g = operation;
                                    }
                                } else if (iO == 32) {
                                    if ((i2 & 16) != 16) {
                                        this.f73652h = new ArrayList();
                                        i2 |= 16;
                                    }
                                    this.f73652h.add(Integer.valueOf(codedInputStream.l()));
                                } else if (iO == 34) {
                                    int iE = codedInputStream.e(codedInputStream.l());
                                    if ((i2 & 16) != 16 && codedInputStream.c() > 0) {
                                        this.f73652h = new ArrayList();
                                        i2 |= 16;
                                    }
                                    while (codedInputStream.c() > 0) {
                                        this.f73652h.add(Integer.valueOf(codedInputStream.l()));
                                    }
                                    codedInputStream.d(iE);
                                } else if (iO == 40) {
                                    if ((i2 & 32) != 32) {
                                        this.f73654j = new ArrayList();
                                        i2 |= 32;
                                    }
                                    this.f73654j.add(Integer.valueOf(codedInputStream.l()));
                                } else if (iO == 42) {
                                    int iE2 = codedInputStream.e(codedInputStream.l());
                                    if ((i2 & 32) != 32 && codedInputStream.c() > 0) {
                                        this.f73654j = new ArrayList();
                                        i2 |= 32;
                                    }
                                    while (codedInputStream.c() > 0) {
                                        this.f73654j.add(Integer.valueOf(codedInputStream.l()));
                                    }
                                    codedInputStream.d(iE2);
                                } else if (iO == 50) {
                                    ByteString byteStringF = codedInputStream.f();
                                    this.f73649c |= 4;
                                    this.f73651f = byteStringF;
                                } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                                }
                            }
                            z = true;
                        } catch (Throwable th) {
                            if ((i2 & 16) == 16) {
                                this.f73652h = Collections.unmodifiableList(this.f73652h);
                            }
                            if ((i2 & 32) == 32) {
                                this.f73654j = Collections.unmodifiableList(this.f73654j);
                            }
                            try {
                                codedOutputStreamJ.k();
                            } catch (IOException unused) {
                            } finally {
                                this.f73648b = output.j();
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
                if ((i2 & 16) == 16) {
                    this.f73652h = Collections.unmodifiableList(this.f73652h);
                }
                if ((i2 & 32) == 32) {
                    this.f73654j = Collections.unmodifiableList(this.f73654j);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused2) {
                } finally {
                    this.f73648b = output.j();
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
            public final boolean a() {
                byte b2 = this.l;
                if (b2 == 1) {
                    return true;
                }
                if (b2 == 0) {
                    return false;
                }
                this.l = (byte) 1;
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
                List list;
                List list2;
                ByteString byteStringF;
                int i2 = this.m;
                if (i2 != -1) {
                    return i2;
                }
                int i3 = 0;
                int iB = (this.f73649c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
                if ((this.f73649c & 2) == 2) {
                    iB += CodedOutputStream.b(2, this.f73650e);
                }
                if ((this.f73649c & 8) == 8) {
                    iB += CodedOutputStream.a(3, this.g.m());
                }
                int i4 = 0;
                int iC = 0;
                while (true) {
                    int size = this.f73652h.size();
                    list = this.f73652h;
                    if (i4 >= size) {
                        break;
                    }
                    iC += CodedOutputStream.c(((Integer) list.get(i4)).intValue());
                    i4++;
                }
                int iC2 = iB + iC;
                if (!list.isEmpty()) {
                    iC2 = iC2 + 1 + CodedOutputStream.c(iC);
                }
                this.f73653i = iC;
                int iC3 = 0;
                while (true) {
                    int size2 = this.f73654j.size();
                    list2 = this.f73654j;
                    if (i3 >= size2) {
                        break;
                    }
                    iC3 += CodedOutputStream.c(((Integer) list2.get(i3)).intValue());
                    i3++;
                }
                int size3 = iC2 + iC3;
                if (!list2.isEmpty()) {
                    size3 = size3 + 1 + CodedOutputStream.c(iC3);
                }
                this.f73655k = iC3;
                if ((this.f73649c & 4) == 4) {
                    Object obj = this.f73651f;
                    if (obj instanceof String) {
                        byteStringF = ByteString.f((String) obj);
                        this.f73651f = byteStringF;
                    } else {
                        byteStringF = (ByteString) obj;
                    }
                    size3 += byteStringF.size() + CodedOutputStream.f(byteStringF.size()) + CodedOutputStream.h(6);
                }
                int size4 = this.f73648b.size() + size3;
                this.m = size4;
                return size4;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
            public final MessageLite.Builder d() {
                return new Builder();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
            public final void e(CodedOutputStream codedOutputStream) {
                ByteString byteStringF;
                c();
                if ((this.f73649c & 1) == 1) {
                    codedOutputStream.m(1, this.d);
                }
                if ((this.f73649c & 2) == 2) {
                    codedOutputStream.m(2, this.f73650e);
                }
                if ((this.f73649c & 8) == 8) {
                    codedOutputStream.l(3, this.g.m());
                }
                if (this.f73652h.size() > 0) {
                    codedOutputStream.v(34);
                    codedOutputStream.v(this.f73653i);
                }
                for (int i2 = 0; i2 < this.f73652h.size(); i2++) {
                    codedOutputStream.n(((Integer) this.f73652h.get(i2)).intValue());
                }
                if (this.f73654j.size() > 0) {
                    codedOutputStream.v(42);
                    codedOutputStream.v(this.f73655k);
                }
                for (int i3 = 0; i3 < this.f73654j.size(); i3++) {
                    codedOutputStream.n(((Integer) this.f73654j.get(i3)).intValue());
                }
                if ((this.f73649c & 4) == 4) {
                    Object obj = this.f73651f;
                    if (obj instanceof String) {
                        byteStringF = ByteString.f((String) obj);
                        this.f73651f = byteStringF;
                    } else {
                        byteStringF = (ByteString) obj;
                    }
                    codedOutputStream.x(6, 2);
                    codedOutputStream.v(byteStringF.size());
                    codedOutputStream.r(byteStringF);
                }
                codedOutputStream.r(this.f73648b);
            }

            public Record() {
                this.f73653i = -1;
                this.f73655k = -1;
                this.l = (byte) -1;
                this.m = -1;
                this.f73648b = ByteString.f73706b;
            }

            public Record(Builder builder) {
                this.f73653i = -1;
                this.f73655k = -1;
                this.l = (byte) -1;
                this.m = -1;
                this.f73648b = builder.f73731b;
            }
        }
    }

    public static final class JvmPropertySignature extends GeneratedMessageLite implements JvmPropertySignatureOrBuilder {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final JvmPropertySignature f73628k;
        public static final Parser l = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteString f73629b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73630c;
        public JvmFieldSignature d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public JvmMethodSignature f73631e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public JvmMethodSignature f73632f;
        public JvmMethodSignature g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public JvmMethodSignature f73633h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public byte f73634i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f73635j;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature$1, reason: invalid class name */
        public static class AnonymousClass1 extends AbstractParser<JvmPropertySignature> {
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
            public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new JvmPropertySignature(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class Builder extends GeneratedMessageLite.Builder<JvmPropertySignature, Builder> implements JvmPropertySignatureOrBuilder {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73636c;
            public JvmFieldSignature d = JvmFieldSignature.f73612h;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public JvmMethodSignature f73637e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public JvmMethodSignature f73638f;
            public JvmMethodSignature g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public JvmMethodSignature f73639h;

            public Builder() {
                JvmMethodSignature jvmMethodSignature = JvmMethodSignature.f73620h;
                this.f73637e = jvmMethodSignature;
                this.f73638f = jvmMethodSignature;
                this.g = jvmMethodSignature;
                this.f73639h = jvmMethodSignature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            public final MessageLite build() {
                JvmPropertySignature jvmPropertySignatureJ = j();
                if (jvmPropertySignatureJ.a()) {
                    return jvmPropertySignatureJ;
                }
                throw new UninitializedMessageException(jvmPropertySignatureJ);
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
                k((JvmPropertySignature) generatedMessageLite);
                return this;
            }

            public final JvmPropertySignature j() {
                JvmPropertySignature jvmPropertySignature = new JvmPropertySignature(this);
                int i2 = this.f73636c;
                int i3 = (i2 & 1) != 1 ? 0 : 1;
                jvmPropertySignature.d = this.d;
                if ((i2 & 2) == 2) {
                    i3 |= 2;
                }
                jvmPropertySignature.f73631e = this.f73637e;
                if ((i2 & 4) == 4) {
                    i3 |= 4;
                }
                jvmPropertySignature.f73632f = this.f73638f;
                if ((i2 & 8) == 8) {
                    i3 |= 8;
                }
                jvmPropertySignature.g = this.g;
                if ((i2 & 16) == 16) {
                    i3 |= 16;
                }
                jvmPropertySignature.f73633h = this.f73639h;
                jvmPropertySignature.f73630c = i3;
                return jvmPropertySignature;
            }

            public final void k(JvmPropertySignature jvmPropertySignature) {
                JvmMethodSignature jvmMethodSignature;
                JvmMethodSignature jvmMethodSignature2;
                JvmMethodSignature jvmMethodSignature3;
                JvmMethodSignature jvmMethodSignature4;
                JvmFieldSignature jvmFieldSignature;
                if (jvmPropertySignature == JvmPropertySignature.f73628k) {
                    return;
                }
                if ((jvmPropertySignature.f73630c & 1) == 1) {
                    JvmFieldSignature jvmFieldSignature2 = jvmPropertySignature.d;
                    if ((this.f73636c & 1) != 1 || (jvmFieldSignature = this.d) == JvmFieldSignature.f73612h) {
                        this.d = jvmFieldSignature2;
                    } else {
                        JvmFieldSignature.Builder builder = new JvmFieldSignature.Builder();
                        builder.k(jvmFieldSignature);
                        builder.k(jvmFieldSignature2);
                        this.d = builder.j();
                    }
                    this.f73636c |= 1;
                }
                if ((jvmPropertySignature.f73630c & 2) == 2) {
                    JvmMethodSignature jvmMethodSignature5 = jvmPropertySignature.f73631e;
                    if ((this.f73636c & 2) != 2 || (jvmMethodSignature4 = this.f73637e) == JvmMethodSignature.f73620h) {
                        this.f73637e = jvmMethodSignature5;
                    } else {
                        JvmMethodSignature.Builder builderI = JvmMethodSignature.i(jvmMethodSignature4);
                        builderI.k(jvmMethodSignature5);
                        this.f73637e = builderI.j();
                    }
                    this.f73636c |= 2;
                }
                if (jvmPropertySignature.i()) {
                    JvmMethodSignature jvmMethodSignature6 = jvmPropertySignature.f73632f;
                    if ((this.f73636c & 4) != 4 || (jvmMethodSignature3 = this.f73638f) == JvmMethodSignature.f73620h) {
                        this.f73638f = jvmMethodSignature6;
                    } else {
                        JvmMethodSignature.Builder builderI2 = JvmMethodSignature.i(jvmMethodSignature3);
                        builderI2.k(jvmMethodSignature6);
                        this.f73638f = builderI2.j();
                    }
                    this.f73636c |= 4;
                }
                if ((jvmPropertySignature.f73630c & 8) == 8) {
                    JvmMethodSignature jvmMethodSignature7 = jvmPropertySignature.g;
                    if ((this.f73636c & 8) != 8 || (jvmMethodSignature2 = this.g) == JvmMethodSignature.f73620h) {
                        this.g = jvmMethodSignature7;
                    } else {
                        JvmMethodSignature.Builder builderI3 = JvmMethodSignature.i(jvmMethodSignature2);
                        builderI3.k(jvmMethodSignature7);
                        this.g = builderI3.j();
                    }
                    this.f73636c |= 8;
                }
                if ((jvmPropertySignature.f73630c & 16) == 16) {
                    JvmMethodSignature jvmMethodSignature8 = jvmPropertySignature.f73633h;
                    if ((this.f73636c & 16) != 16 || (jvmMethodSignature = this.f73639h) == JvmMethodSignature.f73620h) {
                        this.f73639h = jvmMethodSignature8;
                    } else {
                        JvmMethodSignature.Builder builderI4 = JvmMethodSignature.i(jvmMethodSignature);
                        builderI4.k(jvmMethodSignature8);
                        this.f73639h = builderI4.j();
                    }
                    this.f73636c |= 16;
                }
                this.f73731b = this.f73731b.b(jvmPropertySignature.f73629b);
            }

            /* JADX WARN: Code duplicated, block: B:14:0x001d  */
            public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                JvmPropertySignature jvmPropertySignature = null;
                try {
                    try {
                        ((AnonymousClass1) JvmPropertySignature.l).getClass();
                        k(new JvmPropertySignature(codedInputStream, extensionRegistryLite));
                    } catch (InvalidProtocolBufferException e2) {
                        JvmPropertySignature jvmPropertySignature2 = (JvmPropertySignature) e2.f73743b;
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            jvmPropertySignature = jvmPropertySignature2;
                            if (jvmPropertySignature != null) {
                                k(jvmPropertySignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmPropertySignature != null) {
                        k(jvmPropertySignature);
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
            JvmPropertySignature jvmPropertySignature = new JvmPropertySignature();
            f73628k = jvmPropertySignature;
            jvmPropertySignature.d = JvmFieldSignature.f73612h;
            JvmMethodSignature jvmMethodSignature = JvmMethodSignature.f73620h;
            jvmPropertySignature.f73631e = jvmMethodSignature;
            jvmPropertySignature.f73632f = jvmMethodSignature;
            jvmPropertySignature.g = jvmMethodSignature;
            jvmPropertySignature.f73633h = jvmMethodSignature;
        }

        public JvmPropertySignature(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this.f73634i = (byte) -1;
            this.f73635j = -1;
            this.d = JvmFieldSignature.f73612h;
            JvmMethodSignature jvmMethodSignature = JvmMethodSignature.f73620h;
            this.f73631e = jvmMethodSignature;
            this.f73632f = jvmMethodSignature;
            this.g = jvmMethodSignature;
            this.f73633h = jvmMethodSignature;
            ByteString.Output output = new ByteString.Output();
            CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iO = codedInputStream.o();
                        if (iO != 0) {
                            JvmMethodSignature.Builder builderI = null;
                            JvmFieldSignature.Builder builder = null;
                            JvmMethodSignature.Builder builderI2 = null;
                            JvmMethodSignature.Builder builderI3 = null;
                            JvmMethodSignature.Builder builderI4 = null;
                            if (iO == 10) {
                                if ((this.f73630c & 1) == 1) {
                                    JvmFieldSignature jvmFieldSignature = this.d;
                                    jvmFieldSignature.getClass();
                                    builder = new JvmFieldSignature.Builder();
                                    builder.k(jvmFieldSignature);
                                }
                                JvmFieldSignature jvmFieldSignature2 = (JvmFieldSignature) codedInputStream.h(JvmFieldSignature.f73613i, extensionRegistryLite);
                                this.d = jvmFieldSignature2;
                                if (builder != null) {
                                    builder.k(jvmFieldSignature2);
                                    this.d = builder.j();
                                }
                                this.f73630c |= 1;
                            } else if (iO == 18) {
                                if ((this.f73630c & 2) == 2) {
                                    JvmMethodSignature jvmMethodSignature2 = this.f73631e;
                                    jvmMethodSignature2.getClass();
                                    builderI2 = JvmMethodSignature.i(jvmMethodSignature2);
                                }
                                JvmMethodSignature jvmMethodSignature3 = (JvmMethodSignature) codedInputStream.h(JvmMethodSignature.f73621i, extensionRegistryLite);
                                this.f73631e = jvmMethodSignature3;
                                if (builderI2 != null) {
                                    builderI2.k(jvmMethodSignature3);
                                    this.f73631e = builderI2.j();
                                }
                                this.f73630c |= 2;
                            } else if (iO == 26) {
                                if ((this.f73630c & 4) == 4) {
                                    JvmMethodSignature jvmMethodSignature4 = this.f73632f;
                                    jvmMethodSignature4.getClass();
                                    builderI3 = JvmMethodSignature.i(jvmMethodSignature4);
                                }
                                JvmMethodSignature jvmMethodSignature5 = (JvmMethodSignature) codedInputStream.h(JvmMethodSignature.f73621i, extensionRegistryLite);
                                this.f73632f = jvmMethodSignature5;
                                if (builderI3 != null) {
                                    builderI3.k(jvmMethodSignature5);
                                    this.f73632f = builderI3.j();
                                }
                                this.f73630c |= 4;
                            } else if (iO == 34) {
                                if ((this.f73630c & 8) == 8) {
                                    JvmMethodSignature jvmMethodSignature6 = this.g;
                                    jvmMethodSignature6.getClass();
                                    builderI4 = JvmMethodSignature.i(jvmMethodSignature6);
                                }
                                JvmMethodSignature jvmMethodSignature7 = (JvmMethodSignature) codedInputStream.h(JvmMethodSignature.f73621i, extensionRegistryLite);
                                this.g = jvmMethodSignature7;
                                if (builderI4 != null) {
                                    builderI4.k(jvmMethodSignature7);
                                    this.g = builderI4.j();
                                }
                                this.f73630c |= 8;
                            } else if (iO == 42) {
                                if ((this.f73630c & 16) == 16) {
                                    JvmMethodSignature jvmMethodSignature8 = this.f73633h;
                                    jvmMethodSignature8.getClass();
                                    builderI = JvmMethodSignature.i(jvmMethodSignature8);
                                }
                                JvmMethodSignature jvmMethodSignature9 = (JvmMethodSignature) codedInputStream.h(JvmMethodSignature.f73621i, extensionRegistryLite);
                                this.f73633h = jvmMethodSignature9;
                                if (builderI != null) {
                                    builderI.k(jvmMethodSignature9);
                                    this.f73633h = builderI.j();
                                }
                                this.f73630c |= 16;
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
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73629b = output.j();
                    }
                    throw th;
                }
            }
            try {
                codedOutputStreamJ.k();
            } catch (IOException unused2) {
            } finally {
                this.f73629b = output.j();
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
        public final boolean a() {
            byte b2 = this.f73634i;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.f73634i = (byte) 1;
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
            int i2 = this.f73635j;
            if (i2 != -1) {
                return i2;
            }
            int iD = (this.f73630c & 1) == 1 ? CodedOutputStream.d(1, this.d) : 0;
            if ((this.f73630c & 2) == 2) {
                iD += CodedOutputStream.d(2, this.f73631e);
            }
            if ((this.f73630c & 4) == 4) {
                iD += CodedOutputStream.d(3, this.f73632f);
            }
            if ((this.f73630c & 8) == 8) {
                iD += CodedOutputStream.d(4, this.g);
            }
            if ((this.f73630c & 16) == 16) {
                iD += CodedOutputStream.d(5, this.f73633h);
            }
            int size = this.f73629b.size() + iD;
            this.f73635j = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final MessageLite.Builder d() {
            return new Builder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final void e(CodedOutputStream codedOutputStream) {
            c();
            if ((this.f73630c & 1) == 1) {
                codedOutputStream.o(1, this.d);
            }
            if ((this.f73630c & 2) == 2) {
                codedOutputStream.o(2, this.f73631e);
            }
            if ((this.f73630c & 4) == 4) {
                codedOutputStream.o(3, this.f73632f);
            }
            if ((this.f73630c & 8) == 8) {
                codedOutputStream.o(4, this.g);
            }
            if ((this.f73630c & 16) == 16) {
                codedOutputStream.o(5, this.f73633h);
            }
            codedOutputStream.r(this.f73629b);
        }

        public final boolean i() {
            return (this.f73630c & 4) == 4;
        }

        public JvmPropertySignature() {
            this.f73634i = (byte) -1;
            this.f73635j = -1;
            this.f73629b = ByteString.f73706b;
        }

        public JvmPropertySignature(Builder builder) {
            this.f73634i = (byte) -1;
            this.f73635j = -1;
            this.f73629b = builder.f73731b;
        }
    }
}

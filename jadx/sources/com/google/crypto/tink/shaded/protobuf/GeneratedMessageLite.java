package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite;
import com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite.Builder;
import defpackage.az;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.r81;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite<MessageType, BuilderType> {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, GeneratedMessageLite<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected UnknownFieldSetLite unknownFields = UnknownFieldSetLite.f34257f;

    public static abstract class Builder<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite.Builder<MessageType, BuilderType> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final GeneratedMessageLite f34187b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public GeneratedMessageLite f34188c;

        public Builder(GeneratedMessageLite generatedMessageLite) {
            this.f34187b = generatedMessageLite;
            if (generatedMessageLite.v()) {
                md.n("Default instance must be immutable.");
                throw null;
            }
            this.f34188c = generatedMessageLite.z();
        }

        public static void v(Object obj, Object obj2) {
            Protobuf protobuf = Protobuf.f34227c;
            protobuf.getClass();
            protobuf.a(obj.getClass()).a(obj, obj2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
        public final boolean a() {
            return GeneratedMessageLite.u(this.f34188c, false);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.MessageLite.Builder
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public final GeneratedMessageLite build() {
            GeneratedMessageLite generatedMessageLiteQ = q();
            generatedMessageLiteQ.getClass();
            if (GeneratedMessageLite.u(generatedMessageLiteQ, true)) {
                return generatedMessageLiteQ;
            }
            throw new UninitializedMessageException(generatedMessageLiteQ);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.MessageLite.Builder
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public final GeneratedMessageLite q() {
            boolean zV = this.f34188c.v();
            GeneratedMessageLite generatedMessageLite = this.f34188c;
            if (!zV) {
                return generatedMessageLite;
            }
            generatedMessageLite.getClass();
            Protobuf protobuf = Protobuf.f34227c;
            protobuf.getClass();
            protobuf.a(generatedMessageLite.getClass()).c(generatedMessageLite);
            generatedMessageLite.w();
            return this.f34188c;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Builder clone() {
            Builder builderD = this.f34187b.d();
            builderD.f34188c = q();
            return builderD;
        }

        public final void u() {
            if (this.f34188c.v()) {
                return;
            }
            GeneratedMessageLite generatedMessageLiteZ = this.f34187b.z();
            v(generatedMessageLiteZ, this.f34188c);
            this.f34188c = generatedMessageLiteZ;
        }
    }

    public static class DefaultInstanceBasedParser<T extends GeneratedMessageLite<T, ?>> extends AbstractParser<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GeneratedMessageLite f34189a;

        public DefaultInstanceBasedParser(T t) {
            this.f34189a = t;
        }
    }

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType> extends GeneratedMessageLite<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        protected FieldSet<Object> extensions = FieldSet.d;

        public final FieldSet G() {
            FieldSet<Object> fieldSet = this.extensions;
            if (fieldSet.f34180b) {
                this.extensions = fieldSet.clone();
            }
            return this.extensions;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLite
        public final /* bridge */ /* synthetic */ Builder b() {
            return b();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLite
        public final /* bridge */ /* synthetic */ Builder d() {
            return d();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite f() {
            return f();
        }
    }

    public interface ExtendableMessageOrBuilder<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType> extends MessageLiteOrBuilder {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MethodToInvoke {
        private static final /* synthetic */ MethodToInvoke[] $VALUES;
        public static final MethodToInvoke BUILD_MESSAGE_INFO;
        public static final MethodToInvoke GET_DEFAULT_INSTANCE;
        public static final MethodToInvoke GET_MEMOIZED_IS_INITIALIZED;
        public static final MethodToInvoke GET_PARSER;
        public static final MethodToInvoke NEW_BUILDER;
        public static final MethodToInvoke NEW_MUTABLE_INSTANCE;
        public static final MethodToInvoke SET_MEMOIZED_IS_INITIALIZED;

        static {
            MethodToInvoke methodToInvoke = new MethodToInvoke("GET_MEMOIZED_IS_INITIALIZED", 0);
            GET_MEMOIZED_IS_INITIALIZED = methodToInvoke;
            MethodToInvoke methodToInvoke2 = new MethodToInvoke("SET_MEMOIZED_IS_INITIALIZED", 1);
            SET_MEMOIZED_IS_INITIALIZED = methodToInvoke2;
            MethodToInvoke methodToInvoke3 = new MethodToInvoke("BUILD_MESSAGE_INFO", 2);
            BUILD_MESSAGE_INFO = methodToInvoke3;
            MethodToInvoke methodToInvoke4 = new MethodToInvoke("NEW_MUTABLE_INSTANCE", 3);
            NEW_MUTABLE_INSTANCE = methodToInvoke4;
            MethodToInvoke methodToInvoke5 = new MethodToInvoke("NEW_BUILDER", 4);
            NEW_BUILDER = methodToInvoke5;
            MethodToInvoke methodToInvoke6 = new MethodToInvoke("GET_DEFAULT_INSTANCE", 5);
            GET_DEFAULT_INSTANCE = methodToInvoke6;
            MethodToInvoke methodToInvoke7 = new MethodToInvoke("GET_PARSER", 6);
            GET_PARSER = methodToInvoke7;
            $VALUES = new MethodToInvoke[]{methodToInvoke, methodToInvoke2, methodToInvoke3, methodToInvoke4, methodToInvoke5, methodToInvoke6, methodToInvoke7};
        }

        public static MethodToInvoke valueOf(String str) {
            return (MethodToInvoke) Enum.valueOf(MethodToInvoke.class, str);
        }

        public static MethodToInvoke[] values() {
            return (MethodToInvoke[]) $VALUES.clone();
        }
    }

    public static GeneratedMessageLite A(Keyset keyset, byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        int length = bArr.length;
        GeneratedMessageLite generatedMessageLiteZ = keyset.z();
        try {
            Protobuf protobuf = Protobuf.f34227c;
            protobuf.getClass();
            Schema schemaA = protobuf.a(generatedMessageLiteZ.getClass());
            schemaA.e(generatedMessageLiteZ, bArr, 0, length, new ArrayDecoders.Registers(extensionRegistryLite));
            schemaA.c(generatedMessageLiteZ);
            m(generatedMessageLiteZ);
            return generatedMessageLiteZ;
        } catch (InvalidProtocolBufferException e2) {
            if (e2.f34192b) {
                throw new InvalidProtocolBufferException((IOException) e2);
            }
            throw e2;
        } catch (UninitializedMessageException e3) {
            throw new InvalidProtocolBufferException(e3.getMessage());
        } catch (IOException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw new InvalidProtocolBufferException(e4);
        } catch (IndexOutOfBoundsException unused) {
            throw InvalidProtocolBufferException.g();
        }
    }

    public static GeneratedMessageLite B(GeneratedMessageLite generatedMessageLite, ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
        CodedInputStream codedInputStreamF = CodedInputStream.f(true, literalByteString.n(), literalByteString.size(), literalByteString.f34148e);
        GeneratedMessageLite generatedMessageLiteD = D(generatedMessageLite, codedInputStreamF, extensionRegistryLite);
        codedInputStreamF.a(0);
        m(generatedMessageLiteD);
        return generatedMessageLiteD;
    }

    public static GeneratedMessageLite C(GeneratedMessageLite generatedMessageLite, ByteArrayInputStream byteArrayInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        GeneratedMessageLite generatedMessageLiteD = D(generatedMessageLite, new CodedInputStream.StreamDecoder(byteArrayInputStream), extensionRegistryLite);
        m(generatedMessageLiteD);
        return generatedMessageLiteD;
    }

    public static GeneratedMessageLite D(GeneratedMessageLite generatedMessageLite, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        GeneratedMessageLite generatedMessageLiteZ = generatedMessageLite.z();
        try {
            Protobuf protobuf = Protobuf.f34227c;
            protobuf.getClass();
            Schema schemaA = protobuf.a(generatedMessageLiteZ.getClass());
            CodedInputStreamReader codedInputStreamReader = codedInputStream.f34150b;
            if (codedInputStreamReader == null) {
                codedInputStreamReader = new CodedInputStreamReader(codedInputStream);
            }
            schemaA.f(generatedMessageLiteZ, codedInputStreamReader, extensionRegistryLite);
            schemaA.c(generatedMessageLiteZ);
            return generatedMessageLiteZ;
        } catch (InvalidProtocolBufferException e2) {
            if (e2.f34192b) {
                throw new InvalidProtocolBufferException((IOException) e2);
            }
            throw e2;
        } catch (UninitializedMessageException e3) {
            throw new InvalidProtocolBufferException(e3.getMessage());
        } catch (IOException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw new InvalidProtocolBufferException(e4);
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e5.getCause());
            }
            throw e5;
        }
    }

    public static void E(Class cls, GeneratedMessageLite generatedMessageLite) {
        generatedMessageLite.w();
        defaultInstanceMap.put(cls, generatedMessageLite);
    }

    public static void m(GeneratedMessageLite generatedMessageLite) throws InvalidProtocolBufferException {
        if (!u(generatedMessageLite, true)) {
            throw new InvalidProtocolBufferException(new UninitializedMessageException(generatedMessageLite).getMessage());
        }
    }

    public static Internal.ProtobufList p() {
        return ProtobufArrayList.f34230e;
    }

    public static GeneratedMessageLite r(Class cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = defaultInstanceMap.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e2) {
                az.s("Class initialization cannot fail.", e2);
                return null;
            }
        }
        if (generatedMessageLite != null) {
            return generatedMessageLite;
        }
        GeneratedMessageLite<?, ?> generatedMessageLiteF = ((GeneratedMessageLite) UnsafeUtil.b(cls)).f();
        if (generatedMessageLiteF != null) {
            defaultInstanceMap.put(cls, generatedMessageLiteF);
            return generatedMessageLiteF;
        }
        r81.b();
        return null;
    }

    public static Object t(Method method, GeneratedMessageLite generatedMessageLite, Object... objArr) {
        try {
            return method.invoke(generatedMessageLite, objArr);
        } catch (IllegalAccessException e2) {
            r81.g("Couldn't use Java reflection to implement protocol message reflection.", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            r81.g("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static final boolean u(GeneratedMessageLite generatedMessageLite, boolean z) {
        byte bByteValue = ((Byte) generatedMessageLite.o(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        Protobuf protobuf = Protobuf.f34227c;
        protobuf.getClass();
        boolean zD = protobuf.a(generatedMessageLite.getClass()).d(generatedMessageLite);
        if (z) {
            generatedMessageLite.o(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED);
        }
        return zD;
    }

    public static Object y(MessageLite messageLite, String str, Object[] objArr) {
        return new RawMessageInfo(messageLite, str, objArr);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLite
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public final Builder b() {
        Builder builder = (Builder) o(MethodToInvoke.NEW_BUILDER);
        if (!builder.f34187b.equals(this)) {
            builder.u();
            Builder.v(builder.f34188c, this);
        }
        return builder;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        return u(this, true);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLite
    public final int c() {
        return j(null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Protobuf protobuf = Protobuf.f34227c;
        protobuf.getClass();
        return protobuf.a(getClass()).g(this, (GeneratedMessageLite) obj);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLite
    public final Parser g() {
        return (Parser) o(MethodToInvoke.GET_PARSER);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLite
    public final void h(CodedOutputStream codedOutputStream) {
        Protobuf protobuf = Protobuf.f34227c;
        protobuf.getClass();
        Schema schemaA = protobuf.a(getClass());
        CodedOutputStreamWriter codedOutputStreamWriter = codedOutputStream.f34167a;
        if (codedOutputStreamWriter == null) {
            codedOutputStreamWriter = new CodedOutputStreamWriter(codedOutputStream);
        }
        schemaA.i(this, codedOutputStreamWriter);
    }

    public final int hashCode() {
        if (v()) {
            Protobuf protobuf = Protobuf.f34227c;
            protobuf.getClass();
            return protobuf.a(getClass()).h(this);
        }
        if (this.memoizedHashCode == 0) {
            Protobuf protobuf2 = Protobuf.f34227c;
            protobuf2.getClass();
            this.memoizedHashCode = protobuf2.a(getClass()).h(this);
        }
        return this.memoizedHashCode;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractMessageLite
    public final int i() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractMessageLite
    public final int j(Schema schema) {
        int iJ;
        int iJ2;
        if (v()) {
            if (schema == null) {
                Protobuf protobuf = Protobuf.f34227c;
                protobuf.getClass();
                iJ2 = protobuf.a(getClass()).j(this);
            } else {
                iJ2 = schema.j(this);
            }
            if (iJ2 >= 0) {
                return iJ2;
            }
            md.k(pq0.k(iJ2, "serialized size must be non-negative, was "));
            return 0;
        }
        if (i() != Integer.MAX_VALUE) {
            return i();
        }
        if (schema == null) {
            Protobuf protobuf2 = Protobuf.f34227c;
            protobuf2.getClass();
            iJ = protobuf2.a(getClass()).j(this);
        } else {
            iJ = schema.j(this);
        }
        l(iJ);
        return iJ;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractMessageLite
    public final void l(int i2) {
        if (i2 < 0) {
            md.k(pq0.k(i2, "serialized size must be non-negative, was "));
        } else {
            this.memoizedSerializedSize = (i2 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        }
    }

    public final Builder n() {
        return (Builder) o(MethodToInvoke.NEW_BUILDER);
    }

    public abstract Object o(MethodToInvoke methodToInvoke);

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final GeneratedMessageLite f() {
        return (GeneratedMessageLite) o(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = MessageLiteToString.f34212a;
        StringBuilder sbU = n00.u("# ", string);
        MessageLiteToString.c(this, sbU, 0);
        return sbU.toString();
    }

    public final boolean v() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    public final void w() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLite
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public final Builder d() {
        return (Builder) o(MethodToInvoke.NEW_BUILDER);
    }

    public final GeneratedMessageLite z() {
        return (GeneratedMessageLite) o(MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }
}

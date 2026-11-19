package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.PreferencesProto$PreferenceMap;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite.Builder;
import defpackage.az;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.r81;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite<MessageType, BuilderType> {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, GeneratedMessageLite<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected UnknownFieldSetLite unknownFields = UnknownFieldSetLite.f13012f;

    public static abstract class Builder<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite.Builder<MessageType, BuilderType> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final GeneratedMessageLite f12944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public GeneratedMessageLite f12945c;

        public Builder(GeneratedMessageLite generatedMessageLite) {
            this.f12944b = generatedMessageLite;
            if (generatedMessageLite.t()) {
                md.n("Default instance must be immutable.");
                throw null;
            }
            this.f12945c = generatedMessageLite.w();
        }

        public static void l(Object obj, Object obj2) {
            Protobuf protobuf = Protobuf.f12985c;
            protobuf.getClass();
            protobuf.a(obj.getClass()).a(obj, obj2);
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
        public final boolean a() {
            return GeneratedMessageLite.s(this.f12945c, false);
        }

        @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder
        public final Object clone() {
            Builder builder = (Builder) this.f12944b.n(MethodToInvoke.NEW_BUILDER);
            boolean zT = this.f12945c.t();
            GeneratedMessageLite generatedMessageLite = this.f12945c;
            if (zT) {
                generatedMessageLite.getClass();
                Protobuf protobuf = Protobuf.f12985c;
                protobuf.getClass();
                protobuf.a(generatedMessageLite.getClass()).c(generatedMessageLite);
                generatedMessageLite.u();
                generatedMessageLite = this.f12945c;
            }
            builder.f12945c = generatedMessageLite;
            return builder;
        }

        @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: i */
        public final Builder clone() {
            Builder builder = (Builder) this.f12944b.n(MethodToInvoke.NEW_BUILDER);
            boolean zT = this.f12945c.t();
            GeneratedMessageLite generatedMessageLite = this.f12945c;
            if (zT) {
                generatedMessageLite.getClass();
                Protobuf protobuf = Protobuf.f12985c;
                protobuf.getClass();
                protobuf.a(generatedMessageLite.getClass()).c(generatedMessageLite);
                generatedMessageLite.u();
                generatedMessageLite = this.f12945c;
            }
            builder.f12945c = generatedMessageLite;
            return builder;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public final GeneratedMessageLite o() {
            boolean zT = this.f12945c.t();
            GeneratedMessageLite generatedMessageLite = this.f12945c;
            if (zT) {
                generatedMessageLite.getClass();
                Protobuf protobuf = Protobuf.f12985c;
                protobuf.getClass();
                protobuf.a(generatedMessageLite.getClass()).c(generatedMessageLite);
                generatedMessageLite.u();
                generatedMessageLite = this.f12945c;
            }
            generatedMessageLite.getClass();
            if (GeneratedMessageLite.s(generatedMessageLite, true)) {
                return generatedMessageLite;
            }
            throw new UninitializedMessageException(generatedMessageLite);
        }

        public final void k() {
            if (this.f12945c.t()) {
                return;
            }
            GeneratedMessageLite generatedMessageLiteW = this.f12944b.w();
            l(generatedMessageLiteW, this.f12945c);
            this.f12945c = generatedMessageLiteW;
        }
    }

    public static class DefaultInstanceBasedParser<T extends GeneratedMessageLite<T, ?>> extends AbstractParser<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GeneratedMessageLite f12946a;

        public DefaultInstanceBasedParser(T t) {
            this.f12946a = t;
        }
    }

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType> extends GeneratedMessageLite<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        protected FieldSet<Object> extensions = FieldSet.d;

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite, androidx.datastore.preferences.protobuf.MessageLite
        public final Builder b() {
            Builder builder = (Builder) n(MethodToInvoke.NEW_BUILDER);
            if (builder.f12944b.equals(this)) {
                return builder;
            }
            builder.k();
            Builder.l(builder.f12945c, this);
            return builder;
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite, androidx.datastore.preferences.protobuf.MessageLite
        public final Builder d() {
            return (Builder) n(MethodToInvoke.NEW_BUILDER);
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite, androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
        public final GeneratedMessageLite f() {
            return (GeneratedMessageLite) n(MethodToInvoke.GET_DEFAULT_INSTANCE);
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

    public static Internal.ProtobufList p() {
        return ProtobufArrayList.f12988e;
    }

    public static GeneratedMessageLite q(Class cls) {
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
        GeneratedMessageLite<?, ?> generatedMessageLite2 = (GeneratedMessageLite) ((GeneratedMessageLite) UnsafeUtil.d(cls)).n(MethodToInvoke.GET_DEFAULT_INSTANCE);
        if (generatedMessageLite2 != null) {
            defaultInstanceMap.put(cls, generatedMessageLite2);
            return generatedMessageLite2;
        }
        r81.b();
        return null;
    }

    public static Object r(Method method, GeneratedMessageLite generatedMessageLite, Object... objArr) {
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

    public static final boolean s(GeneratedMessageLite generatedMessageLite, boolean z) {
        byte bByteValue = ((Byte) generatedMessageLite.n(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        Protobuf protobuf = Protobuf.f12985c;
        protobuf.getClass();
        boolean zD = protobuf.a(generatedMessageLite.getClass()).d(generatedMessageLite);
        if (z) {
            generatedMessageLite.n(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED);
        }
        return zD;
    }

    public static Object v(GeneratedMessageLite generatedMessageLite, String str, Object[] objArr) {
        return new RawMessageInfo(generatedMessageLite, str, objArr);
    }

    public static GeneratedMessageLite x(PreferencesProto$PreferenceMap preferencesProto$PreferenceMap, FileInputStream fileInputStream) throws InvalidProtocolBufferException {
        GeneratedMessageLite generatedMessageLiteY = y(preferencesProto$PreferenceMap, new CodedInputStream.StreamDecoder(fileInputStream), ExtensionRegistryLite.a());
        if (s(generatedMessageLiteY, true)) {
            return generatedMessageLiteY;
        }
        throw new InvalidProtocolBufferException(new UninitializedMessageException(generatedMessageLiteY).getMessage());
    }

    public static GeneratedMessageLite y(GeneratedMessageLite generatedMessageLite, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        GeneratedMessageLite generatedMessageLiteW = generatedMessageLite.w();
        try {
            Protobuf protobuf = Protobuf.f12985c;
            protobuf.getClass();
            Schema schemaA = protobuf.a(generatedMessageLiteW.getClass());
            CodedInputStreamReader codedInputStreamReader = codedInputStream.f12904b;
            if (codedInputStreamReader == null) {
                codedInputStreamReader = new CodedInputStreamReader(codedInputStream);
            }
            schemaA.f(generatedMessageLiteW, codedInputStreamReader, extensionRegistryLite);
            schemaA.c(generatedMessageLiteW);
            return generatedMessageLiteW;
        } catch (InvalidProtocolBufferException e2) {
            if (e2.f12949b) {
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

    public static void z(Class cls, GeneratedMessageLite generatedMessageLite) {
        generatedMessageLite.u();
        defaultInstanceMap.put(cls, generatedMessageLite);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        return s(this, true);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public Builder b() {
        Builder builder = (Builder) n(MethodToInvoke.NEW_BUILDER);
        if (builder.f12944b.equals(this)) {
            return builder;
        }
        builder.k();
        Builder.l(builder.f12945c, this);
        return builder;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public final int c() {
        return k(null);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public Builder d() {
        return (Builder) n(MethodToInvoke.NEW_BUILDER);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Protobuf protobuf = Protobuf.f12985c;
        protobuf.getClass();
        return protobuf.a(getClass()).i(this, (GeneratedMessageLite) obj);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
    public GeneratedMessageLite f() {
        return (GeneratedMessageLite) n(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public final Parser g() {
        return (Parser) n(MethodToInvoke.GET_PARSER);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public final void h(CodedOutputStream codedOutputStream) {
        Protobuf protobuf = Protobuf.f12985c;
        protobuf.getClass();
        Schema schemaA = protobuf.a(getClass());
        CodedOutputStreamWriter codedOutputStreamWriter = codedOutputStream.f12922a;
        if (codedOutputStreamWriter == null) {
            codedOutputStreamWriter = new CodedOutputStreamWriter(codedOutputStream);
        }
        schemaA.h(this, codedOutputStreamWriter);
    }

    public final int hashCode() {
        if (t()) {
            Protobuf protobuf = Protobuf.f12985c;
            protobuf.getClass();
            return protobuf.a(getClass()).g(this);
        }
        if (this.memoizedHashCode == 0) {
            Protobuf protobuf2 = Protobuf.f12985c;
            protobuf2.getClass();
            this.memoizedHashCode = protobuf2.a(getClass()).g(this);
        }
        return this.memoizedHashCode;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite
    public final int j() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite
    public final int k(Schema schema) {
        int iE;
        int iE2;
        if (t()) {
            if (schema == null) {
                Protobuf protobuf = Protobuf.f12985c;
                protobuf.getClass();
                iE2 = protobuf.a(getClass()).e(this);
            } else {
                iE2 = schema.e(this);
            }
            if (iE2 >= 0) {
                return iE2;
            }
            md.k(pq0.k(iE2, "serialized size must be non-negative, was "));
            return 0;
        }
        if (j() != Integer.MAX_VALUE) {
            return j();
        }
        if (schema == null) {
            Protobuf protobuf2 = Protobuf.f12985c;
            protobuf2.getClass();
            iE = protobuf2.a(getClass()).e(this);
        } else {
            iE = schema.e(this);
        }
        l(iE);
        return iE;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite
    public final void l(int i2) {
        if (i2 < 0) {
            md.k(pq0.k(i2, "serialized size must be non-negative, was "));
        } else {
            this.memoizedSerializedSize = (i2 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        }
    }

    public abstract Object n(MethodToInvoke methodToInvoke);

    public final boolean t() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = MessageLiteToString.f12970a;
        StringBuilder sbU = n00.u("# ", string);
        MessageLiteToString.c(this, sbU, 0);
        return sbU.toString();
    }

    public final void u() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    public final GeneratedMessageLite w() {
        return (GeneratedMessageLite) n(MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }
}

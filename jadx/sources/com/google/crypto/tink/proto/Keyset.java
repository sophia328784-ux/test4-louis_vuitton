package com.google.crypto.tink.proto;

import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite;
import com.google.crypto.tink.shaded.protobuf.Internal;
import com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder;
import com.google.crypto.tink.shaded.protobuf.Parser;
import defpackage.x1;
import java.io.ByteArrayInputStream;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Keyset extends GeneratedMessageLite<Keyset, Builder> implements KeysetOrBuilder {
    private static final Keyset DEFAULT_INSTANCE;
    public static final int KEY_FIELD_NUMBER = 2;
    private static volatile Parser<Keyset> PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private Internal.ProtobufList<Key> key_ = GeneratedMessageLite.p();
    private int primaryKeyId_;

    /* JADX INFO: renamed from: com.google.crypto.tink.proto.Keyset$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f34126a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f34126a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34126a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34126a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34126a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34126a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34126a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34126a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Keyset, Builder> implements KeysetOrBuilder {
        @Override // com.google.crypto.tink.shaded.protobuf.AbstractMessageLite.Builder
        public final /* bridge */ /* synthetic */ Object clone() {
            return i();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
        public final GeneratedMessageLite f() {
            return this.f34187b;
        }
    }

    public static final class Key extends GeneratedMessageLite<Key, Builder> implements KeyOrBuilder {
        private static final Key DEFAULT_INSTANCE;
        public static final int KEY_DATA_FIELD_NUMBER = 1;
        public static final int KEY_ID_FIELD_NUMBER = 3;
        public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 4;
        private static volatile Parser<Key> PARSER = null;
        public static final int STATUS_FIELD_NUMBER = 2;
        private KeyData keyData_;
        private int keyId_;
        private int outputPrefixType_;
        private int status_;

        public static final class Builder extends GeneratedMessageLite.Builder<Key, Builder> implements KeyOrBuilder {
            @Override // com.google.crypto.tink.shaded.protobuf.AbstractMessageLite.Builder
            public final /* bridge */ /* synthetic */ Object clone() {
                return i();
            }

            @Override // com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
            public final GeneratedMessageLite f() {
                return this.f34187b;
            }
        }

        static {
            Key key = new Key();
            DEFAULT_INSTANCE = key;
            GeneratedMessageLite.E(Key.class, key);
        }

        public static void H(Key key, KeyData keyData) {
            key.getClass();
            keyData.getClass();
            key.keyData_ = keyData;
        }

        public static void I(Key key, OutputPrefixType outputPrefixType) {
            key.getClass();
            key.outputPrefixType_ = outputPrefixType.m();
        }

        public static void J(Key key, KeyStatusType keyStatusType) {
            key.getClass();
            key.status_ = keyStatusType.m();
        }

        public static void K(Key key, int i2) {
            key.keyId_ = i2;
        }

        public static Builder Q() {
            return (Builder) DEFAULT_INSTANCE.n();
        }

        public final KeyData L() {
            KeyData keyData = this.keyData_;
            return keyData == null ? KeyData.K() : keyData;
        }

        public final int M() {
            return this.keyId_;
        }

        public final OutputPrefixType N() {
            OutputPrefixType outputPrefixTypeA = OutputPrefixType.a(this.outputPrefixType_);
            return outputPrefixTypeA == null ? OutputPrefixType.UNRECOGNIZED : outputPrefixTypeA;
        }

        public final KeyStatusType O() {
            KeyStatusType keyStatusType;
            int i2 = this.status_;
            if (i2 == 0) {
                keyStatusType = KeyStatusType.UNKNOWN_STATUS;
            } else if (i2 == 1) {
                keyStatusType = KeyStatusType.ENABLED;
            } else if (i2 != 2) {
                keyStatusType = i2 != 3 ? null : KeyStatusType.DESTROYED;
            } else {
                keyStatusType = KeyStatusType.DISABLED;
            }
            return keyStatusType == null ? KeyStatusType.UNRECOGNIZED : keyStatusType;
        }

        public final boolean P() {
            return this.keyData_ != null;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLite
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder b() {
            return b();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLite
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder d() {
            return d();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite f() {
            return f();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite
        public final Object o(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
            Parser defaultInstanceBasedParser;
            switch (AnonymousClass1.f34126a[methodToInvoke.ordinal()]) {
                case 1:
                    return new Key();
                case 2:
                    return new Builder(DEFAULT_INSTANCE);
                case 3:
                    return GeneratedMessageLite.y(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"keyData_", "status_", "keyId_", "outputPrefixType_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Key> parser = PARSER;
                    if (parser != null) {
                        return parser;
                    }
                    synchronized (Key.class) {
                        try {
                            defaultInstanceBasedParser = PARSER;
                            if (defaultInstanceBasedParser == null) {
                                defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return defaultInstanceBasedParser;
                case 6:
                    return (byte) 1;
                default:
                    x1.i();
                case 7:
                    return null;
            }
        }
    }

    public interface KeyOrBuilder extends MessageLiteOrBuilder {
    }

    static {
        Keyset keyset = new Keyset();
        DEFAULT_INSTANCE = keyset;
        GeneratedMessageLite.E(Keyset.class, keyset);
    }

    public static void H(Keyset keyset, int i2) {
        keyset.primaryKeyId_ = i2;
    }

    public static void I(Keyset keyset, Key key) {
        keyset.getClass();
        Internal.ProtobufList<Key> protobufList = keyset.key_;
        if (!protobufList.m0()) {
            int size = protobufList.size();
            keyset.key_ = protobufList.c(size == 0 ? 10 : size * 2);
        }
        keyset.key_.add(key);
    }

    public static Builder N() {
        return (Builder) DEFAULT_INSTANCE.n();
    }

    public static Keyset O(ByteArrayInputStream byteArrayInputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (Keyset) GeneratedMessageLite.C(DEFAULT_INSTANCE, byteArrayInputStream, extensionRegistryLite);
    }

    public static Keyset P(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
        return (Keyset) GeneratedMessageLite.A(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public final Key J(int i2) {
        return this.key_.get(i2);
    }

    public final int K() {
        return this.key_.size();
    }

    public final List L() {
        return this.key_;
    }

    public final int M() {
        return this.primaryKeyId_;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLite
    public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder b() {
        return b();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLite
    public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder d() {
        return d();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite, com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
    public final /* bridge */ /* synthetic */ GeneratedMessageLite f() {
        return f();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite
    public final Object o(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser defaultInstanceBasedParser;
        switch (AnonymousClass1.f34126a[methodToInvoke.ordinal()]) {
            case 1:
                return new Keyset();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return GeneratedMessageLite.y(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "key_", Key.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<Keyset> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (Keyset.class) {
                    try {
                        defaultInstanceBasedParser = PARSER;
                        if (defaultInstanceBasedParser == null) {
                            defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                            PARSER = defaultInstanceBasedParser;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return defaultInstanceBasedParser;
            case 6:
                return (byte) 1;
            default:
                x1.i();
            case 7:
                return null;
        }
    }
}

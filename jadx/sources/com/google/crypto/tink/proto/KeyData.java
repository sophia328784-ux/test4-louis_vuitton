package com.google.crypto.tink.proto;

import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite;
import com.google.crypto.tink.shaded.protobuf.Internal;
import com.google.crypto.tink.shaded.protobuf.Parser;
import defpackage.md;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyData extends GeneratedMessageLite<KeyData, Builder> implements KeyDataOrBuilder {
    private static final KeyData DEFAULT_INSTANCE;
    public static final int KEY_MATERIAL_TYPE_FIELD_NUMBER = 3;
    private static volatile Parser<KeyData> PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int keyMaterialType_;
    private String typeUrl_ = "";
    private ByteString value_ = ByteString.f34141c;

    /* JADX INFO: renamed from: com.google.crypto.tink.proto.KeyData$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f34123a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f34123a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34123a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34123a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34123a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34123a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34123a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34123a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<KeyData, Builder> implements KeyDataOrBuilder {
        @Override // com.google.crypto.tink.shaded.protobuf.AbstractMessageLite.Builder
        public final /* bridge */ /* synthetic */ Object clone() {
            return i();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.MessageLiteOrBuilder
        public final GeneratedMessageLite f() {
            return this.f34187b;
        }
    }

    public enum KeyMaterialType implements Internal.EnumLite {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);

        public static final int ASYMMETRIC_PRIVATE_VALUE = 2;
        public static final int ASYMMETRIC_PUBLIC_VALUE = 3;
        public static final int REMOTE_VALUE = 4;
        public static final int SYMMETRIC_VALUE = 1;
        public static final int UNKNOWN_KEYMATERIAL_VALUE = 0;
        private static final Internal.EnumLiteMap<KeyMaterialType> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: com.google.crypto.tink.proto.KeyData$KeyMaterialType$1, reason: invalid class name */
        public class AnonymousClass1 implements Internal.EnumLiteMap<KeyMaterialType> {
        }

        KeyMaterialType(int i2) {
            this.value = i2;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.Internal.EnumLite
        public final int m() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            md.n("Can't get the number of an unknown enum value.");
            return 0;
        }
    }

    static {
        KeyData keyData = new KeyData();
        DEFAULT_INSTANCE = keyData;
        GeneratedMessageLite.E(KeyData.class, keyData);
    }

    public static void H(KeyData keyData, String str) {
        keyData.getClass();
        str.getClass();
        keyData.typeUrl_ = str;
    }

    public static void I(KeyData keyData, ByteString byteString) {
        keyData.getClass();
        byteString.getClass();
        keyData.value_ = byteString;
    }

    public static void J(KeyData keyData, KeyMaterialType keyMaterialType) {
        keyData.getClass();
        keyData.keyMaterialType_ = keyMaterialType.m();
    }

    public static KeyData K() {
        return DEFAULT_INSTANCE;
    }

    public static Builder O() {
        return (Builder) DEFAULT_INSTANCE.n();
    }

    public final KeyMaterialType L() {
        KeyMaterialType keyMaterialType;
        int i2 = this.keyMaterialType_;
        if (i2 == 0) {
            keyMaterialType = KeyMaterialType.UNKNOWN_KEYMATERIAL;
        } else if (i2 == 1) {
            keyMaterialType = KeyMaterialType.SYMMETRIC;
        } else if (i2 == 2) {
            keyMaterialType = KeyMaterialType.ASYMMETRIC_PRIVATE;
        } else if (i2 != 3) {
            keyMaterialType = i2 != 4 ? null : KeyMaterialType.REMOTE;
        } else {
            keyMaterialType = KeyMaterialType.ASYMMETRIC_PUBLIC;
        }
        return keyMaterialType == null ? KeyMaterialType.UNRECOGNIZED : keyMaterialType;
    }

    public final String M() {
        return this.typeUrl_;
    }

    public final ByteString N() {
        return this.value_;
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
        switch (AnonymousClass1.f34123a[methodToInvoke.ordinal()]) {
            case 1:
                return new KeyData();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return GeneratedMessageLite.y(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"typeUrl_", "value_", "keyMaterialType_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<KeyData> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (KeyData.class) {
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

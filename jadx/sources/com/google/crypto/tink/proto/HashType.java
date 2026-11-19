package com.google.crypto.tink.proto;

import com.google.crypto.tink.shaded.protobuf.Internal;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public enum HashType implements Internal.EnumLite {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    SHA224(5),
    UNRECOGNIZED(-1);

    public static final int SHA1_VALUE = 1;
    public static final int SHA224_VALUE = 5;
    public static final int SHA256_VALUE = 3;
    public static final int SHA384_VALUE = 2;
    public static final int SHA512_VALUE = 4;
    public static final int UNKNOWN_HASH_VALUE = 0;
    private static final Internal.EnumLiteMap<HashType> internalValueMap = new AnonymousClass1();
    private final int value;

    /* JADX INFO: renamed from: com.google.crypto.tink.proto.HashType$1, reason: invalid class name */
    public class AnonymousClass1 implements Internal.EnumLiteMap<HashType> {
    }

    HashType(int i2) {
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

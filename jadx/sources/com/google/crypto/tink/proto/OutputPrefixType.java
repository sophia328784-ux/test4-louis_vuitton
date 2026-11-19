package com.google.crypto.tink.proto;

import com.google.crypto.tink.shaded.protobuf.Internal;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public enum OutputPrefixType implements Internal.EnumLite {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);

    public static final int CRUNCHY_VALUE = 4;
    public static final int LEGACY_VALUE = 2;
    public static final int RAW_VALUE = 3;
    public static final int TINK_VALUE = 1;
    public static final int UNKNOWN_PREFIX_VALUE = 0;
    private static final Internal.EnumLiteMap<OutputPrefixType> internalValueMap = new AnonymousClass1();
    private final int value;

    /* JADX INFO: renamed from: com.google.crypto.tink.proto.OutputPrefixType$1, reason: invalid class name */
    public class AnonymousClass1 implements Internal.EnumLiteMap<OutputPrefixType> {
    }

    OutputPrefixType(int i2) {
        this.value = i2;
    }

    public static OutputPrefixType a(int i2) {
        if (i2 == 0) {
            return UNKNOWN_PREFIX;
        }
        if (i2 == 1) {
            return TINK;
        }
        if (i2 == 2) {
            return LEGACY;
        }
        if (i2 == 3) {
            return RAW;
        }
        if (i2 != 4) {
            return null;
        }
        return CRUNCHY;
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

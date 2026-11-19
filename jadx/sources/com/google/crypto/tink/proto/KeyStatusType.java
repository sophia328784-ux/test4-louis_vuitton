package com.google.crypto.tink.proto;

import com.google.crypto.tink.shaded.protobuf.Internal;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public enum KeyStatusType implements Internal.EnumLite {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);

    public static final int DESTROYED_VALUE = 3;
    public static final int DISABLED_VALUE = 2;
    public static final int ENABLED_VALUE = 1;
    public static final int UNKNOWN_STATUS_VALUE = 0;
    private static final Internal.EnumLiteMap<KeyStatusType> internalValueMap = new AnonymousClass1();
    private final int value;

    /* JADX INFO: renamed from: com.google.crypto.tink.proto.KeyStatusType$1, reason: invalid class name */
    public class AnonymousClass1 implements Internal.EnumLiteMap<KeyStatusType> {
    }

    KeyStatusType(int i2) {
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

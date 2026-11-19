package com.vuitton.foundation.model.domain.model.authentication.oauth;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;", "", "ADDRESS1", "ADDRESS2", "ADDRESS3", "UNDEFINED", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InvalidAddressScope {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InvalidAddressScope[] $VALUES;
    public static final InvalidAddressScope ADDRESS1;
    public static final InvalidAddressScope ADDRESS2;
    public static final InvalidAddressScope ADDRESS3;
    public static final InvalidAddressScope UNDEFINED;

    static {
        InvalidAddressScope invalidAddressScope = new InvalidAddressScope("ADDRESS1", 0);
        ADDRESS1 = invalidAddressScope;
        InvalidAddressScope invalidAddressScope2 = new InvalidAddressScope("ADDRESS2", 1);
        ADDRESS2 = invalidAddressScope2;
        InvalidAddressScope invalidAddressScope3 = new InvalidAddressScope("ADDRESS3", 2);
        ADDRESS3 = invalidAddressScope3;
        InvalidAddressScope invalidAddressScope4 = new InvalidAddressScope("UNDEFINED", 3);
        UNDEFINED = invalidAddressScope4;
        InvalidAddressScope[] invalidAddressScopeArr = {invalidAddressScope, invalidAddressScope2, invalidAddressScope3, invalidAddressScope4};
        $VALUES = invalidAddressScopeArr;
        $ENTRIES = EnumEntriesKt.a(invalidAddressScopeArr);
    }

    public static InvalidAddressScope valueOf(String str) {
        return (InvalidAddressScope) Enum.valueOf(InvalidAddressScope.class, str);
    }

    public static InvalidAddressScope[] values() {
        return (InvalidAddressScope[]) $VALUES.clone();
    }
}

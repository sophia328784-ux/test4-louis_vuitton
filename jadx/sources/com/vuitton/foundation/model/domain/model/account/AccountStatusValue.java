package com.vuitton.foundation.model.domain.model.account;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/AccountStatusValue;", "", "UNKNOWN", "UNACTIVATED", "ACTIVATED", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountStatusValue {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AccountStatusValue[] $VALUES;
    public static final AccountStatusValue ACTIVATED;
    public static final AccountStatusValue UNACTIVATED;
    public static final AccountStatusValue UNKNOWN;

    static {
        AccountStatusValue accountStatusValue = new AccountStatusValue("UNKNOWN", 0);
        UNKNOWN = accountStatusValue;
        AccountStatusValue accountStatusValue2 = new AccountStatusValue("UNACTIVATED", 1);
        UNACTIVATED = accountStatusValue2;
        AccountStatusValue accountStatusValue3 = new AccountStatusValue("ACTIVATED", 2);
        ACTIVATED = accountStatusValue3;
        AccountStatusValue[] accountStatusValueArr = {accountStatusValue, accountStatusValue2, accountStatusValue3};
        $VALUES = accountStatusValueArr;
        $ENTRIES = EnumEntriesKt.a(accountStatusValueArr);
    }

    public static AccountStatusValue valueOf(String str) {
        return (AccountStatusValue) Enum.valueOf(AccountStatusValue.class, str);
    }

    public static AccountStatusValue[] values() {
        return (AccountStatusValue[]) $VALUES.clone();
    }
}

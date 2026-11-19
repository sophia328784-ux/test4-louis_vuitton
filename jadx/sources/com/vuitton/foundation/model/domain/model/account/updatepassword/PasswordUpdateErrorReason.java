package com.vuitton.foundation.model.domain.model.account.updatepassword;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;", "", "INVALID_NEW_PASSWORD", "INVALID_OLD_PASSWORD", "INVALID_REPEATED_PASSWORD", "UNKNOWN", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PasswordUpdateErrorReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PasswordUpdateErrorReason[] $VALUES;
    public static final PasswordUpdateErrorReason INVALID_NEW_PASSWORD;
    public static final PasswordUpdateErrorReason INVALID_OLD_PASSWORD;
    public static final PasswordUpdateErrorReason INVALID_REPEATED_PASSWORD;
    public static final PasswordUpdateErrorReason UNKNOWN;

    static {
        PasswordUpdateErrorReason passwordUpdateErrorReason = new PasswordUpdateErrorReason("INVALID_NEW_PASSWORD", 0);
        INVALID_NEW_PASSWORD = passwordUpdateErrorReason;
        PasswordUpdateErrorReason passwordUpdateErrorReason2 = new PasswordUpdateErrorReason("INVALID_OLD_PASSWORD", 1);
        INVALID_OLD_PASSWORD = passwordUpdateErrorReason2;
        PasswordUpdateErrorReason passwordUpdateErrorReason3 = new PasswordUpdateErrorReason("INVALID_REPEATED_PASSWORD", 2);
        INVALID_REPEATED_PASSWORD = passwordUpdateErrorReason3;
        PasswordUpdateErrorReason passwordUpdateErrorReason4 = new PasswordUpdateErrorReason("UNKNOWN", 3);
        UNKNOWN = passwordUpdateErrorReason4;
        PasswordUpdateErrorReason[] passwordUpdateErrorReasonArr = {passwordUpdateErrorReason, passwordUpdateErrorReason2, passwordUpdateErrorReason3, passwordUpdateErrorReason4};
        $VALUES = passwordUpdateErrorReasonArr;
        $ENTRIES = EnumEntriesKt.a(passwordUpdateErrorReasonArr);
    }

    public static PasswordUpdateErrorReason valueOf(String str) {
        return (PasswordUpdateErrorReason) Enum.valueOf(PasswordUpdateErrorReason.class, str);
    }

    public static PasswordUpdateErrorReason[] values() {
        return (PasswordUpdateErrorReason[]) $VALUES.clone();
    }
}

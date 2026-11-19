package com.vuitton.android.presentation.screen.account.profile;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;", "", "UNKNOWN", "UNACTIVATED", "ACTIVATED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountStatusValueUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AccountStatusValueUiModel[] $VALUES;
    public static final AccountStatusValueUiModel ACTIVATED;
    public static final AccountStatusValueUiModel UNACTIVATED;
    public static final AccountStatusValueUiModel UNKNOWN;

    static {
        AccountStatusValueUiModel accountStatusValueUiModel = new AccountStatusValueUiModel("UNKNOWN", 0);
        UNKNOWN = accountStatusValueUiModel;
        AccountStatusValueUiModel accountStatusValueUiModel2 = new AccountStatusValueUiModel("UNACTIVATED", 1);
        UNACTIVATED = accountStatusValueUiModel2;
        AccountStatusValueUiModel accountStatusValueUiModel3 = new AccountStatusValueUiModel("ACTIVATED", 2);
        ACTIVATED = accountStatusValueUiModel3;
        AccountStatusValueUiModel[] accountStatusValueUiModelArr = {accountStatusValueUiModel, accountStatusValueUiModel2, accountStatusValueUiModel3};
        $VALUES = accountStatusValueUiModelArr;
        $ENTRIES = EnumEntriesKt.a(accountStatusValueUiModelArr);
    }

    public static AccountStatusValueUiModel valueOf(String str) {
        return (AccountStatusValueUiModel) Enum.valueOf(AccountStatusValueUiModel.class, str);
    }

    public static AccountStatusValueUiModel[] values() {
        return (AccountStatusValueUiModel[]) $VALUES.clone();
    }
}

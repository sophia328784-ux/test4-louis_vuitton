package com.vuitton.android.presentation.screen.authentication.register.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;", "", "ADDRESS1", "ADDRESS2", "ADDRESS3", "UNDEFINED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InvalidAddressScopeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InvalidAddressScopeUiModel[] $VALUES;
    public static final InvalidAddressScopeUiModel ADDRESS1;
    public static final InvalidAddressScopeUiModel ADDRESS2;
    public static final InvalidAddressScopeUiModel ADDRESS3;
    public static final InvalidAddressScopeUiModel UNDEFINED;

    static {
        InvalidAddressScopeUiModel invalidAddressScopeUiModel = new InvalidAddressScopeUiModel("ADDRESS1", 0);
        ADDRESS1 = invalidAddressScopeUiModel;
        InvalidAddressScopeUiModel invalidAddressScopeUiModel2 = new InvalidAddressScopeUiModel("ADDRESS2", 1);
        ADDRESS2 = invalidAddressScopeUiModel2;
        InvalidAddressScopeUiModel invalidAddressScopeUiModel3 = new InvalidAddressScopeUiModel("ADDRESS3", 2);
        ADDRESS3 = invalidAddressScopeUiModel3;
        InvalidAddressScopeUiModel invalidAddressScopeUiModel4 = new InvalidAddressScopeUiModel("UNDEFINED", 3);
        UNDEFINED = invalidAddressScopeUiModel4;
        InvalidAddressScopeUiModel[] invalidAddressScopeUiModelArr = {invalidAddressScopeUiModel, invalidAddressScopeUiModel2, invalidAddressScopeUiModel3, invalidAddressScopeUiModel4};
        $VALUES = invalidAddressScopeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(invalidAddressScopeUiModelArr);
    }

    public static InvalidAddressScopeUiModel valueOf(String str) {
        return (InvalidAddressScopeUiModel) Enum.valueOf(InvalidAddressScopeUiModel.class, str);
    }

    public static InvalidAddressScopeUiModel[] values() {
        return (InvalidAddressScopeUiModel[]) $VALUES.clone();
    }
}

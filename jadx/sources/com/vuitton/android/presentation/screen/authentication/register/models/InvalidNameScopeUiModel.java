package com.vuitton.android.presentation.screen.authentication.register.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;", "", "FIRST_NAME", "LAST_NAME", "FIRST_NAME2", "LAST_NAME2", "UNDEFINED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InvalidNameScopeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InvalidNameScopeUiModel[] $VALUES;
    public static final InvalidNameScopeUiModel FIRST_NAME;
    public static final InvalidNameScopeUiModel FIRST_NAME2;
    public static final InvalidNameScopeUiModel LAST_NAME;
    public static final InvalidNameScopeUiModel LAST_NAME2;
    public static final InvalidNameScopeUiModel UNDEFINED;

    static {
        InvalidNameScopeUiModel invalidNameScopeUiModel = new InvalidNameScopeUiModel("FIRST_NAME", 0);
        FIRST_NAME = invalidNameScopeUiModel;
        InvalidNameScopeUiModel invalidNameScopeUiModel2 = new InvalidNameScopeUiModel("LAST_NAME", 1);
        LAST_NAME = invalidNameScopeUiModel2;
        InvalidNameScopeUiModel invalidNameScopeUiModel3 = new InvalidNameScopeUiModel("FIRST_NAME2", 2);
        FIRST_NAME2 = invalidNameScopeUiModel3;
        InvalidNameScopeUiModel invalidNameScopeUiModel4 = new InvalidNameScopeUiModel("LAST_NAME2", 3);
        LAST_NAME2 = invalidNameScopeUiModel4;
        InvalidNameScopeUiModel invalidNameScopeUiModel5 = new InvalidNameScopeUiModel("UNDEFINED", 4);
        UNDEFINED = invalidNameScopeUiModel5;
        InvalidNameScopeUiModel[] invalidNameScopeUiModelArr = {invalidNameScopeUiModel, invalidNameScopeUiModel2, invalidNameScopeUiModel3, invalidNameScopeUiModel4, invalidNameScopeUiModel5};
        $VALUES = invalidNameScopeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(invalidNameScopeUiModelArr);
    }

    public static InvalidNameScopeUiModel valueOf(String str) {
        return (InvalidNameScopeUiModel) Enum.valueOf(InvalidNameScopeUiModel.class, str);
    }

    public static InvalidNameScopeUiModel[] values() {
        return (InvalidNameScopeUiModel[]) $VALUES.clone();
    }
}

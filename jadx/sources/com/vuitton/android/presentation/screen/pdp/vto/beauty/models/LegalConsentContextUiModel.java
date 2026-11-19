package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;", "", "TRY_ON", "SHADE_FINDER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LegalConsentContextUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LegalConsentContextUiModel[] $VALUES;
    public static final LegalConsentContextUiModel SHADE_FINDER;
    public static final LegalConsentContextUiModel TRY_ON;

    static {
        LegalConsentContextUiModel legalConsentContextUiModel = new LegalConsentContextUiModel("TRY_ON", 0);
        TRY_ON = legalConsentContextUiModel;
        LegalConsentContextUiModel legalConsentContextUiModel2 = new LegalConsentContextUiModel("SHADE_FINDER", 1);
        SHADE_FINDER = legalConsentContextUiModel2;
        LegalConsentContextUiModel[] legalConsentContextUiModelArr = {legalConsentContextUiModel, legalConsentContextUiModel2};
        $VALUES = legalConsentContextUiModelArr;
        $ENTRIES = EnumEntriesKt.a(legalConsentContextUiModelArr);
    }

    public static LegalConsentContextUiModel valueOf(String str) {
        return (LegalConsentContextUiModel) Enum.valueOf(LegalConsentContextUiModel.class, str);
    }

    public static LegalConsentContextUiModel[] values() {
        return (LegalConsentContextUiModel[]) $VALUES.clone();
    }
}

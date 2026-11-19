package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionTypeUiModel;", "", "ASSET_LIST", "STEPS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TutorialSectionTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TutorialSectionTypeUiModel[] $VALUES;
    public static final TutorialSectionTypeUiModel ASSET_LIST;
    public static final TutorialSectionTypeUiModel STEPS;

    static {
        TutorialSectionTypeUiModel tutorialSectionTypeUiModel = new TutorialSectionTypeUiModel("ASSET_LIST", 0);
        ASSET_LIST = tutorialSectionTypeUiModel;
        TutorialSectionTypeUiModel tutorialSectionTypeUiModel2 = new TutorialSectionTypeUiModel("STEPS", 1);
        STEPS = tutorialSectionTypeUiModel2;
        TutorialSectionTypeUiModel[] tutorialSectionTypeUiModelArr = {tutorialSectionTypeUiModel, tutorialSectionTypeUiModel2};
        $VALUES = tutorialSectionTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(tutorialSectionTypeUiModelArr);
    }

    public static TutorialSectionTypeUiModel valueOf(String str) {
        return (TutorialSectionTypeUiModel) Enum.valueOf(TutorialSectionTypeUiModel.class, str);
    }

    public static TutorialSectionTypeUiModel[] values() {
        return (TutorialSectionTypeUiModel[]) $VALUES.clone();
    }
}

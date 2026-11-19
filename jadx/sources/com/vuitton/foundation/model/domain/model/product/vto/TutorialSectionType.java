package com.vuitton.foundation.model.domain.model.product.vto;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;", "", "ASSET_LIST", "STEPS", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TutorialSectionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TutorialSectionType[] $VALUES;
    public static final TutorialSectionType ASSET_LIST;
    public static final TutorialSectionType STEPS;

    static {
        TutorialSectionType tutorialSectionType = new TutorialSectionType("ASSET_LIST", 0);
        ASSET_LIST = tutorialSectionType;
        TutorialSectionType tutorialSectionType2 = new TutorialSectionType("STEPS", 1);
        STEPS = tutorialSectionType2;
        TutorialSectionType[] tutorialSectionTypeArr = {tutorialSectionType, tutorialSectionType2};
        $VALUES = tutorialSectionTypeArr;
        $ENTRIES = EnumEntriesKt.a(tutorialSectionTypeArr);
    }

    public static TutorialSectionType valueOf(String str) {
        return (TutorialSectionType) Enum.valueOf(TutorialSectionType.class, str);
    }

    public static TutorialSectionType[] values() {
        return (TutorialSectionType[]) $VALUES.clone();
    }
}

package com.vuitton.foundation.model.domain.model.careservices.bff;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;", "", "OnGoing", "History", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServiceCategory {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CareServiceCategory[] $VALUES;
    public static final CareServiceCategory History;
    public static final CareServiceCategory OnGoing;

    static {
        CareServiceCategory careServiceCategory = new CareServiceCategory("OnGoing", 0);
        OnGoing = careServiceCategory;
        CareServiceCategory careServiceCategory2 = new CareServiceCategory("History", 1);
        History = careServiceCategory2;
        CareServiceCategory[] careServiceCategoryArr = {careServiceCategory, careServiceCategory2};
        $VALUES = careServiceCategoryArr;
        $ENTRIES = EnumEntriesKt.a(careServiceCategoryArr);
    }

    public static CareServiceCategory valueOf(String str) {
        return (CareServiceCategory) Enum.valueOf(CareServiceCategory.class, str);
    }

    public static CareServiceCategory[] values() {
        return (CareServiceCategory[]) $VALUES.clone();
    }
}

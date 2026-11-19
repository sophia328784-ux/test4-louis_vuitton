package com.vuitton.foundation.model.domain.model.careservices;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;", "", "AppForm", "Call", "VideoCall", "CSC_CALL", "CSC_APPFORM", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServiceOrigin {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CareServiceOrigin[] $VALUES;
    public static final CareServiceOrigin AppForm;
    public static final CareServiceOrigin CSC_APPFORM;
    public static final CareServiceOrigin CSC_CALL;
    public static final CareServiceOrigin Call;
    public static final CareServiceOrigin VideoCall;

    static {
        CareServiceOrigin careServiceOrigin = new CareServiceOrigin("AppForm", 0);
        AppForm = careServiceOrigin;
        CareServiceOrigin careServiceOrigin2 = new CareServiceOrigin("Call", 1);
        Call = careServiceOrigin2;
        CareServiceOrigin careServiceOrigin3 = new CareServiceOrigin("VideoCall", 2);
        VideoCall = careServiceOrigin3;
        CareServiceOrigin careServiceOrigin4 = new CareServiceOrigin("CSC_CALL", 3);
        CSC_CALL = careServiceOrigin4;
        CareServiceOrigin careServiceOrigin5 = new CareServiceOrigin("CSC_APPFORM", 4);
        CSC_APPFORM = careServiceOrigin5;
        CareServiceOrigin[] careServiceOriginArr = {careServiceOrigin, careServiceOrigin2, careServiceOrigin3, careServiceOrigin4, careServiceOrigin5};
        $VALUES = careServiceOriginArr;
        $ENTRIES = EnumEntriesKt.a(careServiceOriginArr);
    }

    public static CareServiceOrigin valueOf(String str) {
        return (CareServiceOrigin) Enum.valueOf(CareServiceOrigin.class, str);
    }

    public static CareServiceOrigin[] values() {
        return (CareServiceOrigin[]) $VALUES.clone();
    }
}

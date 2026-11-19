package com.vuitton.foundation.model.domain.model.careservices.bff;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;", "", "EMAIL", "PHONE_CALL", "VIDEO_CALL", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServiceContactMethod {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CareServiceContactMethod[] $VALUES;
    public static final CareServiceContactMethod EMAIL;
    public static final CareServiceContactMethod PHONE_CALL;
    public static final CareServiceContactMethod VIDEO_CALL;

    static {
        CareServiceContactMethod careServiceContactMethod = new CareServiceContactMethod("EMAIL", 0);
        EMAIL = careServiceContactMethod;
        CareServiceContactMethod careServiceContactMethod2 = new CareServiceContactMethod("PHONE_CALL", 1);
        PHONE_CALL = careServiceContactMethod2;
        CareServiceContactMethod careServiceContactMethod3 = new CareServiceContactMethod("VIDEO_CALL", 2);
        VIDEO_CALL = careServiceContactMethod3;
        CareServiceContactMethod[] careServiceContactMethodArr = {careServiceContactMethod, careServiceContactMethod2, careServiceContactMethod3};
        $VALUES = careServiceContactMethodArr;
        $ENTRIES = EnumEntriesKt.a(careServiceContactMethodArr);
    }

    public static CareServiceContactMethod valueOf(String str) {
        return (CareServiceContactMethod) Enum.valueOf(CareServiceContactMethod.class, str);
    }

    public static CareServiceContactMethod[] values() {
        return (CareServiceContactMethod[]) $VALUES.clone();
    }
}

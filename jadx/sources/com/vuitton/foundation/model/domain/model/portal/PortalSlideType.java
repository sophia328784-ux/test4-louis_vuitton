package com.vuitton.foundation.model.domain.model.portal;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;", "", "CONTENT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PortalSlideType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PortalSlideType[] $VALUES;
    public static final PortalSlideType CONTENT;

    static {
        PortalSlideType portalSlideType = new PortalSlideType("CONTENT", 0);
        CONTENT = portalSlideType;
        PortalSlideType[] portalSlideTypeArr = {portalSlideType};
        $VALUES = portalSlideTypeArr;
        $ENTRIES = EnumEntriesKt.a(portalSlideTypeArr);
    }

    public static PortalSlideType valueOf(String str) {
        return (PortalSlideType) Enum.valueOf(PortalSlideType.class, str);
    }

    public static PortalSlideType[] values() {
        return (PortalSlideType[]) $VALUES.clone();
    }
}

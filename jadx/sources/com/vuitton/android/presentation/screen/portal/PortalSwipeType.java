package com.vuitton.android.presentation.screen.portal;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/PortalSwipeType;", "", "PREVIOUS", "NEXT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PortalSwipeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PortalSwipeType[] $VALUES;
    public static final PortalSwipeType NEXT;
    public static final PortalSwipeType PREVIOUS;

    static {
        PortalSwipeType portalSwipeType = new PortalSwipeType("PREVIOUS", 0);
        PREVIOUS = portalSwipeType;
        PortalSwipeType portalSwipeType2 = new PortalSwipeType("NEXT", 1);
        NEXT = portalSwipeType2;
        PortalSwipeType[] portalSwipeTypeArr = {portalSwipeType, portalSwipeType2};
        $VALUES = portalSwipeTypeArr;
        $ENTRIES = EnumEntriesKt.a(portalSwipeTypeArr);
    }

    public static PortalSwipeType valueOf(String str) {
        return (PortalSwipeType) Enum.valueOf(PortalSwipeType.class, str);
    }

    public static PortalSwipeType[] values() {
        return (PortalSwipeType[]) $VALUES.clone();
    }
}

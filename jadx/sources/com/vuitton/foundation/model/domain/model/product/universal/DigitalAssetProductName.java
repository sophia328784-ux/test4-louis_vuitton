package com.vuitton.foundation.model.domain.model.product.universal;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;", "", "DROP_3D", "LD_R", "BACKGROUND_3D", "FRONT_VIEW_3D", "BOTTOM_FRONT_VIEW_3D", "BACK_VIEW_3D", "BOTTOM_VIEW_3D", "BOTTOM_BACK_VIEW_3D", "SIDE_VIEW_3D", "CLOSE_UP_VIEW_3D", "DETAIL_VIEW_3D", "DROP_VIDEO_3D", "UNKNOWN", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DigitalAssetProductName {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DigitalAssetProductName[] $VALUES;
    public static final DigitalAssetProductName BACKGROUND_3D;
    public static final DigitalAssetProductName BACK_VIEW_3D;
    public static final DigitalAssetProductName BOTTOM_BACK_VIEW_3D;
    public static final DigitalAssetProductName BOTTOM_FRONT_VIEW_3D;
    public static final DigitalAssetProductName BOTTOM_VIEW_3D;
    public static final DigitalAssetProductName CLOSE_UP_VIEW_3D;
    public static final DigitalAssetProductName DETAIL_VIEW_3D;
    public static final DigitalAssetProductName DROP_3D;
    public static final DigitalAssetProductName DROP_VIDEO_3D;
    public static final DigitalAssetProductName FRONT_VIEW_3D;
    public static final DigitalAssetProductName LD_R;
    public static final DigitalAssetProductName SIDE_VIEW_3D;
    public static final DigitalAssetProductName UNKNOWN;

    static {
        DigitalAssetProductName digitalAssetProductName = new DigitalAssetProductName("DROP_3D", 0);
        DROP_3D = digitalAssetProductName;
        DigitalAssetProductName digitalAssetProductName2 = new DigitalAssetProductName("LD_R", 1);
        LD_R = digitalAssetProductName2;
        DigitalAssetProductName digitalAssetProductName3 = new DigitalAssetProductName("BACKGROUND_3D", 2);
        BACKGROUND_3D = digitalAssetProductName3;
        DigitalAssetProductName digitalAssetProductName4 = new DigitalAssetProductName("FRONT_VIEW_3D", 3);
        FRONT_VIEW_3D = digitalAssetProductName4;
        DigitalAssetProductName digitalAssetProductName5 = new DigitalAssetProductName("BOTTOM_FRONT_VIEW_3D", 4);
        BOTTOM_FRONT_VIEW_3D = digitalAssetProductName5;
        DigitalAssetProductName digitalAssetProductName6 = new DigitalAssetProductName("BACK_VIEW_3D", 5);
        BACK_VIEW_3D = digitalAssetProductName6;
        DigitalAssetProductName digitalAssetProductName7 = new DigitalAssetProductName("BOTTOM_VIEW_3D", 6);
        BOTTOM_VIEW_3D = digitalAssetProductName7;
        DigitalAssetProductName digitalAssetProductName8 = new DigitalAssetProductName("BOTTOM_BACK_VIEW_3D", 7);
        BOTTOM_BACK_VIEW_3D = digitalAssetProductName8;
        DigitalAssetProductName digitalAssetProductName9 = new DigitalAssetProductName("SIDE_VIEW_3D", 8);
        SIDE_VIEW_3D = digitalAssetProductName9;
        DigitalAssetProductName digitalAssetProductName10 = new DigitalAssetProductName("CLOSE_UP_VIEW_3D", 9);
        CLOSE_UP_VIEW_3D = digitalAssetProductName10;
        DigitalAssetProductName digitalAssetProductName11 = new DigitalAssetProductName("DETAIL_VIEW_3D", 10);
        DETAIL_VIEW_3D = digitalAssetProductName11;
        DigitalAssetProductName digitalAssetProductName12 = new DigitalAssetProductName("DROP_VIDEO_3D", 11);
        DROP_VIDEO_3D = digitalAssetProductName12;
        DigitalAssetProductName digitalAssetProductName13 = new DigitalAssetProductName("UNKNOWN", 12);
        UNKNOWN = digitalAssetProductName13;
        DigitalAssetProductName[] digitalAssetProductNameArr = {digitalAssetProductName, digitalAssetProductName2, digitalAssetProductName3, digitalAssetProductName4, digitalAssetProductName5, digitalAssetProductName6, digitalAssetProductName7, digitalAssetProductName8, digitalAssetProductName9, digitalAssetProductName10, digitalAssetProductName11, digitalAssetProductName12, digitalAssetProductName13};
        $VALUES = digitalAssetProductNameArr;
        $ENTRIES = EnumEntriesKt.a(digitalAssetProductNameArr);
    }

    public static DigitalAssetProductName valueOf(String str) {
        return (DigitalAssetProductName) Enum.valueOf(DigitalAssetProductName.class, str);
    }

    public static DigitalAssetProductName[] values() {
        return (DigitalAssetProductName[]) $VALUES.clone();
    }
}

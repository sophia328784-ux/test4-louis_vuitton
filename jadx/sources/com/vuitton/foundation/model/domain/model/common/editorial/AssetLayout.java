package com.vuitton.foundation.model.domain.model.common.editorial;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;", "", "FULL_WIDTH", "MARIELOUISE_CENTERED", "MARIELOUISE_LEFT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AssetLayout {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AssetLayout[] $VALUES;
    public static final AssetLayout FULL_WIDTH;
    public static final AssetLayout MARIELOUISE_CENTERED;
    public static final AssetLayout MARIELOUISE_LEFT;

    static {
        AssetLayout assetLayout = new AssetLayout("FULL_WIDTH", 0);
        FULL_WIDTH = assetLayout;
        AssetLayout assetLayout2 = new AssetLayout("MARIELOUISE_CENTERED", 1);
        MARIELOUISE_CENTERED = assetLayout2;
        AssetLayout assetLayout3 = new AssetLayout("MARIELOUISE_LEFT", 2);
        MARIELOUISE_LEFT = assetLayout3;
        AssetLayout[] assetLayoutArr = {assetLayout, assetLayout2, assetLayout3};
        $VALUES = assetLayoutArr;
        $ENTRIES = EnumEntriesKt.a(assetLayoutArr);
    }

    public static AssetLayout valueOf(String str) {
        return (AssetLayout) Enum.valueOf(AssetLayout.class, str);
    }

    public static AssetLayout[] values() {
        return (AssetLayout[]) $VALUES.clone();
    }
}

package com.vuitton.android.presentation.screen.portal.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalSlideTypeUiModel;", "", "CONTENT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PortalSlideTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PortalSlideTypeUiModel[] $VALUES;
    public static final PortalSlideTypeUiModel CONTENT;

    static {
        PortalSlideTypeUiModel portalSlideTypeUiModel = new PortalSlideTypeUiModel("CONTENT", 0);
        CONTENT = portalSlideTypeUiModel;
        PortalSlideTypeUiModel[] portalSlideTypeUiModelArr = {portalSlideTypeUiModel};
        $VALUES = portalSlideTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(portalSlideTypeUiModelArr);
    }

    public static PortalSlideTypeUiModel valueOf(String str) {
        return (PortalSlideTypeUiModel) Enum.valueOf(PortalSlideTypeUiModel.class, str);
    }

    public static PortalSlideTypeUiModel[] values() {
        return (PortalSlideTypeUiModel[]) $VALUES.clone();
    }
}

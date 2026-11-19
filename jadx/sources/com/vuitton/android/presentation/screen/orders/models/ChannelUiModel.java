package com.vuitton.android.presentation.screen.orders.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;", "", "RETAIL", "WEB", "CONTACT_CENTER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ChannelUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ChannelUiModel[] $VALUES;
    public static final ChannelUiModel CONTACT_CENTER;
    public static final ChannelUiModel RETAIL;
    public static final ChannelUiModel WEB;

    static {
        ChannelUiModel channelUiModel = new ChannelUiModel("RETAIL", 0);
        RETAIL = channelUiModel;
        ChannelUiModel channelUiModel2 = new ChannelUiModel("WEB", 1);
        WEB = channelUiModel2;
        ChannelUiModel channelUiModel3 = new ChannelUiModel("CONTACT_CENTER", 2);
        CONTACT_CENTER = channelUiModel3;
        ChannelUiModel[] channelUiModelArr = {channelUiModel, channelUiModel2, channelUiModel3};
        $VALUES = channelUiModelArr;
        $ENTRIES = EnumEntriesKt.a(channelUiModelArr);
    }

    public static ChannelUiModel valueOf(String str) {
        return (ChannelUiModel) Enum.valueOf(ChannelUiModel.class, str);
    }

    public static ChannelUiModel[] values() {
        return (ChannelUiModel[]) $VALUES.clone();
    }
}

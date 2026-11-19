package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "", "FULLSCREEN", "RATIO_16_9", "RATIO_9_16", "RATIO_2_3", "RATIO_4_5", "RATIO_1_1", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleSizeCard {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleSizeCard[] $VALUES;
    public static final ImmersiveArticleSizeCard FULLSCREEN;
    public static final ImmersiveArticleSizeCard RATIO_16_9;
    public static final ImmersiveArticleSizeCard RATIO_1_1;
    public static final ImmersiveArticleSizeCard RATIO_2_3;
    public static final ImmersiveArticleSizeCard RATIO_4_5;
    public static final ImmersiveArticleSizeCard RATIO_9_16;

    static {
        ImmersiveArticleSizeCard immersiveArticleSizeCard = new ImmersiveArticleSizeCard("FULLSCREEN", 0);
        FULLSCREEN = immersiveArticleSizeCard;
        ImmersiveArticleSizeCard immersiveArticleSizeCard2 = new ImmersiveArticleSizeCard("RATIO_16_9", 1);
        RATIO_16_9 = immersiveArticleSizeCard2;
        ImmersiveArticleSizeCard immersiveArticleSizeCard3 = new ImmersiveArticleSizeCard("RATIO_9_16", 2);
        RATIO_9_16 = immersiveArticleSizeCard3;
        ImmersiveArticleSizeCard immersiveArticleSizeCard4 = new ImmersiveArticleSizeCard("RATIO_2_3", 3);
        RATIO_2_3 = immersiveArticleSizeCard4;
        ImmersiveArticleSizeCard immersiveArticleSizeCard5 = new ImmersiveArticleSizeCard("RATIO_4_5", 4);
        RATIO_4_5 = immersiveArticleSizeCard5;
        ImmersiveArticleSizeCard immersiveArticleSizeCard6 = new ImmersiveArticleSizeCard("RATIO_1_1", 5);
        RATIO_1_1 = immersiveArticleSizeCard6;
        ImmersiveArticleSizeCard[] immersiveArticleSizeCardArr = {immersiveArticleSizeCard, immersiveArticleSizeCard2, immersiveArticleSizeCard3, immersiveArticleSizeCard4, immersiveArticleSizeCard5, immersiveArticleSizeCard6};
        $VALUES = immersiveArticleSizeCardArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleSizeCardArr);
    }

    public static ImmersiveArticleSizeCard valueOf(String str) {
        return (ImmersiveArticleSizeCard) Enum.valueOf(ImmersiveArticleSizeCard.class, str);
    }

    public static ImmersiveArticleSizeCard[] values() {
        return (ImmersiveArticleSizeCard[]) $VALUES.clone();
    }
}

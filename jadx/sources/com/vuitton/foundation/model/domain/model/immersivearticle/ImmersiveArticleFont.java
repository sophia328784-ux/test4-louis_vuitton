package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;", "", "DEFAULT", "HANLEY_PRO", "ANGLAISE_F", "COND", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleFont {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleFont[] $VALUES;
    public static final ImmersiveArticleFont ANGLAISE_F;
    public static final ImmersiveArticleFont COND;
    public static final ImmersiveArticleFont DEFAULT;
    public static final ImmersiveArticleFont HANLEY_PRO;

    static {
        ImmersiveArticleFont immersiveArticleFont = new ImmersiveArticleFont("DEFAULT", 0);
        DEFAULT = immersiveArticleFont;
        ImmersiveArticleFont immersiveArticleFont2 = new ImmersiveArticleFont("HANLEY_PRO", 1);
        HANLEY_PRO = immersiveArticleFont2;
        ImmersiveArticleFont immersiveArticleFont3 = new ImmersiveArticleFont("ANGLAISE_F", 2);
        ANGLAISE_F = immersiveArticleFont3;
        ImmersiveArticleFont immersiveArticleFont4 = new ImmersiveArticleFont("COND", 3);
        COND = immersiveArticleFont4;
        ImmersiveArticleFont[] immersiveArticleFontArr = {immersiveArticleFont, immersiveArticleFont2, immersiveArticleFont3, immersiveArticleFont4};
        $VALUES = immersiveArticleFontArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleFontArr);
    }

    public static ImmersiveArticleFont valueOf(String str) {
        return (ImmersiveArticleFont) Enum.valueOf(ImmersiveArticleFont.class, str);
    }

    public static ImmersiveArticleFont[] values() {
        return (ImmersiveArticleFont[]) $VALUES.clone();
    }
}

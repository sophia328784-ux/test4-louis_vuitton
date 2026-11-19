package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;", "", "CENTER", "RIGHT", "LEFT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleTextModuleAlignment {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleTextModuleAlignment[] $VALUES;
    public static final ImmersiveArticleTextModuleAlignment CENTER;
    public static final ImmersiveArticleTextModuleAlignment LEFT;
    public static final ImmersiveArticleTextModuleAlignment RIGHT;

    static {
        ImmersiveArticleTextModuleAlignment immersiveArticleTextModuleAlignment = new ImmersiveArticleTextModuleAlignment("CENTER", 0);
        CENTER = immersiveArticleTextModuleAlignment;
        ImmersiveArticleTextModuleAlignment immersiveArticleTextModuleAlignment2 = new ImmersiveArticleTextModuleAlignment("RIGHT", 1);
        RIGHT = immersiveArticleTextModuleAlignment2;
        ImmersiveArticleTextModuleAlignment immersiveArticleTextModuleAlignment3 = new ImmersiveArticleTextModuleAlignment("LEFT", 2);
        LEFT = immersiveArticleTextModuleAlignment3;
        ImmersiveArticleTextModuleAlignment[] immersiveArticleTextModuleAlignmentArr = {immersiveArticleTextModuleAlignment, immersiveArticleTextModuleAlignment2, immersiveArticleTextModuleAlignment3};
        $VALUES = immersiveArticleTextModuleAlignmentArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleTextModuleAlignmentArr);
    }

    public static ImmersiveArticleTextModuleAlignment valueOf(String str) {
        return (ImmersiveArticleTextModuleAlignment) Enum.valueOf(ImmersiveArticleTextModuleAlignment.class, str);
    }

    public static ImmersiveArticleTextModuleAlignment[] values() {
        return (ImmersiveArticleTextModuleAlignment[]) $VALUES.clone();
    }
}

package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;", "", "FULL_DETAILS", "IMAGE_ONLY", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleProductDisplayStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleProductDisplayStyle[] $VALUES;
    public static final ImmersiveArticleProductDisplayStyle FULL_DETAILS;
    public static final ImmersiveArticleProductDisplayStyle IMAGE_ONLY;

    static {
        ImmersiveArticleProductDisplayStyle immersiveArticleProductDisplayStyle = new ImmersiveArticleProductDisplayStyle("FULL_DETAILS", 0);
        FULL_DETAILS = immersiveArticleProductDisplayStyle;
        ImmersiveArticleProductDisplayStyle immersiveArticleProductDisplayStyle2 = new ImmersiveArticleProductDisplayStyle("IMAGE_ONLY", 1);
        IMAGE_ONLY = immersiveArticleProductDisplayStyle2;
        ImmersiveArticleProductDisplayStyle[] immersiveArticleProductDisplayStyleArr = {immersiveArticleProductDisplayStyle, immersiveArticleProductDisplayStyle2};
        $VALUES = immersiveArticleProductDisplayStyleArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleProductDisplayStyleArr);
    }

    public static ImmersiveArticleProductDisplayStyle valueOf(String str) {
        return (ImmersiveArticleProductDisplayStyle) Enum.valueOf(ImmersiveArticleProductDisplayStyle.class, str);
    }

    public static ImmersiveArticleProductDisplayStyle[] values() {
        return (ImmersiveArticleProductDisplayStyle[]) $VALUES.clone();
    }
}

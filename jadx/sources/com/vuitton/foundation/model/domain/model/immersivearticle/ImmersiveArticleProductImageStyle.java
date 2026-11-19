package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;", "", "REGULAR", "MARIE_LOUISE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleProductImageStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleProductImageStyle[] $VALUES;
    public static final ImmersiveArticleProductImageStyle MARIE_LOUISE;
    public static final ImmersiveArticleProductImageStyle REGULAR;

    static {
        ImmersiveArticleProductImageStyle immersiveArticleProductImageStyle = new ImmersiveArticleProductImageStyle("REGULAR", 0);
        REGULAR = immersiveArticleProductImageStyle;
        ImmersiveArticleProductImageStyle immersiveArticleProductImageStyle2 = new ImmersiveArticleProductImageStyle("MARIE_LOUISE", 1);
        MARIE_LOUISE = immersiveArticleProductImageStyle2;
        ImmersiveArticleProductImageStyle[] immersiveArticleProductImageStyleArr = {immersiveArticleProductImageStyle, immersiveArticleProductImageStyle2};
        $VALUES = immersiveArticleProductImageStyleArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleProductImageStyleArr);
    }

    public static ImmersiveArticleProductImageStyle valueOf(String str) {
        return (ImmersiveArticleProductImageStyle) Enum.valueOf(ImmersiveArticleProductImageStyle.class, str);
    }

    public static ImmersiveArticleProductImageStyle[] values() {
        return (ImmersiveArticleProductImageStyle[]) $VALUES.clone();
    }
}

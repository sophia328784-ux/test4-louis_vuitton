package com.vuitton.android.presentation.screen.portal.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;", "", "WITHOUT_COUNTDOWN", "WITH_COUNTDOWN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ContentSlideType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ContentSlideType[] $VALUES;
    public static final ContentSlideType WITHOUT_COUNTDOWN;
    public static final ContentSlideType WITH_COUNTDOWN;

    static {
        ContentSlideType contentSlideType = new ContentSlideType("WITHOUT_COUNTDOWN", 0);
        WITHOUT_COUNTDOWN = contentSlideType;
        ContentSlideType contentSlideType2 = new ContentSlideType("WITH_COUNTDOWN", 1);
        WITH_COUNTDOWN = contentSlideType2;
        ContentSlideType[] contentSlideTypeArr = {contentSlideType, contentSlideType2};
        $VALUES = contentSlideTypeArr;
        $ENTRIES = EnumEntriesKt.a(contentSlideTypeArr);
    }

    public static ContentSlideType valueOf(String str) {
        return (ContentSlideType) Enum.valueOf(ContentSlideType.class, str);
    }

    public static ContentSlideType[] values() {
        return (ContentSlideType[]) $VALUES.clone();
    }
}

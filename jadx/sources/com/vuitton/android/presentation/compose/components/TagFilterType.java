package com.vuitton.android.presentation.compose.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/TagFilterType;", "", "ENABLED", "DISABLED", "ACTIVE_DELETABLE", "ACTIVE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TagFilterType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TagFilterType[] $VALUES;
    public static final TagFilterType ACTIVE;
    public static final TagFilterType ACTIVE_DELETABLE;
    public static final TagFilterType DISABLED;
    public static final TagFilterType ENABLED;

    static {
        TagFilterType tagFilterType = new TagFilterType("ENABLED", 0);
        ENABLED = tagFilterType;
        TagFilterType tagFilterType2 = new TagFilterType("DISABLED", 1);
        DISABLED = tagFilterType2;
        TagFilterType tagFilterType3 = new TagFilterType("ACTIVE_DELETABLE", 2);
        ACTIVE_DELETABLE = tagFilterType3;
        TagFilterType tagFilterType4 = new TagFilterType("ACTIVE", 3);
        ACTIVE = tagFilterType4;
        TagFilterType[] tagFilterTypeArr = {tagFilterType, tagFilterType2, tagFilterType3, tagFilterType4};
        $VALUES = tagFilterTypeArr;
        $ENTRIES = EnumEntriesKt.a(tagFilterTypeArr);
    }

    public static TagFilterType valueOf(String str) {
        return (TagFilterType) Enum.valueOf(TagFilterType.class, str);
    }

    public static TagFilterType[] values() {
        return (TagFilterType[]) $VALUES.clone();
    }
}

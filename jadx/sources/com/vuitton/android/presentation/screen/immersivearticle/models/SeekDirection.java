package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/SeekDirection;", "", "PLUS", "LESS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SeekDirection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SeekDirection[] $VALUES;
    public static final SeekDirection LESS;
    public static final SeekDirection PLUS;

    static {
        SeekDirection seekDirection = new SeekDirection("PLUS", 0);
        PLUS = seekDirection;
        SeekDirection seekDirection2 = new SeekDirection("LESS", 1);
        LESS = seekDirection2;
        SeekDirection[] seekDirectionArr = {seekDirection, seekDirection2};
        $VALUES = seekDirectionArr;
        $ENTRIES = EnumEntriesKt.a(seekDirectionArr);
    }

    public static SeekDirection valueOf(String str) {
        return (SeekDirection) Enum.valueOf(SeekDirection.class, str);
    }

    public static SeekDirection[] values() {
        return (SeekDirection[]) $VALUES.clone();
    }
}

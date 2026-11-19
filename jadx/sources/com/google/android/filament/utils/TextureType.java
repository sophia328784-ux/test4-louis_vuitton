package com.google.android.filament.utils;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/android/filament/utils/TextureType;", "", "COLOR", "NORMAL", "DATA", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TextureType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TextureType[] $VALUES;
    public static final TextureType COLOR;
    public static final TextureType DATA;
    public static final TextureType NORMAL;

    static {
        TextureType textureType = new TextureType("COLOR", 0);
        COLOR = textureType;
        TextureType textureType2 = new TextureType("NORMAL", 1);
        NORMAL = textureType2;
        TextureType textureType3 = new TextureType("DATA", 2);
        DATA = textureType3;
        TextureType[] textureTypeArr = {textureType, textureType2, textureType3};
        $VALUES = textureTypeArr;
        $ENTRIES = EnumEntriesKt.a(textureTypeArr);
    }

    public static TextureType valueOf(String str) {
        return (TextureType) Enum.valueOf(TextureType.class, str);
    }

    public static TextureType[] values() {
        return (TextureType[]) $VALUES.clone();
    }
}

package com.vuitton.android.data.dto.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.serialization.SerialName;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/dto/common/FeatureThemeDto;", "", "LIGHT", "DARK", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FeatureThemeDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FeatureThemeDto[] $VALUES;

    @SerialName
    public static final FeatureThemeDto DARK;

    @SerialName
    public static final FeatureThemeDto LIGHT;

    static {
        FeatureThemeDto featureThemeDto = new FeatureThemeDto("LIGHT", 0);
        LIGHT = featureThemeDto;
        FeatureThemeDto featureThemeDto2 = new FeatureThemeDto("DARK", 1);
        DARK = featureThemeDto2;
        FeatureThemeDto[] featureThemeDtoArr = {featureThemeDto, featureThemeDto2};
        $VALUES = featureThemeDtoArr;
        $ENTRIES = EnumEntriesKt.a(featureThemeDtoArr);
    }

    public static FeatureThemeDto valueOf(String str) {
        return (FeatureThemeDto) Enum.valueOf(FeatureThemeDto.class, str);
    }

    public static FeatureThemeDto[] values() {
        return (FeatureThemeDto[]) $VALUES.clone();
    }
}

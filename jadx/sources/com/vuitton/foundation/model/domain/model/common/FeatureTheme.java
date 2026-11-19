package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;", "", "LIGHT", "DARK", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FeatureTheme {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FeatureTheme[] $VALUES;
    public static final FeatureTheme DARK;
    public static final FeatureTheme LIGHT;

    static {
        FeatureTheme featureTheme = new FeatureTheme("LIGHT", 0);
        LIGHT = featureTheme;
        FeatureTheme featureTheme2 = new FeatureTheme("DARK", 1);
        DARK = featureTheme2;
        FeatureTheme[] featureThemeArr = {featureTheme, featureTheme2};
        $VALUES = featureThemeArr;
        $ENTRIES = EnumEntriesKt.a(featureThemeArr);
    }

    public static FeatureTheme valueOf(String str) {
        return (FeatureTheme) Enum.valueOf(FeatureTheme.class, str);
    }

    public static FeatureTheme[] values() {
        return (FeatureTheme[]) $VALUES.clone();
    }
}

package com.vuitton.android.data.dto.config.cache.mapper;

import com.vuitton.android.data.dto.config.cache.FeatureThemeCache;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class FeatureThemeCacheMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f45548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f45549b;

    static {
        int[] iArr = new int[FeatureTheme.values().length];
        try {
            iArr[FeatureTheme.LIGHT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[FeatureTheme.DARK.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f45548a = iArr;
        int[] iArr2 = new int[FeatureThemeCache.values().length];
        try {
            iArr2[FeatureThemeCache.LIGHT.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[FeatureThemeCache.DARK.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        f45549b = iArr2;
    }
}

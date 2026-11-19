package com.vuitton.android.data.dto.common.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.FeatureThemeDto;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeatureThemeMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45364a;

        static {
            int[] iArr = new int[FeatureThemeDto.values().length];
            try {
                iArr[FeatureThemeDto.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureThemeDto.DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f45364a = iArr;
        }
    }

    public static final FeatureTheme a(FeatureThemeDto featureThemeDto) {
        featureThemeDto.getClass();
        int i2 = WhenMappings.f45364a[featureThemeDto.ordinal()];
        if (i2 == 1) {
            return FeatureTheme.LIGHT;
        }
        if (i2 == 2) {
            return FeatureTheme.DARK;
        }
        v40.g();
        return null;
    }
}

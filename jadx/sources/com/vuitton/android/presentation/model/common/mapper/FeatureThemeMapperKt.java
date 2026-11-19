package com.vuitton.android.presentation.model.common.mapper;

import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeatureThemeMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51801a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f51802b;

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
            f51801a = iArr;
            int[] iArr2 = new int[FeatureThemeUiModel.values().length];
            try {
                iArr2[FeatureThemeUiModel.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FeatureThemeUiModel.DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f51802b = iArr2;
        }
    }

    public static final LVColorScheme a(FeatureThemeUiModel featureThemeUiModel) {
        featureThemeUiModel.getClass();
        int i2 = WhenMappings.f51802b[featureThemeUiModel.ordinal()];
        if (i2 == 1) {
            return LVColorScheme.DEFAULT;
        }
        if (i2 == 2) {
            return LVColorScheme.INVERT;
        }
        v40.g();
        return null;
    }

    public static final FeatureThemeUiModel b(FeatureTheme featureTheme) {
        featureTheme.getClass();
        int i2 = WhenMappings.f51801a[featureTheme.ordinal()];
        if (i2 == 1) {
            return FeatureThemeUiModel.LIGHT;
        }
        if (i2 == 2) {
            return FeatureThemeUiModel.DARK;
        }
        v40.g();
        return null;
    }
}

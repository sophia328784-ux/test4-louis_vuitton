package com.vuitton.android.presentation.screen.audioguide.models;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import defpackage.o60;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideExtKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53159a;

        static {
            int[] iArr = new int[FeatureThemeUiModel.values().length];
            try {
                iArr[FeatureThemeUiModel.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureThemeUiModel.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f53159a = iArr;
        }
    }

    public static final AudioGuideUiModel.AudioGuideColorsUiModel a(FeatureThemeUiModel featureThemeUiModel, Composer composer) {
        featureThemeUiModel.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int i2 = WhenMappings.f53159a[featureThemeUiModel.ordinal()];
        if (i2 == 1) {
            composer.L(1951965304);
            AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel = new AudioGuideUiModel.AudioGuideColorsUiModel(LVAppDesignKitTheme.c(composer).f48361b.m, Color.b(LVAppDesignKitTheme.h(composer).f48403c, LVAppDesignKitTheme.c(composer).f48361b.m), LVAppDesignKitTheme.c(composer).f48361b.f48382k, Color.b(LVAppDesignKitTheme.h(composer).f48405f, LVAppDesignKitTheme.c(composer).f48361b.m), Color.b(LVAppDesignKitTheme.h(composer).f48404e, LVAppDesignKitTheme.c(composer).f48361b.m), Color.b(LVAppDesignKitTheme.h(composer).f48404e, LVAppDesignKitTheme.c(composer).f48361b.f48378f), Color.b(LVAppDesignKitTheme.h(composer).f48403c, LVAppDesignKitTheme.c(composer).f48361b.f48378f), null);
            composer.F();
            return audioGuideColorsUiModel;
        }
        if (i2 != 2) {
            throw o60.v(composer, 1951964309);
        }
        composer.L(1951997818);
        AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel2 = new AudioGuideUiModel.AudioGuideColorsUiModel(LVAppDesignKitTheme.c(composer).f48361b.f48382k, Color.b(LVAppDesignKitTheme.h(composer).f48403c, LVAppDesignKitTheme.c(composer).f48361b.f48382k), LVAppDesignKitTheme.c(composer).f48361b.m, Color.b(LVAppDesignKitTheme.h(composer).f48405f, LVAppDesignKitTheme.c(composer).f48361b.f48382k), Color.b(LVAppDesignKitTheme.h(composer).f48404e, LVAppDesignKitTheme.c(composer).f48361b.f48382k), Color.b(LVAppDesignKitTheme.h(composer).f48404e, LVAppDesignKitTheme.c(composer).f48361b.f48374a), Color.b(LVAppDesignKitTheme.h(composer).f48403c, LVAppDesignKitTheme.c(composer).f48361b.f48374a), null);
        composer.F();
        return audioGuideColorsUiModel2;
    }
}

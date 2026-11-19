package com.vuitton.android.presentation.screen.dynamicform.components;

import android.os.Build;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsConnection_androidKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.e;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormToolBox;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DynamicFormToolBox {
    public static Modifier a(DTFunctionNameModifier dTFunctionNameModifier, PaddingValuesImpl paddingValuesImpl, float f2, Composer composer, int i2, int i3) {
        Modifier modifierO = dTFunctionNameModifier.o(new DTFunctionNameModifier("nonScrollableContentModifier-N8B1yIo"));
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48374a;
        if ((i3 & 2) != 0) {
            Dp.Companion companion = Dp.f11004c;
            paddingValuesImpl = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        Modifier modifierA = WindowInsetsPadding_androidKt.a(PaddingKt.k(WindowInsetsPaddingKt.a(PaddingKt.h(BackgroundKt.b(SizeKt.w(modifierO, null, 3), j2, RectangleShapeKt.f8913a), paddingValuesImpl), paddingValuesImpl), f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2));
        float f3 = WindowInsetsConnection_androidKt.f5070a;
        return Build.VERSION.SDK_INT < 30 ? modifierA : ComposedModifierKt.a(modifierA, InspectableValueKt.f10100a, new e());
    }

    public static Modifier b(Modifier modifier, PaddingValues paddingValues, float f2, Composer composer, int i2, int i3) {
        if (modifier != null) {
            modifier = a.e(modifier, "scrollableContentModifier-N8B1yIo");
        }
        modifier.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48374a;
        if ((i3 & 2) != 0) {
            Dp.Companion companion = Dp.f11004c;
            paddingValues = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        if ((i3 & 4) != 0) {
            f2 = LVAppDesignKitTheme.l(composer).f48416e;
        }
        return ScrollKt.d(WindowInsetsPadding_androidKt.a(PaddingKt.k(WindowInsetsPaddingKt.a(PaddingKt.h(BackgroundKt.b(modifier.o(SizeKt.f5052c), j2, RectangleShapeKt.f8913a), paddingValues), paddingValues), f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), ScrollKt.b(composer), false, 14);
    }
}

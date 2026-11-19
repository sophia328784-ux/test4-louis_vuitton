package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import defpackage.d;
import defpackage.i4;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "imageSize", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ModelSizeItemKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f61506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f61507b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f61506a = 64.0f;
        f61507b = 56.0f;
    }

    public static final void a(Modifier modifier, ModelSizeVariationUiModel modelSizeVariationUiModel, boolean z, Function1 function1, Composer composer, int i2) {
        Modifier modifierJ;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ModelSizeItem");
        }
        modelSizeVariationUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(736336603);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 32 : 16) | (gapComposerH.y(modelSizeVariationUiModel) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = false;
            State stateA = AnimateAsStateKt.a(z ? f61506a : f61507b, null, null, null, gapComposerH, 0, 14);
            Alignment.f8582a.getClass();
            Modifier modifierA = ClipKt.a(AspectRatioKt.a(SizeKt.o(BoxScopeInstance.f4938a.g(modifierE, Alignment.Companion.f8587f), ((Dp) stateA.getF10755b()).f11006b), 1.0f, false), z ? RoundedCornerShapeKt.a((ModelSizeSliderKt.f61510c + ModelSizeSliderKt.f61509b) / 2.0f) : RoundedCornerShapeKt.a(ModelSizeSliderKt.f61510c / 2.0f));
            if (z) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 1806535915, "ModelSizeItem");
                float f2 = ModelSizeSliderKt.f61509b;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                float f3 = ModelSizeSliderKt.f61510c;
                modifierJ = ClipKt.a(PaddingKt.i(BorderKt.a(dTFunctionNameModifierI, f2, j2, RoundedCornerShapeKt.a((f3 + f2) / 2.0f)), f2 * 2.0f), RoundedCornerShapeKt.a(f3 / 2.0f));
                gapComposerH.Z(false);
            } else {
                modifierJ = n00.j(gapComposerH, 1806970039, false, "ModelSizeItem");
            }
            Modifier modifierO = modifierA.o(modifierJ);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA2 = PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            boolean z3 = (i3 & 7168) == 2048;
            if ((57344 & i3) == 16384) {
                z2 = true;
            }
            boolean zY = z3 | z2 | gapComposerH.y(modelSizeVariationUiModel);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new d(z, function1, modelSizeVariationUiModel, 4);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(modifierA2, false, null, null, (Function0) objX, 31);
            String str = modelSizeVariationUiModel.f61535e;
            if (str == null) {
                str = "";
            }
            ImageLoaderKt.b(modifierC, str, null, null, null, 0, false, null, null, null, gapComposerH, 3072, 2036);
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(modifierE, modelSizeVariationUiModel, z, function1, i2, 14);
        }
    }
}

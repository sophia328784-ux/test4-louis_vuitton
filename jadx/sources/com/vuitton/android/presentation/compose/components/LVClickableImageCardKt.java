package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVClickableImageCardKt;
import defpackage.py;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVClickableImageCardKt {
    public static final void a(Modifier modifier, final Modifier modifier2, final float f2, final String str, final Function0 function0, Composer composer, final int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVClickableImageCard-AFY4PWA");
        }
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-296990862);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(modifier2) ? 32 : 16) | (gapComposerH.d(2131231036) ? 2048 : 1024) | (gapComposerH.K(str) ? 16384 : 8192) | ImageMetadata.EDGE_MODE | (gapComposerH.y(function0) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(SizeKt.f(SizeKt.d(modifierE, 1.0f), f2), LVAppDesignKitTheme.j(gapComposerH).d);
            boolean z = (3670016 & i3) == 1048576;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new py(function0, 14);
                gapComposerH.q(objX);
            }
            Modifier modifierD = ClickableKt.d(modifierA, false, null, null, (Function0) objX, 15);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierO = modifier2.o(SizeKt.f5052c);
            ContentScale.f9447a.getClass();
            ImageKt.a(PainterResources_androidKt.a(2131231036, gapComposerH, (i3 >> 9) & 14), null, modifierO, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632, 104);
            TextKt.c(str, PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVClickableImageCard-AFY4PWA"), Alignment.Companion.f8588h), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 6), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, (i3 >> 12) & 14, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = modifierE;
            recomposeScopeImplB0.d = new Function2(modifier2, f2, str, function0, i2) { // from class: r50

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f79250c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f79251e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function0 f79252f;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(385);
                    LVClickableImageCardKt.a(this.f79249b, this.f79250c, this.d, this.f79251e, this.f79252f, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

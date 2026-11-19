package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTracker;
import defpackage.a4;
import defpackage.hq;
import defpackage.lf;
import defpackage.z;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;", "selectedItem", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContextualSizingScreenKt {
    public static final void a(ArrayList arrayList, ContextualSizingTracker contextualSizingTracker, Function0 function0, Function1 function1, Composer composer, int i2) {
        MutableState mutableState;
        PagerState pagerState;
        contextualSizingTracker.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1284147852);
        int i3 = i2 | (gapComposerH.y(arrayList) ? 4 : 2) | (gapComposerH.y(contextualSizingTracker) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.context_size_pdp_description);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(CollectionsKt.B(arrayList));
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            boolean zY = gapComposerH.y(arrayList);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new hq(0, arrayList);
                gapComposerH.q(objX3);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX3, gapComposerH, 0, 3);
            boolean zY2 = gapComposerH.y(arrayList);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new hq(1, arrayList);
                gapComposerH.q(objX4);
            }
            PagerState pagerStateB2 = PagerStateKt.b(0, (Function0) objX4, gapComposerH, 0, 3);
            Unit unit = Unit.f71739a;
            boolean zK = gapComposerH.K(pagerStateB2) | gapComposerH.K(pagerStateB) | gapComposerH.y(arrayList);
            Object objX5 = gapComposerH.x();
            if (zK || objX5 == composer$Companion$Empty$1) {
                mutableState = mutableState2;
                ContextualSizingScreenKt$ContextualSizingScreen$1$1 contextualSizingScreenKt$ContextualSizingScreen$1$1 = new ContextualSizingScreenKt$ContextualSizingScreen$1$1(pagerStateB2, pagerStateB, arrayList, mutableState, null);
                pagerState = pagerStateB;
                gapComposerH.q(contextualSizingScreenKt$ContextualSizingScreen$1$1);
                objX5 = contextualSizingScreenKt$ContextualSizingScreen$1$1;
            } else {
                pagerState = pagerStateB;
                mutableState = mutableState2;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            boolean zK2 = gapComposerH.K(pagerState) | gapComposerH.K(pagerStateB2) | gapComposerH.y(arrayList);
            Object objX6 = gapComposerH.x();
            if (zK2 || objX6 == composer$Companion$Empty$1) {
                ContextualSizingScreenKt$ContextualSizingScreen$2$1 contextualSizingScreenKt$ContextualSizingScreen$2$1 = new ContextualSizingScreenKt$ContextualSizingScreen$2$1(pagerState, pagerStateB2, arrayList, mutableState, null);
                gapComposerH.q(contextualSizingScreenKt$ContextualSizingScreen$2$1);
                objX6 = contextualSizingScreenKt$ContextualSizingScreen$2$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX6);
            Modifier modifierO = new DTFunctionNameModifier("ContextualSizingScreen").o(SizeKt.f5052c);
            boolean zK3 = gapComposerH.K(strC);
            Object objX7 = gapComposerH.x();
            if (zK3 || objX7 == composer$Companion$Empty$1) {
                objX7 = new a4(strC, 22);
                gapComposerH.q(objX7);
            }
            ScaffoldKt.a(SemanticsModifierKt.b(modifierO, false, (Function1) objX7), null, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-514368165, new lf(contextualSizingTracker, function0, pagerState, arrayList, pagerStateB2, coroutineScope, function1, mutableState), gapComposerH), gapComposerH, 805306368, 254);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Serializable) arrayList, (Object) contextualSizingTracker, function0, function1, i2, 27);
        }
    }
}

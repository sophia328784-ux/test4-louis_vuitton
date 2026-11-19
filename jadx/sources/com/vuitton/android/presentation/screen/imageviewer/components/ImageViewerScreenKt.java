package com.vuitton.android.presentation.screen.imageviewer.components;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.imageviewer.components.PagerImageViewerKt;
import com.vuitton.android.presentation.screen.imageviewer.components.SingleImageViewerKt;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.kw;
import defpackage.q20;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImageViewerScreenKt {
    public static final void a(final int i2, final ArrayList arrayList, final ProductBackground productBackground, final boolean z, final Function0 function0, final Function0 function1, Function0 function2, Composer composer, int i3) {
        GapComposer gapComposer;
        arrayList.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1355690183);
        int i4 = i3 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.y(arrayList) ? 32 : 16) | (gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(2142332811, new kw(function2, 3), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-441349162, new Function3() { // from class: r20
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((PaddingValues) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImageViewerScreen$lambda$1");
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        Function0 function3 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function3);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        ArrayList arrayList2 = arrayList;
                        int size = arrayList2.size();
                        ProductBackground productBackground2 = productBackground;
                        if (size > 1) {
                            composer2.L(1382859049);
                            PagerImageViewerKt.a(i2, arrayList2, productBackground2, z, function0, function1, composer2, 0);
                            composer2.F();
                        } else if (arrayList2.size() == 1) {
                            composer2.L(737361596);
                            String str = (String) arrayList2.get(0);
                            if (str == null) {
                                composer2.L(1383372997);
                                composer2.F();
                            } else {
                                composer2.L(1383372998);
                                SingleImageViewerKt.a(str, productBackground2, composer2, 0);
                                composer2.F();
                            }
                            composer2.F();
                        } else {
                            composer2.L(1383582930);
                            composer2.F();
                        }
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805306416, 509);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q20(i2, arrayList, productBackground, z, function0, function1, function2, i3, 1);
        }
    }
}

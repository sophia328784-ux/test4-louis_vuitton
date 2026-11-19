package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import android.content.Context;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.LookSkuTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import defpackage.cf;
import defpackage.cj;
import defpackage.hv0;
import defpackage.mf;
import defpackage.n00;
import defpackage.pq0;
import defpackage.r31;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TheLookImmersiveArticleDetailScreenKt {
    public static final void a(TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, final String str, final String str2, SharedFlow sharedFlow, final Function2 function2, final Function2 function3, Function1 function1, final Function2 function4, Function1 function5, Function3 function6, Composer composer, int i2) {
        GapComposer gapComposer;
        CoroutineScope coroutineScope;
        boolean z;
        TheLookImmersiveArticleViewState theLookImmersiveArticleViewState2 = theLookImmersiveArticleViewState;
        theLookImmersiveArticleViewState2.getClass();
        str.getClass();
        str2.getClass();
        sharedFlow.getClass();
        function2.getClass();
        function3.getClass();
        function1.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(1574031599);
        int i3 = i2 | (gapComposerH.y(theLookImmersiveArticleViewState2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.y(sharedFlow) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function4) ? 8388608 : 4194304;
        }
        int i4 = i3 | (gapComposerH.y(function5) ? 67108864 : 33554432);
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i5 = i4;
        if (gapComposerH.p(i5 & 1, (i5 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zY = gapComposerH.y(theLookImmersiveArticleViewState2);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new hv0(theLookImmersiveArticleViewState2, 17);
                gapComposerH.q(objX2);
            }
            final PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX2, gapComposerH, 0, 3);
            int i6 = i5 & 57344;
            boolean zK = gapComposerH.K(pagerStateB) | (i6 == 16384) | gapComposerH.y(theLookImmersiveArticleViewState2);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$1$1(pagerStateB, function2, theLookImmersiveArticleViewState2, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, pagerStateB, (Function2) objX3);
            Unit unit = Unit.f71739a;
            boolean zY2 = (i6 == 16384) | gapComposerH.y(theLookImmersiveArticleViewState2) | gapComposerH.y(coroutineScope2) | gapComposerH.K(pagerStateB);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                coroutineScope = coroutineScope2;
                z = false;
                TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1 theLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1 = new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1(theLookImmersiveArticleViewState2, coroutineScope, function2, pagerStateB, null);
                gapComposerH.q(theLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1);
                objX4 = theLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1;
            } else {
                coroutineScope = coroutineScope2;
                z = false;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            boolean zY3 = gapComposerH.y(coroutineScope) | gapComposerH.y(sharedFlow) | ((i5 & 1879048192) == 536870912 ? true : z) | gapComposerH.y(theLookImmersiveArticleViewState2);
            Object objX5 = gapComposerH.x();
            if (zY3 || objX5 == composer$Companion$Empty$1) {
                CoroutineScope coroutineScope3 = coroutineScope;
                TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1 theLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1 = new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1(coroutineScope3, sharedFlow, function6, theLookImmersiveArticleViewState2, null);
                coroutineScope = coroutineScope3;
                theLookImmersiveArticleViewState2 = theLookImmersiveArticleViewState2;
                gapComposerH.q(theLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1);
                objX5 = theLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            final CoroutineScope coroutineScope4 = coroutineScope;
            final TheLookImmersiveArticleViewState theLookImmersiveArticleViewState3 = theLookImmersiveArticleViewState2;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-705636429, new r31(function5, theLookImmersiveArticleViewState2, function1, 1), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-101894146, new Function3() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.b
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    CoroutineScope coroutineScope5;
                    Function2 function7;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((PaddingValues) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TheLookImmersiveArticleDetailScreen$lambda$5");
                        FillElement fillElement = SizeKt.f5052c;
                        Modifier modifierO = dTFunctionNameModifier.o(fillElement);
                        Alignment.f8582a.getClass();
                        BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                        MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                        ComposeUiNode.b0.getClass();
                        Function0 function0 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Function2 function8 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, measurePolicyD, function8);
                        Function2 function9 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function9);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function10 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function10);
                        Function1 function11 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function11);
                        Function2 function12 = ComposeUiNode.Companion.d;
                        Updater.c(composer2, modifierC, function12);
                        Modifier modifierI = pq0.i("TheLookImmersiveArticleDetailScreen$lambda$5", fillElement);
                        final TheLookImmersiveArticleViewState theLookImmersiveArticleViewState4 = theLookImmersiveArticleViewState3;
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1276885463, new cf(theLookImmersiveArticleViewState4, context, 13), composer2);
                        final PagerState pagerState = pagerStateB;
                        PagerKt.a(pagerState, modifierI, null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, null, null, null, composableLambdaImplB, composer2, 48, 24576, 16380);
                        Modifier modifierG = BoxScopeInstance.f4938a.g(tr.d("TheLookImmersiveArticleDetailScreen$lambda$5", 1.0f), Alignment.Companion.f8589i);
                        MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierG);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD2, function8);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function9);
                        cj.s(iHashCode2, composer2, function10, composer2, function11);
                        Modifier modifierC3 = n00.c(composer2, modifierC2, function12, "TheLookImmersiveArticleDetailScreen$lambda$5", 1.0f);
                        List list = theLookImmersiveArticleViewState4.f65395e;
                        int i7 = theLookImmersiveArticleViewState4.f65396f;
                        boolean z2 = ((ImmersiveArticleLookCardUiModel) list.get(i7)).g;
                        String str3 = ((ImmersiveArticleLookCardUiModel) list.get(i7)).d;
                        LookSkuTypeUiModel lookSkuTypeUiModel = ((ImmersiveArticleLookCardUiModel) list.get(i7)).f58684e;
                        int i8 = theLookImmersiveArticleViewState4.f65396f;
                        int size = list.size();
                        final Function2 function13 = function4;
                        boolean zK2 = composer2.K(function13);
                        Object objX6 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zK2 || objX6 == composer$Companion$Empty$2) {
                            objX6 = new Function2<SkuIdUiModel, LookSkuTypeUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$1$1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj4, Object obj5) {
                                    String str4 = ((SkuIdUiModel) obj4).f61764b;
                                    str4.getClass();
                                    SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str4);
                                    function13.invoke(skuIdUiModel, (LookSkuTypeUiModel) obj5);
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX6);
                        }
                        Function2 function14 = (Function2) objX6;
                        final Function2 function15 = function2;
                        boolean zK3 = composer2.K(function15) | composer2.y(theLookImmersiveArticleViewState4);
                        final CoroutineScope coroutineScope6 = coroutineScope4;
                        boolean zY4 = zK3 | composer2.y(coroutineScope6) | composer2.K(pagerState);
                        final Function2 function16 = function3;
                        boolean zK4 = zY4 | composer2.K(function16);
                        Object objX7 = composer2.x();
                        if (zK4 || objX7 == composer$Companion$Empty$2) {
                            final int i9 = 0;
                            objX7 = new Function1() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.a
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    int i10 = i9;
                                    PagerState pagerState2 = pagerState;
                                    Function2 function17 = function16;
                                    CoroutineScope coroutineScope7 = coroutineScope6;
                                    TheLookImmersiveArticleViewState theLookImmersiveArticleViewState5 = theLookImmersiveArticleViewState4;
                                    Function2 function18 = function15;
                                    Integer num = (Integer) obj4;
                                    switch (i10) {
                                        case 0:
                                            int iIntValue2 = num.intValue();
                                            function18.invoke(num, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState5.f65395e.get(iIntValue2)).f58681a);
                                            BuildersKt.c(coroutineScope7, null, null, new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$2$1$1(pagerState2, iIntValue2, null), 3);
                                            function17.invoke(theLookImmersiveArticleViewState5.f65392a, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState5.f65395e.get(theLookImmersiveArticleViewState5.f65396f)).f58681a);
                                            break;
                                        default:
                                            int iIntValue3 = num.intValue();
                                            function18.invoke(num, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState5.f65395e.get(iIntValue3)).f58681a);
                                            BuildersKt.c(coroutineScope7, null, null, new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1(pagerState2, iIntValue3, null), 3);
                                            function17.invoke(theLookImmersiveArticleViewState5.f65392a, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState5.f65395e.get(theLookImmersiveArticleViewState5.f65396f)).f58681a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            coroutineScope5 = coroutineScope6;
                            function7 = function16;
                            composer2.q(objX7);
                        } else {
                            coroutineScope5 = coroutineScope6;
                            function7 = function16;
                        }
                        Function1 function17 = (Function1) objX7;
                        boolean zK5 = composer2.K(function15) | composer2.y(theLookImmersiveArticleViewState4) | composer2.y(coroutineScope5) | composer2.K(pagerState) | composer2.K(function7);
                        Object objX8 = composer2.x();
                        if (zK5 || objX8 == composer$Companion$Empty$2) {
                            final int i10 = 1;
                            final CoroutineScope coroutineScope7 = coroutineScope5;
                            final Function2 function18 = function7;
                            objX8 = new Function1() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.a
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    int i11 = i10;
                                    PagerState pagerState2 = pagerState;
                                    Function2 function19 = function18;
                                    CoroutineScope coroutineScope8 = coroutineScope7;
                                    TheLookImmersiveArticleViewState theLookImmersiveArticleViewState5 = theLookImmersiveArticleViewState4;
                                    Function2 function110 = function15;
                                    Integer num = (Integer) obj4;
                                    switch (i11) {
                                        case 0:
                                            int iIntValue2 = num.intValue();
                                            function110.invoke(num, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState5.f65395e.get(iIntValue2)).f58681a);
                                            BuildersKt.c(coroutineScope8, null, null, new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$2$1$1(pagerState2, iIntValue2, null), 3);
                                            function19.invoke(theLookImmersiveArticleViewState5.f65392a, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState5.f65395e.get(theLookImmersiveArticleViewState5.f65396f)).f58681a);
                                            break;
                                        default:
                                            int iIntValue3 = num.intValue();
                                            function110.invoke(num, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState5.f65395e.get(iIntValue3)).f58681a);
                                            BuildersKt.c(coroutineScope8, null, null, new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1(pagerState2, iIntValue3, null), 3);
                                            function19.invoke(theLookImmersiveArticleViewState5.f65392a, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState5.f65395e.get(theLookImmersiveArticleViewState5.f65396f)).f58681a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX8);
                        }
                        TheLookImmersiveArticleLookStepperKt.a(modifierC3, str, str2, z2, str3, lookSkuTypeUiModel, i8, size, function14, function17, (Function1) objX8, composer2, 6);
                        composer2.r();
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805306416, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mf(theLookImmersiveArticleViewState, str, str2, sharedFlow, function2, function3, function1, function4, function5, function6, i2);
        }
    }
}

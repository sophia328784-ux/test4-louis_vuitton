package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.common.ItemUtilsKt;
import com.vuitton.android.designkit.ui.common.RowItemCenterPosition;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import defpackage.cj;
import defpackage.hg;
import defpackage.jx;
import defpackage.n00;
import defpackage.oy;
import defpackage.pq0;
import defpackage.py;
import defpackage.ud;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FilterCategorySliderKt {
    public static final void a(Modifier modifier, boolean z, final ScrollState scrollState, List list, ProductFiltersCategoryUiModel productFiltersCategoryUiModel, final Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Object obj;
        char c2;
        final ProductFiltersCategoryUiModel productFiltersCategoryUiModel2;
        Map map;
        final CoroutineScope coroutineScope;
        Object oyVar;
        String str;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FilterCategorySlider");
        }
        Modifier modifier2 = modifierE;
        scrollState.getClass();
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-336218337);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.K(scrollState) ? 256 : 128) | (gapComposerH.y(list) ? 2048 : 1024) | (gapComposerH.K(productFiltersCategoryUiModel) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            LayoutDirection layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            boolean zK = gapComposerH.K(list);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new LinkedHashMap();
                gapComposerH.q(objX2);
            }
            Map map2 = (Map) objX2;
            float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            int iB = (int) ResourcesExtKt.b((f2 - LVAppDesignKitTheme.l(gapComposerH).f48416e) - LVAppDesignKitTheme.d(gapComposerH).v);
            Modifier modifierC = ModifierExtKt.c(BackgroundKt.b(ClipKt.a(SizeKt.f(modifier2, LVAppDesignKitTheme.d(gapComposerH).v), LVAppDesignKitTheme.j(gapComposerH).f48412e), Color.b(LVAppDesignKitTheme.h(gapComposerH).f48402b, LVAppDesignKitTheme.c(gapComposerH).f48361b.g), RectangleShapeKt.f8913a), new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM), new Dp(8.0f), null, null, null, null, null, null, false, 508);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            Context context2 = context;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            CoroutineScope coroutineScope3 = coroutineScope2;
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function6);
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
            int i4 = i3;
            final int i5 = iB;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(ScrollKt.a(BoxScopeInstance.f4938a.g(n00.g("FilterCategorySlider", "QAF_FilterCategoriesItem_view"), Alignment.Companion.f8586e), scrollState, false, 14), LVAppDesignKitTheme.l(gapComposerH).f48414b + f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            boolean zY = gapComposerH.y(list);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new ud(list, 4);
                gapComposerH.q(objX3);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierM, false, (Function1) objX3);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            gapComposerH.L(-1235819067);
            Iterator it = list.iterator();
            int i6 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                int i7 = i6 + 1;
                if (i6 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ProductFiltersCategoryUiModel productFiltersCategoryUiModel3 = (ProductFiltersCategoryUiModel) next;
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = AnimatableKt.a(1.0f);
                    gapComposerH.q(objX4);
                }
                final Animatable animatable = (Animatable) objX4;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FilterCategorySlider");
                boolean zD = gapComposerH.d(layoutDirection.ordinal()) | gapComposerH.y(map2) | gapComposerH.K(productFiltersCategoryUiModel3);
                Object objX5 = gapComposerH.x();
                if (zD || objX5 == composer$Companion$Empty$1) {
                    objX5 = new jx(layoutDirection, map2, productFiltersCategoryUiModel3, 1);
                    gapComposerH.q(objX5);
                }
                Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier, (Function1) objX5);
                i5 = i5;
                i4 = i4;
                final CoroutineScope coroutineScope4 = coroutineScope3;
                boolean zK2 = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(productFiltersCategoryUiModel3) | gapComposerH.y(map2) | gapComposerH.d(i5) | ((i4 & 896) == 256) | gapComposerH.y(coroutineScope4);
                Object objX6 = gapComposerH.x();
                if (zK2 || objX6 == composer$Companion$Empty$1) {
                    c2 = 16384;
                    productFiltersCategoryUiModel2 = productFiltersCategoryUiModel3;
                    final Map map3 = map2;
                    obj = new Function0() { // from class: ny
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            ProductFiltersCategoryUiModel productFiltersCategoryUiModel4 = productFiltersCategoryUiModel2;
                            function1.invoke(productFiltersCategoryUiModel4.f62970a);
                            ItemUtilsKt.a((RowItemCenterPosition) map3.get(productFiltersCategoryUiModel4.f62970a), i5, scrollState, coroutineScope4);
                            return Unit.f71739a;
                        }
                    };
                    map = map3;
                    coroutineScope = coroutineScope4;
                    gapComposerH.q(obj);
                } else {
                    obj = objX6;
                    map = map2;
                    c2 = 16384;
                    productFiltersCategoryUiModel2 = productFiltersCategoryUiModel3;
                    coroutineScope = coroutineScope4;
                }
                Function0 function7 = (Function0) obj;
                String str2 = productFiltersCategoryUiModel2.f62971b;
                boolean zC = Intrinsics.c(productFiltersCategoryUiModel2.f62970a, productFiltersCategoryUiModel != null ? productFiltersCategoryUiModel.f62970a : null);
                Modifier modifierK = PaddingKt.k(modifierA, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                boolean zY2 = gapComposerH.y(coroutineScope) | gapComposerH.y(animatable);
                Object objX7 = gapComposerH.x();
                if (zY2 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new Function1() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.b
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj2;
                            layoutCoordinates.getClass();
                            float fA = (int) (layoutCoordinates.a() >> 32);
                            BuildersKt.c(coroutineScope, null, null, new FilterCategorySliderKt$FilterCategorySlider$1$2$1$1$1$1(animatable, (fA - (0.5f * fA)) + Float.intBitsToFloat((int) (LayoutCoordinatesKt.f(layoutCoordinates) >> 32)), fA, null), 3);
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX7);
                }
                Modifier modifierA2 = AlphaKt.a(OnGloballyPositionedModifierKt.a(modifierK, (Function1) objX7), 1.0f - ((Number) animatable.d()).floatValue());
                context2 = context2;
                boolean zK3 = gapComposerH.K(productFiltersCategoryUiModel2) | gapComposerH.d(i6) | ((i4 & 57344) == c2) | gapComposerH.y(context2) | ((i4 & 112) == 32) | gapComposerH.K(function7);
                Object objX8 = gapComposerH.x();
                if (zK3 || objX8 == composer$Companion$Empty$1) {
                    str = str2;
                    oyVar = new oy(productFiltersCategoryUiModel2, i6, productFiltersCategoryUiModel, context2, z, function7);
                    gapComposerH.q(oyVar);
                } else {
                    str = str2;
                    oyVar = objX8;
                }
                Modifier modifierA3 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierA2, "QAF_FilterCategory_button", (Function1) oyVar, 2);
                boolean zK4 = gapComposerH.K(function7);
                Object objX9 = gapComposerH.x();
                if (zK4 || objX9 == composer$Companion$Empty$1) {
                    objX9 = new py(function7, 0);
                    gapComposerH.q(objX9);
                }
                QuickAccessFiltersCategoryKt.a(modifierA3, str, zC, (Function0) objX9, gapComposerH, 0);
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                layoutDirection = layoutDirection;
                f3 = f3;
                map2 = map;
                it = it;
                coroutineScope3 = coroutineScope;
                i6 = i7;
            }
            gapComposer = gapComposerH;
            pq0.x(gapComposer, false, true, true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(modifier2, z, scrollState, list, productFiltersCategoryUiModel, function1, i2, 4);
        }
    }
}

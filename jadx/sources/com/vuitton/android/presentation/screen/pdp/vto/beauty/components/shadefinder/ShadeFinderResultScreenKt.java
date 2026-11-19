package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import android.content.Context;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.pager.PageSize;
import androidx.compose.foundation.pager.PagerDefaults;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerSnapDistance;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.db;
import defpackage.fs0;
import defpackage.kj0;
import defpackage.kn0;
import defpackage.n00;
import defpackage.o60;
import defpackage.p0;
import defpackage.qm0;
import defpackage.ti0;
import defpackage.tr;
import defpackage.zs0;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "previousPage", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShadeFinderResultScreenKt {
    public static final void a(final PagerState pagerState, final List list, final float f2, final boolean z, Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(230399326);
        int i3 = i2 | (gapComposerH.K(pagerState) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.b(z) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = i3 & 14;
            TargetedFlingBehavior targetedFlingBehaviorA = PagerDefaults.a(pagerState, PagerSnapDistance.Companion.a(), AnimationSpecKt.c(400, 0, EasingKt.f3864c, 2), gapComposerH, i4, 20);
            Modifier modifierD = tr.d("ShadeFinderCarousel-942rkJo", 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            PageSize.Fixed fixed = new PageSize.Fixed(f2, null);
            Dp.Companion companion = Dp.f11004c;
            PagerKt.a(pagerState, null, PaddingKt.c(f2 / 4.0f, 2), fixed, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, targetedFlingBehaviorA, false, false, null, null, null, ComposableLambdaKt.b(2140673317, new Function4() { // from class: zv0
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int iIntValue = ((Integer) obj2).intValue();
                    ((Integer) obj4).intValue();
                    ((PagerScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    String str = ((RecommendationUiModel) list.get(iIntValue)).f62170a.f51792c.f51778b;
                    ShadeFinderResultScreenKt.b(f2, 0, (Composer) obj3, str);
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, i4, 24576, 16242);
            gapComposerH = gapComposerH;
            if (z) {
                AccessibilityPagerButtonsKt.b(BoxScopeInstance.f4938a.g(PaddingKt.i(o60.c(gapComposerH, 300422276, "ShadeFinderCarousel-942rkJo", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e), Alignment.Companion.f8587f), pagerState, LVColorScheme.INVERT, Arrangement.g, Alignment.Companion.l, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, ((i3 << 3) & 112) | 28032, 32);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(300877790);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(list, f2, z, i2) { // from class: aw0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ List f20646c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f20647e;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(385);
                    ShadeFinderResultScreenKt.a(this.f20645b, this.f20646c, this.d, this.f20647e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(float f2, int i2, Composer composer, String str) {
        GapComposer gapComposerH = composer.h(1669130916);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = AspectRatioKt.a(SizeKt.s(new DTFunctionNameModifier("ShadeFinderImage-ziNgDLE"), f2), 1.0f, true);
            String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b))).b(str, ImageConfiguration.Background.Transparent.f65853a);
            strB.getClass();
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA, strB, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ti0(str, f2, i2, 1);
        }
    }

    public static final void c(boolean z, boolean z2, boolean z3, Function0 function0, Function0 function1, Composer composer, int i2) {
        RowScopeInstance rowScopeInstance;
        String str;
        boolean z4;
        boolean z5;
        GapComposer gapComposerH = composer.h(2026035971);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.b(z2) ? 32 : 16) | (gapComposerH.b(z3) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierJ = PaddingKt.j(WindowInsetsPadding_androidKt.b(BackgroundKt.b(ShadowKt.c(SizeKt.d(new DTFunctionNameModifier("ShadeFinderResultBottomBar"), 1.0f), gapComposerH, 6, 3), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a)), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            Integer numValueOf = null;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.f5040a;
            if (z) {
                Modifier modifierA = rowScopeInstance2.a(n00.i(gapComposerH, -1358897753, "ShadeFinderResultBottomBar"), 1.0f, true);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                String strC = StringResources_androidKt.c(gapComposerH, R.string.product_detail_add_to_card);
                if (z3) {
                    gapComposerH.L(-1358607097);
                    int i4 = LVAppDesignKitTheme.a(gapComposerH).y;
                    z5 = false;
                    gapComposerH.Z(false);
                    numValueOf = Integer.valueOf(i4);
                } else {
                    z5 = false;
                    gapComposerH.L(-1358519057);
                    gapComposerH.Z(false);
                }
                rowScopeInstance = rowScopeInstance2;
                str = "ShadeFinderResultBottomBar";
                z4 = z5;
                LVButtonKt.b(196608 | ((i3 << 15) & 1879048192), 456, gapComposerH, modifierA, configurationButton, null, numValueOf, strC, function1, true, false, false);
                gapComposerH.Z(z4);
            } else {
                rowScopeInstance = rowScopeInstance2;
                str = "ShadeFinderResultBottomBar";
                z4 = false;
                gapComposerH.L(-1358407333);
                gapComposerH.Z(false);
            }
            if (z2) {
                LVButtonKt.b((i3 << 18) & 1879048192, 504, gapComposerH, rowScopeInstance.a(n00.i(gapComposerH, -1358369172, str), 1.0f, true), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.tryon_cta), function0, false, false, false);
                gapComposerH.Z(z4);
            } else {
                gapComposerH.L(-1358108741);
                gapComposerH.Z(z4);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qm0(z, z2, z3, function0, function1, i2);
        }
    }

    public static final void d(ShadeFinderViewState shadeFinderViewState, SnackbarHostState snackbarHostState, Function0 function0, Function1 function1, Function2 function2, Function1 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z;
        shadeFinderViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(2934586);
        int i3 = i2 | (gapComposerH.y(shadeFinderViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ShadeFinderResponseUiModel shadeFinderResponseUiModel = shadeFinderViewState.d;
            if (shadeFinderResponseUiModel == null) {
                gapComposerH.L(1525479820);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
            } else {
                gapComposerH.L(1525479821);
                List list = shadeFinderResponseUiModel.f62174b;
                boolean zY = gapComposerH.y(list);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new db(list, 15);
                    gapComposerH.q(objX);
                }
                PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotIntStateKt.a(0);
                    gapComposerH.q(objX2);
                }
                MutableIntState mutableIntState = (MutableIntState) objX2;
                boolean zK = gapComposerH.K(pagerStateB) | gapComposerH.y(list) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
                Object objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1 shadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1 = new ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1(pagerStateB, list, mutableIntState, function3, null);
                    gapComposerH.q(shadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1);
                    objX3 = shadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;
                }
                EffectsKt.e(gapComposerH, pagerStateB, (Function2) objX3);
                RecommendationUiModel recommendationUiModel = (RecommendationUiModel) CollectionsKt.G(pagerStateB.k(), list);
                if (recommendationUiModel == null) {
                    z = false;
                    gapComposer = gapComposerH;
                } else {
                    z = false;
                    ScaffoldKt.a(null, ComposableLambdaKt.b(-700976984, new kn0(function0, 23), gapComposerH), ComposableLambdaKt.b(964896711, new kj0((Object) shadeFinderViewState, (Object) list, function1, (Object) recommendationUiModel, (Function) function2, 19), gapComposerH), ComposableLambdaKt.b(-1664196890, new fs0(snackbarHostState, 5), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(1666294333, new p0(shadeFinderResponseUiModel, list, recommendationUiModel, context, pagerStateB, shadeFinderViewState, 22), gapComposerH), gapComposerH, 805309872, 497);
                    gapComposer = gapComposerH;
                }
                gapComposer.Z(z);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(shadeFinderViewState, snackbarHostState, function0, function1, function2, function3, i2);
        }
    }
}

package com.vuitton.android.presentation.screen.plp.components.composables.brandcontent;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.media3.exoplayer.ExoPlayer;
import coil3.compose.SingletonAsyncImageKt;
import coil3.request.ImageRequest;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.common.editorial.models.RatioUiModel;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.compose.components.LVPagerLineIndicatorKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.PredefinedImageRequestOptions;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.ScaleUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.WishlistAnimationKt;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.a;
import defpackage.cf;
import defpackage.cj;
import defpackage.db;
import defpackage.fh;
import defpackage.kj0;
import defpackage.n00;
import defpackage.nj0;
import defpackage.ok0;
import defpackage.rh0;
import defpackage.tr;
import defpackage.v40;
import defpackage.wd0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPProductFullscreenComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62750a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f62751b;

        static {
            int[] iArr = new int[ScaleUiModel.values().length];
            try {
                iArr[ScaleUiModel.FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScaleUiModel.FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62750a = iArr;
            int[] iArr2 = new int[RatioUiModel.values().length];
            try {
                iArr2[RatioUiModel.RATIO_16X9.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            f62751b = iArr2;
        }
    }

    public static final void a(AssetUiModel assetUiModel, UrlFactory urlFactory, Composer composer, int i2) {
        ContentScale contentScale;
        String str;
        String str2;
        GapComposer gapComposerH = composer.h(-328160788);
        int i3 = (gapComposerH.y(assetUiModel) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
            AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
            if (assetVideoUiModel == null || (str2 = assetVideoUiModel.f51783c) == null || !StringExtKt.a(str2)) {
                Modifier modifierO = n00.i(gapComposerH, -891551173, "FullscreenAssetPage").o(SizeKt.f5052c);
                ImageRequest.Builder builder = new ImageRequest.Builder(context);
                PredefinedImageRequestOptions.b(builder, context, (assetImageUiModel == null || (str = assetImageUiModel.f51778b) == null) ? null : urlFactory.b(str, ImageConfiguration.Background.Transparent.f65853a));
                ImageRequest imageRequestA = builder.a();
                ScaleUiModel scaleUiModel = assetImageUiModel != null ? assetImageUiModel.f51779c : null;
                int i4 = scaleUiModel == null ? -1 : WhenMappings.f62750a[scaleUiModel.ordinal()];
                if (i4 == -1) {
                    ContentScale.f9447a.getClass();
                    contentScale = ContentScale.Companion.f9449b;
                } else if (i4 == 1) {
                    ContentScale.f9447a.getClass();
                    contentScale = ContentScale.Companion.f9450c;
                } else if (i4 != 2) {
                    v40.g();
                    return;
                } else {
                    ContentScale.f9447a.getClass();
                    contentScale = ContentScale.Companion.f9449b;
                }
                SingletonAsyncImageKt.a(imageRequestA, modifierO, PainterResources_androidKt.a(R.drawable.placeholder_transparent, gapComposerH, 0), contentScale, gapComposerH, 4528);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-892257725);
                boolean zK = gapComposerH.K(str2);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new LvExoPlayer(context);
                    gapComposerH.q(objX);
                }
                Modifier modifierO2 = new DTFunctionNameModifier("FullscreenAssetPage").o(SizeKt.f5052c);
                ExoPlayer exoPlayer = ((LvExoPlayer) objX).f50900a;
                String str3 = assetVideoUiModel.f51783c;
                String str4 = assetVideoUiModel.f51784e;
                if (StringsKt.w(str4)) {
                    str4 = null;
                }
                String str5 = assetVideoUiModel.d;
                String str6 = !StringsKt.w(str5) ? str5 : null;
                ContentScale.f9447a.getClass();
                LvVideoPlayerKt.b(modifierO2, exoPlayer, str3, str4, null, true, str6, ContentScale.Companion.f9449b, true, false, true, false, null, false, 4, null, null, null, null, null, null, gapComposerH, 918749190, 27654, 0, 2070544);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(assetUiModel, urlFactory, i2, 16);
        }
    }

    public static final void b(PlpProductUiModel plpProductUiModel, float f2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-529926415);
        int i3 = (gapComposerH.y(plpProductUiModel) ? 4 : 2) | i2 | (gapComposerH.c(f2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            List list = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62947f;
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new db(list, 8);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new UrlFactory(ContextExtKt.f(context));
                gapComposerH.q(objX2);
            }
            UrlFactory urlFactory = (UrlFactory) objX2;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FullscreenImageSlider");
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            PagerKt.a(pagerStateB, AspectRatioKt.a(BackgroundKt.b(tr.d("FullscreenImageSlider", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48377e, RectangleShapeKt.f8913a), f2, false), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, null, null, null, ComposableLambdaKt.b(-955140168, new cf(list, urlFactory, 9), gapComposerH), gapComposerH, 0, 24576, 16380);
            gapComposerH = gapComposerH;
            if (list.size() > 1) {
                LVPagerLineIndicatorKt.a(pagerStateB, list.size(), BoxScopeInstance.f4938a.g(n00.i(gapComposerH, -1391903053, "FullscreenImageSlider"), Alignment.Companion.f8589i), 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 0, 56);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1391716309);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fh(plpProductUiModel, f2, i2, 2);
        }
    }

    public static final void c(Modifier modifier, PlpSectionUiModel.ProductFullscreen productFullscreen, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        Modifier modifier2;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PLPProductFullscreenComposable");
        }
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1637326545);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.y(productFullscreen) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PLPProductFullscreenComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PlpProductUiModel plpProductUiModel = productFullscreen.f62925b;
            PlpProductUiModel.SkuDataUiModel skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b();
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zK = gapComposerH.K(skuDataUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                Resources resources = context.getResources();
                resources.getClass();
                objX = plpProductUiModel.a(resources);
                gapComposerH.q(objX);
            }
            String str = (String) objX;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(SizeKt.d(dTFunctionNameModifier, 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 7);
            boolean zY = ((i3 & 896) == 256) | gapComposerH.y(productFullscreen);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new rh0(function1, productFullscreen, 18);
                gapComposerH.q(objX2);
            }
            Modifier modifierC = ModifierExtKt.c(modifierM, false, null, null, (Function0) objX2, 31);
            boolean zK2 = gapComposerH.K(str);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                z = true;
                objX3 = new nj0(str, 1);
                gapComposerH.q(objX3);
            } else {
                z = true;
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierC, z, (Function1) objX3);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Unit unit = null;
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
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function8);
            b(plpProductUiModel, WhenMappings.f62751b[productFullscreen.f62926c.ordinal()] == 1 ? 1.7777778f : 0.8f, gapComposerH, 0);
            Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Modifier modifierE2 = n00.e(gapComposerH, modifierC3, function8, "PLPProductFullscreenComposable", 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierE2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC4, function8);
            Modifier modifierB2 = cj.b("PLPProductFullscreenComposable", RowScopeInstance.f5040a, 1.0f, true);
            String str2 = skuDataUiModel.d;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            TextKt.c(str2, modifierB2, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            gapComposerH = gapComposerH;
            MutableState mutableState = skuDataUiModel.f62948h;
            if (mutableState == null) {
                gapComposerH.L(-1207982118);
                gapComposerH.Z(false);
            } else {
                Modifier modifierO = SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -1207982117, "PLPProductFullscreenComposable"), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).m);
                PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel = (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b();
                int i4 = LVAppDesignKitTheme.g(gapComposerH).U;
                int i5 = LVAppDesignKitTheme.g(gapComposerH).V;
                boolean zY2 = gapComposerH.y(plpProductUiModel) | ((i3 & 7168) == 2048);
                Object objX4 = gapComposerH.x();
                if (zY2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new ok0(function2, plpProductUiModel, 0);
                    gapComposerH.q(objX4);
                }
                WishlistAnimationKt.b(modifierO, plpProductUiModel, pLPWishlistStateUiModel, i4, i5, (Function0) objX4, function3, gapComposerH, (i3 << 6) & 3670016, 0);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            PlpProductUiModel.PriceInfoUiModel priceInfoUiModelB = plpProductUiModel.b();
            if (priceInfoUiModelB == null) {
                gapComposerH.L(-1406955664);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1406955663);
                ProductCellFullKt.f(null, priceInfoUiModelB, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 0, 1);
                gapComposerH.Z(false);
                unit = Unit.f71739a;
            }
            if (unit == null) {
                gapComposerH.L(-461021866);
                SpacerKt.a(gapComposerH, new DTFunctionNameModifier("PLPProductFullscreenComposable"));
            } else {
                gapComposerH.L(-461028376);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(modifier2, (PlpSectionUiModel) productFullscreen, function1, function2, function3, i2, 2);
        }
    }
}

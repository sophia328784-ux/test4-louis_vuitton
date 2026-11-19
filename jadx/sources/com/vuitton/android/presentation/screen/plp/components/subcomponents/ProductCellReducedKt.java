package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import coil3.compose.SingletonAsyncImageKt;
import coil3.request.ImageRequest;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.PredefinedImageRequestOptions;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.ScaleUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.bo0;
import defpackage.cj;
import defpackage.cl0;
import defpackage.n00;
import defpackage.nj0;
import defpackage.ok0;
import defpackage.sm0;
import defpackage.tr;
import defpackage.up0;
import defpackage.v40;
import defpackage.xo0;
import defpackage.xp0;
import defpackage.z2;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductCellReducedKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62853a;

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
            f62853a = iArr;
        }
    }

    public static final void a(Modifier modifier, final PlpProductUiModel plpProductUiModel, final Function0 function0, final Function1 function1, Function1 function2, final Function2 function3, Composer composer, int i2) {
        int i3;
        Object obj;
        ContentScale contentScale;
        PlpProductUiModel plpProductUiModel2;
        Function1 function4;
        AssetImageUiModel assetImageUiModel;
        AssetImageUiModel assetImageUiModel2;
        String str;
        AssetImageUiModel assetImageUiModel3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductCellReduced");
        }
        Modifier modifier2 = modifierE;
        plpProductUiModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1412750792);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(plpProductUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
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
            String str2 = (String) objX;
            boolean zY = gapComposerH.y(skuDataUiModel);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new up0(skuDataUiModel, 1);
                gapComposerH.q(objX2);
            }
            final PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX2, gapComposerH, 0, 3);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new UrlFactory(ContextExtKt.f(context));
                gapComposerH.q(objX3);
            }
            UrlFactory urlFactory = (UrlFactory) objX3;
            List list = skuDataUiModel.f62947f;
            AssetUiModel assetUiModel = (AssetUiModel) CollectionsKt.G(pagerStateB.k(), list);
            ImageLoaderExtKt.a(context, (assetUiModel == null || (assetImageUiModel3 = assetUiModel.f51780b) == null) ? null : assetImageUiModel3.f51778b, urlFactory, gapComposerH, KyberEngine.KyberPolyBytes);
            boolean zK2 = gapComposerH.K(str2);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new nj0(str2, 12);
                gapComposerH.q(objX4);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifier2, true, (Function1) objX4);
            int i5 = i4 & 7168;
            boolean zY2 = (i5 == 2048) | gapComposerH.y(plpProductUiModel) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(pagerStateB) | ((i4 & 896) == 256);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                obj = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellReducedKt$ProductCellReduced$3$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Function1 function5 = function1;
                        PlpProductUiModel plpProductUiModel3 = plpProductUiModel;
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, new xp0(function5, plpProductUiModel3, 1), new cl0(function3, plpProductUiModel3, pagerStateB, 6), null, new bo0(function0, 2), continuation, 4);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(obj);
            } else {
                obj = objX5;
            }
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(SuspendingPointerInputFilterKt.a(modifierB, plpProductUiModel, (PointerInputEventHandler) obj), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "plp_productCard_view");
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function8);
            Function1 function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            Function2 function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(AspectRatioKt.a(modifier2, 0.8f, false), null, null, 7);
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD2, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
            Modifier modifierE3 = ModifierExtKt.e(BackgroundKt.b(tr.e(gapComposerH, modifierC2, function10, "ProductCellReduced").o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48377e, RectangleShapeKt.f8913a), "plp_product_image");
            ImageRequest.Builder builder = new ImageRequest.Builder(context);
            AssetUiModel assetUiModel2 = (AssetUiModel) CollectionsKt.firstOrNull(list);
            PredefinedImageRequestOptions.b(builder, context, (assetUiModel2 == null || (assetImageUiModel2 = assetUiModel2.f51780b) == null || (str = assetImageUiModel2.f51778b) == null) ? null : urlFactory.c(str));
            ImageRequest imageRequestA = builder.a();
            AssetUiModel assetUiModel3 = (AssetUiModel) CollectionsKt.firstOrNull(list);
            ScaleUiModel scaleUiModel = (assetUiModel3 == null || (assetImageUiModel = assetUiModel3.f51780b) == null) ? null : assetImageUiModel.f51779c;
            int i6 = scaleUiModel == null ? -1 : WhenMappings.f62853a[scaleUiModel.ordinal()];
            if (i6 == -1) {
                ContentScale.f9447a.getClass();
                contentScale = ContentScale.Companion.f9449b;
            } else if (i6 == 1) {
                ContentScale.f9447a.getClass();
                contentScale = ContentScale.Companion.f9450c;
            } else if (i6 != 2) {
                v40.g();
                return;
            } else {
                ContentScale.f9447a.getClass();
                contentScale = ContentScale.Companion.f9449b;
            }
            SingletonAsyncImageKt.a(imageRequestA, modifierE3, PainterResources_androidKt.a(R.drawable.placeholder_transparent, gapComposerH, 0), contentScale, gapComposerH, 4144);
            gapComposerH.Z(true);
            MutableState mutableState = skuDataUiModel.f62948h;
            PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel = mutableState != null ? (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b() : null;
            if (pLPWishlistStateUiModel == null) {
                gapComposerH.L(-1066733829);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1066733828);
                if (pLPWishlistStateUiModel.f62952a) {
                    plpProductUiModel2 = plpProductUiModel;
                } else {
                    plpProductUiModel2 = plpProductUiModel;
                    if (!((Boolean) plpProductUiModel2.g.getF10755b()).booleanValue()) {
                        gapComposerH.L(-408543368);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
                Modifier modifierO = SizeKt.o(PaddingKt.i(BoxScopeInstance.f4938a.g(n00.i(gapComposerH, -409425566, "ProductCellReduced"), Alignment.Companion.d), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.d(gapComposerH).m);
                boolean zK3 = gapComposerH.K(pLPWishlistStateUiModel);
                Object objX6 = gapComposerH.x();
                if (zK3 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new xo0(pLPWishlistStateUiModel, 3);
                    gapComposerH.q(objX6);
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierO, false, (Function1) objX6);
                boolean zY3 = gapComposerH.y(hapticFeedback) | (i5 == 2048) | gapComposerH.y(plpProductUiModel2);
                Object objX7 = gapComposerH.x();
                int i7 = 6;
                if (zY3 || objX7 == composer$Companion$Empty$1) {
                    function4 = function1;
                    objX7 = new sm0(hapticFeedback, function4, plpProductUiModel2, i7);
                    gapComposerH.q(objX7);
                } else {
                    function4 = function1;
                }
                Modifier modifierC3 = ModifierExtKt.c(modifierB2, false, null, null, (Function0) objX7, 31);
                boolean zY4 = (i5 == 2048) | gapComposerH.y(plpProductUiModel2);
                Object objX8 = gapComposerH.x();
                if (zY4 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new ok0(function4, plpProductUiModel2, 6);
                    gapComposerH.q(objX8);
                }
                WishlistAnimationKt.b(modifierC3, plpProductUiModel2, pLPWishlistStateUiModel, 0, 0, (Function0) objX8, function2, gapComposerH, (i4 & 112) | ((i4 << 6) & 3670016), 24);
                gapComposerH.Z(false);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(modifier2, plpProductUiModel, function0, function1, function2, function3, i2);
        }
    }
}

package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.components.components.SwipeAction;
import com.vuitton.android.designkit.components.components.ZoomableContentScope;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import com.vuitton.android.presentation.compose.components.PagerParallaxFactor;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.CarouselArticleSectionUiModel;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistProductItemKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z20 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81510b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f81511c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f81512e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f81513f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81514h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81515i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f81516j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f81517k;

    public /* synthetic */ z20(float f2, PagerState pagerState, boolean z, MutableState mutableState, Context context, CarouselArticleSectionUiModel carouselArticleSectionUiModel, boolean z2, Function1 function1, MutableState mutableState2) {
        this.f81512e = f2;
        this.g = pagerState;
        this.d = z;
        this.f81514h = mutableState;
        this.f81516j = context;
        this.f81517k = carouselArticleSectionUiModel;
        this.f81513f = z2;
        this.f81511c = function1;
        this.f81515i = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f81510b;
        Object obj4 = this.f81517k;
        Object obj5 = this.f81516j;
        Object obj6 = this.f81515i;
        Object obj7 = this.f81514h;
        Object obj8 = this.g;
        switch (i2) {
            case 0:
                PagerState pagerState = (PagerState) obj8;
                MutableState mutableState = (MutableState) obj6;
                ZoomableContentScope zoomableContentScope = (ZoomableContentScope) obj;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                zoomableContentScope.getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleCarousel$lambda$14$0$2");
                float f2 = this.f81512e;
                LVSlideShowKt.a(pagerState, GraphicsLayerModifierKt.c(AspectRatioKt.a(dTFunctionNameModifier, f2, false), zoomableContentScope.getF48292a(), zoomableContentScope.getF48292a(), Call.Parameters.DEFAULT_CAMERA_ZOOM, zoomableContentScope.getF48293b(), zoomableContentScope.getF48294c(), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 0, 524260), false, PagerParallaxFactor.LightParallax, !((Boolean) ((MutableState) obj7).getF10755b()).booleanValue(), this.d, ComposableLambdaKt.b(3909499, new b30((Context) obj5, pagerState, f2, (CarouselArticleSectionUiModel) obj4, this.f81513f, this.f81511c, mutableState), composer), composer, 12586368, 16);
                return Unit.f71739a;
            default:
                Modifier modifierE = (Modifier) obj8;
                final WishlistItemUiModel wishlistItemUiModel = (WishlistItemUiModel) obj7;
                final Function0 function0 = (Function0) obj6;
                final Function0 function1 = (Function0) obj5;
                final Function1 function2 = (Function1) obj4;
                AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "WishlistProductItem$lambda$4");
                }
                final Modifier modifier = modifierE;
                animatedVisibilityScope.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("WishlistProductItem$lambda$4"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 7), "wishlist_item_view");
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(composer2.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                Modifier modifierC = ComposedModifierKt.c(composer2, modifierE2);
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
                Modifier modifierA = ClipKt.a(modifier, LVAppDesignKitTheme.j(composer2).f48410b);
                int i3 = LVAppDesignKitTheme.g(composer2).o1;
                String strC = StringResources_androidKt.c(composer2, R.string.global_remove);
                long j2 = LVAppDesignKitTheme.c(composer2).f48361b.x;
                Function1 function4 = this.f81511c;
                boolean zK = composer2.K(function4) | composer2.K(wishlistItemUiModel);
                Object objX = composer2.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new i71(function4, wishlistItemUiModel, 0);
                    composer2.q(objX);
                }
                List listO = CollectionsKt.O(new SwipeAction(i3, strC, j2, (Function0) objX, null));
                final float f3 = this.f81512e;
                final boolean z = this.d;
                final boolean z2 = this.f81513f;
                LVSwipeToRevealKt.a(modifierA, listO, z, function0, function1, ComposableLambdaKt.b(1318526891, new Function3() { // from class: j71
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj9, Object obj10, Object obj11) {
                        j71 j71Var;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1;
                        Modifier dTFunctionNameModifier2;
                        Modifier modifier2 = (Modifier) obj9;
                        Composer composer3 = (Composer) obj10;
                        int iIntValue = ((Integer) obj11).intValue();
                        Modifier modifierE3 = modifier;
                        if (modifierE3 != null) {
                            modifierE3 = a.e(modifierE3, "WishlistProductItem$lambda$4$0$1");
                        }
                        modifier2.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer3.K(modifier2) ? 4 : 2;
                        }
                        if (composer3.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            String strC2 = StringResources_androidKt.c(composer3, R.string.alt_actions_available);
                            Modifier modifierB = BackgroundKt.b(modifier2.o(modifierE3), LVAppDesignKitTheme.c(composer3).f48361b.f48374a, RectangleShapeKt.f8913a);
                            Object objX2 = composer3.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (objX2 == composer$Companion$Empty$2) {
                                objX2 = InteractionSourceKt.a();
                                composer3.q(objX2);
                            }
                            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX2;
                            Function1 function5 = function2;
                            boolean zK2 = composer3.K(function5);
                            WishlistItemUiModel wishlistItemUiModel2 = wishlistItemUiModel;
                            boolean zK3 = zK2 | composer3.K(wishlistItemUiModel2);
                            Object objX3 = composer3.x();
                            if (zK3 || objX3 == composer$Companion$Empty$2) {
                                objX3 = new i71(function5, wishlistItemUiModel2, 1);
                                composer3.q(objX3);
                            }
                            Modifier modifierC2 = ModifierExtKt.c(modifierB, false, mutableInteractionSource, null, (Function0) objX3, 19);
                            boolean zK4 = composer3.K(wishlistItemUiModel2) | composer3.K(strC2);
                            Object objX4 = composer3.x();
                            if (zK4 || objX4 == composer$Companion$Empty$2) {
                                objX4 = new c61(wishlistItemUiModel2, strC2, 11);
                                composer3.q(objX4);
                            }
                            Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierC2, null, (Function1) objX4, 3);
                            Alignment.f8582a.getClass();
                            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, composer3, 48);
                            int iHashCode2 = Long.hashCode(composer3.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                            Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierA2);
                            ComposeUiNode.b0.getClass();
                            Function0 function6 = ComposeUiNode.Companion.f9641b;
                            if (composer3.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer3.B();
                            if (composer3.getS()) {
                                composer3.C(function6);
                            } else {
                                composer3.o();
                            }
                            Function2 function7 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer3, rowMeasurePolicyA, function7);
                            Function2 function8 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer3, persistentCompositionLocalMapN2, function8);
                            Integer numValueOf = Integer.valueOf(iHashCode2);
                            Function2 function9 = ComposeUiNode.Companion.g;
                            Updater.c(composer3, numValueOf, function9);
                            Function1 function10 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer3, function10);
                            Function2 function11 = ComposeUiNode.Companion.d;
                            Updater.c(composer3, modifierC3, function11);
                            Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("WishlistProductItem$lambda$4$0$1"), LVAppDesignKitTheme.l(composer3).f48416e);
                            float f4 = f3;
                            Modifier modifierA3 = ClipKt.a(SizeKt.o(modifierI, f4), LVAppDesignKitTheme.j(composer3).f48410b);
                            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, composer3, 0);
                            ContentScale.f9447a.getClass();
                            Modifier modifierA4 = PainterModifierKt.a(modifierA3, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode3 = Long.hashCode(composer3.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                            Modifier modifierC4 = ComposedModifierKt.c(composer3, modifierA4);
                            if (composer3.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer3.B();
                            if (composer3.getS()) {
                                composer3.C(function6);
                            } else {
                                composer3.o();
                            }
                            Updater.c(composer3, measurePolicyD2, function7);
                            Updater.c(composer3, persistentCompositionLocalMapN3, function8);
                            cj.s(iHashCode3, composer3, function9, composer3, function10);
                            Modifier modifierE4 = ModifierExtKt.e(ClipKt.a(a.f(composer3, modifierC4, function11, "WishlistProductItem$lambda$4$0$1").o(SizeKt.f5052c), LVAppDesignKitTheme.j(composer3).f48410b), "wishlist_item_image");
                            new UrlFactory(ContextExtKt.f((Context) composer3.k(AndroidCompositionLocals_androidKt.f9936b)));
                            String strD = UrlFactory.d(wishlistItemUiModel2.d, (int) f4, ImageConfiguration.Background.Transparent.f65853a);
                            strD.getClass();
                            ImageLoaderKt.b(modifierE4, strD, null, null, null, 0, false, null, null, null, composer3, 0, 2044);
                            composer3.r();
                            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("WishlistProductItem$lambda$4$0$1");
                            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                            Modifier modifierA5 = rowScopeInstance.a(dTFunctionNameModifier3, 1.0f, true);
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer3, 0);
                            int iHashCode4 = Long.hashCode(composer3.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer3.n();
                            Modifier modifierC5 = ComposedModifierKt.c(composer3, modifierA5);
                            if (composer3.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer3.B();
                            if (composer3.getS()) {
                                composer3.C(function6);
                            } else {
                                composer3.o();
                            }
                            Updater.c(composer3, columnMeasurePolicyA, function7);
                            Updater.c(composer3, persistentCompositionLocalMapN4, function8);
                            cj.s(iHashCode4, composer3, function9, composer3, function10);
                            Updater.c(composer3, modifierC5, function11);
                            Modifier modifierE5 = ModifierExtKt.e(new DTFunctionNameModifier("WishlistProductItem$lambda$4$0$1"), "wishlist_item_text");
                            String str = wishlistItemUiModel2.f65741c;
                            TextStyle textStyle = LVAppDesignKitTheme.n(composer3).m;
                            TextOverflow.f10989a.getClass();
                            TextKt.c(str, modifierE5, 0L, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer3, 0, 24960, 110588);
                            Composer composer4 = composer3;
                            if (z2) {
                                composer4.L(154465690);
                                j71Var = this;
                                TextKt.c(wishlistItemUiModel2.f65742e, PaddingKt.m(new DTFunctionNameModifier("WishlistProductItem$lambda$4$0$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).m, composer4, 0, 0, 131068);
                                composer4 = composer4;
                                composer4.F();
                            } else {
                                j71Var = this;
                                composer4.L(154759601);
                                composer4.F();
                            }
                            composer4.r();
                            Modifier modifierB2 = rowScopeInstance.b(new DTFunctionNameModifier("WishlistProductItem$lambda$4$0$1"), Alignment.Companion.f8591k);
                            if (AccessibilityExtKt.a(composer4)) {
                                DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-1103196584, composer4, "WishlistProductItem$lambda$4$0$1");
                                Object objX5 = composer4.x();
                                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                if (objX5 == composer$Companion$Empty$1) {
                                    objX5 = new o51(17);
                                    composer4.q(objX5);
                                }
                                dTFunctionNameModifier2 = SemanticsModifierKt.b(dTFunctionNameModifierJ, false, (Function1) objX5);
                                composer4.F();
                            } else {
                                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                composer4.L(-1103062261);
                                composer4.F();
                                dTFunctionNameModifier2 = new DTFunctionNameModifier("WishlistProductItem$lambda$4$0$1");
                            }
                            Modifier modifierO = modifierB2.o(dTFunctionNameModifier2);
                            boolean z3 = z;
                            boolean zB = composer4.b(z3);
                            Function0 function12 = function1;
                            boolean zK5 = zB | composer4.K(function12);
                            Function0 function13 = function0;
                            boolean zK6 = zK5 | composer4.K(function13);
                            Object objX6 = composer4.x();
                            if (zK6 || objX6 == composer$Companion$Empty$1) {
                                objX6 = new pg(z3, function12, function13, 2);
                                composer4.q(objX6);
                            }
                            ComposableSingletons$WishlistProductItemKt.f65684a.getClass();
                            IconButtonKt.a((Function0) objX6, modifierO, false, null, null, ComposableSingletons$WishlistProductItemKt.f65685b, composer4, 1572864, 60);
                            composer4.r();
                        } else {
                            composer3.D();
                        }
                        return Unit.f71739a;
                    }
                }, composer2), composer2, ImageMetadata.EDGE_MODE, 0);
                composer2.r();
                return Unit.f71739a;
        }
    }

    public /* synthetic */ z20(Modifier modifier, Function1 function1, WishlistItemUiModel wishlistItemUiModel, boolean z, Function0 function0, Function0 function2, Function1 function3, float f2, boolean z2) {
        this.g = modifier;
        this.f81511c = function1;
        this.f81514h = wishlistItemUiModel;
        this.d = z;
        this.f81515i = function0;
        this.f81516j = function2;
        this.f81517k = function3;
        this.f81512e = f2;
        this.f81513f = z2;
    }
}

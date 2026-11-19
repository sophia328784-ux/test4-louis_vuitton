package defpackage;

import android.content.Context;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.SelectedTextType;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Dp;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieCompositionSpec;
import com.airbnb.lottie.compose.RememberLottieCompositionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.ComposableSingletons$LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.ComposableSingletons$LVMediumTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.ComposableSingletons$LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.designkit.ui.theme.templates.bottomsheet.BottomSheetIconScope;
import com.vuitton.android.presentation.common.editorial.components.carousels.CarouselSItemKt;
import com.vuitton.android.presentation.common.editorial.components.carousels.ComposableSingletons$CarouselSKt;
import com.vuitton.android.presentation.common.editorial.components.productcarousel.ComposableSingletons$ProductCarouselKt;
import com.vuitton.android.presentation.common.editorial.components.productcarousel.ProductCarouselItemKt;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVTimelineKt;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.ComposableSingletons$NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedDiscoverLoadingScreenKt;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedForYouLoadingScreenKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.ComposableSingletons$OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial.ComposableSingletons$TutorialRecommendedKt;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$TrendingComposableKt;
import com.vuitton.android.presentation.screen.search.components.SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.search.components.TrendingComposableKt;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.thankyou.components.ComposableSingletons$ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qn implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79120b;

    public /* synthetic */ qn(int i2) {
        this.f79120b = i2;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = this.f79120b;
        int i10 = 14;
        int i11 = 16;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        switch (i9) {
            case 0:
                ((Integer) obj).intValue();
                Composer composer = (Composer) obj3;
                int iIntValue = ((Integer) obj4).intValue();
                ComposableSingletons$CarouselSKt composableSingletons$CarouselSKt = ComposableSingletons$CarouselSKt.f50753a;
                ((Unit) obj2).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 129) != 128)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    CarouselSItemKt.b(composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                Composer composer2 = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                ComposableSingletons$CatalogStoreModeKt composableSingletons$CatalogStoreModeKt = ComposableSingletons$CatalogStoreModeKt.f64862a;
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 129) != 128)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda__579912689$lambda$0");
                    long j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48374a;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                    Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier, j2, rectangleShapeKt$RectangleShape$1);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
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
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, columnMeasurePolicyA, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function4);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function1);
                    Function2 function5 = ComposeUiNode.Companion.d;
                    SpacerKt.a(composer2, SizeKt.f(a.f(composer2, modifierC, function5, "lambda__579912689$lambda$0"), LVAppDesignKitTheme.l(composer2).f48417f));
                    Modifier modifierM = PaddingKt.m(PaddingKt.k(BackgroundKt.b(SizeKt.d(new DTFunctionNameModifier("lambda__579912689$lambda$0"), 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 7);
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, composer2, 54);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierM);
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
                    Updater.c(composer2, rowMeasurePolicyA, function2);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer2, function4, composer2, function1);
                    Updater.c(composer2, modifierC2, function5);
                    TextKt.c(StringResources_androidKt.c(composer2, R.string.store_mode_home_title), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48426f, composer2, 0, 0, 131070);
                    composer2.r();
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj).getClass();
                Composer composer3 = (Composer) obj3;
                int iIntValue3 = ((Integer) obj4).intValue();
                ComposableSingletons$FeedDiscoverLoadingScreenKt composableSingletons$FeedDiscoverLoadingScreenKt = ComposableSingletons$FeedDiscoverLoadingScreenKt.f57751a;
                ((String) obj2).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 129) != 128)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("lambda__333627258$lambda$0");
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer3, 0);
                    int iHashCode3 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer3, dTFunctionNameModifier2);
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
                    Updater.c(composer3, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC3, ComposeUiNode.Companion.d);
                    LVSkeletonKt.c(null, 0.6666667f, null, null, composer3, 48, 13);
                    LVSkeletonKt.a(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("lambda__333627258$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).d, LVAppDesignKitTheme.l(composer3).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), 1.0f), null, null, composer3, 0);
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                ((Integer) obj).getClass();
                Composer composer4 = (Composer) obj3;
                int iIntValue4 = ((Integer) obj4).intValue();
                ComposableSingletons$FeedForYouLoadingScreenKt composableSingletons$FeedForYouLoadingScreenKt = ComposableSingletons$FeedForYouLoadingScreenKt.f57762a;
                ((String) obj2).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 129) != 128)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("lambda__1224023040$lambda$0");
                    Arrangement$Top$1 arrangement$Top$3 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$3, Alignment.Companion.n, composer4, 0);
                    int iHashCode4 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer4.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer4, dTFunctionNameModifier3);
                    ComposeUiNode.b0.getClass();
                    Function0 function7 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function7);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer4, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer4, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer4, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer4, modifierC4, ComposeUiNode.Companion.d);
                    LVSkeletonKt.c(null, 0.6666667f, null, null, composer4, 48, 13);
                    LVSkeletonKt.a(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("lambda__1224023040$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).d, LVAppDesignKitTheme.l(composer4).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), 1.0f), null, null, composer4, 0);
                    composer4.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj).getClass();
                Composer composer5 = (Composer) obj3;
                int iIntValue5 = ((Integer) obj4).intValue();
                ComposableSingletons$FeedForYouLoadingScreenKt composableSingletons$FeedForYouLoadingScreenKt2 = ComposableSingletons$FeedForYouLoadingScreenKt.f57762a;
                ((String) obj2).getClass();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 129) != 128)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("lambda_1510457321$lambda$0");
                    Arrangement$Top$1 arrangement$Top$4 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$4, Alignment.Companion.n, composer5, 0);
                    int iHashCode5 = Long.hashCode(composer5.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer5.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer5, dTFunctionNameModifier4);
                    ComposeUiNode.b0.getClass();
                    Function0 function8 = ComposeUiNode.Companion.f9641b;
                    if (composer5.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer5.B();
                    if (composer5.getS()) {
                        composer5.C(function8);
                    } else {
                        composer5.o();
                    }
                    Updater.c(composer5, columnMeasurePolicyA4, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer5, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer5, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                    Updater.b(composer5, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer5, modifierC5, ComposeUiNode.Companion.d);
                    LVSkeletonKt.c(null, 1.0f, null, null, composer5, 48, 13);
                    DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("lambda_1510457321$lambda$0");
                    Dp.Companion companion = Dp.f11004c;
                    LVSkeletonKt.a(PaddingKt.m(SizeKt.s(dTFunctionNameModifier5, 83.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, composer5, 0);
                    LVSkeletonKt.a(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("lambda_1510457321$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f), null, null, composer5, 0);
                    composer5.r();
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer6 = (Composer) obj3;
                int iIntValue6 = ((Integer) obj4).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                ((TopBarActionScope) obj).getClass();
                ((LVColorScheme) obj2).getClass();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 129) != 128)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 6:
                TopBarActionScope topBarActionScope = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme = (LVColorScheme) obj2;
                Composer composer7 = (Composer) obj3;
                int iIntValue7 = ((Integer) obj4).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt2 = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                topBarActionScope.getClass();
                lVColorScheme.getClass();
                if ((iIntValue7 & 6) == 0) {
                    i2 = iIntValue7 | ((iIntValue7 & 8) == 0 ? composer7.K(topBarActionScope) : composer7.y(topBarActionScope) ? 4 : 2);
                } else {
                    i2 = iIntValue7;
                }
                if ((iIntValue7 & 48) == 0) {
                    i2 |= composer7.d(lVColorScheme.ordinal()) ? 32 : 16;
                }
                if (composer7.p(i2 & 1, (i2 & 147) != 146)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    int i12 = LVAppDesignKitTheme.g(composer7).f48400k;
                    Object objX = composer7.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new tn(15);
                        composer7.q(objX);
                    }
                    TopBarActionScope.ComposeDefaultImpls.a(null, i12, "", (Function0) objX, lVColorScheme, null, null, false, topBarActionScope, composer7, (57344 & (i2 << 9)) | 3456 | ((i2 << 24) & 234881024), 225);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 7:
                TopBarActionScope topBarActionScope2 = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme2 = (LVColorScheme) obj2;
                Composer composer8 = (Composer) obj3;
                int iIntValue8 = ((Integer) obj4).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt3 = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                topBarActionScope2.getClass();
                lVColorScheme2.getClass();
                if ((iIntValue8 & 6) == 0) {
                    i3 = iIntValue8 | ((iIntValue8 & 8) == 0 ? composer8.K(topBarActionScope2) : composer8.y(topBarActionScope2) ? 4 : 2);
                } else {
                    i3 = iIntValue8;
                }
                if ((iIntValue8 & 48) == 0) {
                    i3 |= composer8.d(lVColorScheme2.ordinal()) ? 32 : 16;
                }
                if (composer8.p(i3 & 1, (i3 & 147) != 146)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    int i13 = LVAppDesignKitTheme.g(composer8).f48400k;
                    Object objX2 = composer8.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new tn(i10);
                        composer8.q(objX2);
                    }
                    TopBarActionScope.ComposeDefaultImpls.a(null, i13, "", (Function0) objX2, lVColorScheme2, null, null, false, topBarActionScope2, composer8, (57344 & (i3 << 9)) | 3456 | ((i3 << 24) & 234881024), 225);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 8:
                TopBarActionScope topBarActionScope3 = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme3 = (LVColorScheme) obj2;
                Composer composer9 = (Composer) obj3;
                int iIntValue9 = ((Integer) obj4).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt4 = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                topBarActionScope3.getClass();
                lVColorScheme3.getClass();
                if ((iIntValue9 & 6) == 0) {
                    i4 = iIntValue9 | ((iIntValue9 & 8) == 0 ? composer9.K(topBarActionScope3) : composer9.y(topBarActionScope3) ? 4 : 2);
                } else {
                    i4 = iIntValue9;
                }
                if ((iIntValue9 & 48) == 0) {
                    i4 |= composer9.d(lVColorScheme3.ordinal()) ? 32 : 16;
                }
                if (composer9.p(i4 & 1, (i4 & 147) != 146)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    int i14 = LVAppDesignKitTheme.g(composer9).f48400k;
                    Object objX3 = composer9.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new tn(i11);
                        composer9.q(objX3);
                    }
                    TopBarActionScope.ComposeDefaultImpls.a(null, i14, "", (Function0) objX3, lVColorScheme3, null, null, false, topBarActionScope3, composer9, (57344 & (i4 << 9)) | 3456 | ((i4 << 24) & 234881024), 225);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 9:
                TopBarActionScope topBarActionScope4 = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme4 = (LVColorScheme) obj2;
                Composer composer10 = (Composer) obj3;
                int iIntValue10 = ((Integer) obj4).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt5 = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                topBarActionScope4.getClass();
                lVColorScheme4.getClass();
                if ((iIntValue10 & 6) == 0) {
                    i5 = iIntValue10 | ((iIntValue10 & 8) == 0 ? composer10.K(topBarActionScope4) : composer10.y(topBarActionScope4) ? 4 : 2);
                } else {
                    i5 = iIntValue10;
                }
                if ((iIntValue10 & 48) == 0) {
                    i5 |= composer10.d(lVColorScheme4.ordinal()) ? 32 : 16;
                }
                if (composer10.p(i5 & 1, (i5 & 147) != 146)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    int i15 = LVAppDesignKitTheme.g(composer10).f48400k;
                    Object objX4 = composer10.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new tn(17);
                        composer10.q(objX4);
                    }
                    TopBarActionScope.ComposeDefaultImpls.a(null, i15, "", (Function0) objX4, lVColorScheme4, null, null, false, topBarActionScope4, composer10, (57344 & (i5 << 9)) | 3456 | ((i5 << 24) & 234881024), 225);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 10:
                TopBarActionScope topBarActionScope5 = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme5 = (LVColorScheme) obj2;
                Composer composer11 = (Composer) obj3;
                int iIntValue11 = ((Integer) obj4).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt6 = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                topBarActionScope5.getClass();
                lVColorScheme5.getClass();
                if ((iIntValue11 & 6) == 0) {
                    i6 = iIntValue11 | ((iIntValue11 & 8) == 0 ? composer11.K(topBarActionScope5) : composer11.y(topBarActionScope5) ? 4 : 2);
                } else {
                    i6 = iIntValue11;
                }
                if ((iIntValue11 & 48) == 0) {
                    i6 |= composer11.d(lVColorScheme5.ordinal()) ? 32 : 16;
                }
                if (composer11.p(i6 & 1, (i6 & 147) != 146)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    int i16 = LVAppDesignKitTheme.g(composer11).f48400k;
                    Object objX5 = composer11.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new tn(12);
                        composer11.q(objX5);
                    }
                    TopBarActionScope.ComposeDefaultImpls.a(null, i16, "", (Function0) objX5, lVColorScheme5, null, null, false, topBarActionScope5, composer11, (57344 & (i6 << 9)) | 3456 | ((i6 << 24) & 234881024), 225);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 11:
                TopBarActionScope topBarActionScope6 = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme6 = (LVColorScheme) obj2;
                Composer composer12 = (Composer) obj3;
                int iIntValue12 = ((Integer) obj4).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt7 = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                topBarActionScope6.getClass();
                lVColorScheme6.getClass();
                if ((iIntValue12 & 6) == 0) {
                    i7 = iIntValue12 | ((iIntValue12 & 8) == 0 ? composer12.K(topBarActionScope6) : composer12.y(topBarActionScope6) ? 4 : 2);
                } else {
                    i7 = iIntValue12;
                }
                if ((iIntValue12 & 48) == 0) {
                    i7 |= composer12.d(lVColorScheme6.ordinal()) ? 32 : 16;
                }
                if (composer12.p(i7 & 1, (i7 & 147) != 146)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    int i17 = LVAppDesignKitTheme.g(composer12).f48400k;
                    Object objX6 = composer12.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new tn(13);
                        composer12.q(objX6);
                    }
                    TopBarActionScope.ComposeDefaultImpls.a(null, i17, "", (Function0) objX6, lVColorScheme6, null, null, false, topBarActionScope6, composer12, (57344 & (i7 << 9)) | 3456 | ((i7 << 24) & 234881024), 225);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer13 = (Composer) obj3;
                int iIntValue13 = ((Integer) obj4).intValue();
                ComposableSingletons$LVMediumTopBarKt composableSingletons$LVMediumTopBarKt = ComposableSingletons$LVMediumTopBarKt.f48737a;
                ((TopBarActionScope) obj).getClass();
                ((LVColorScheme) obj2).getClass();
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 129) != 128)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer14 = (Composer) obj3;
                int iIntValue14 = ((Integer) obj4).intValue();
                ComposableSingletons$LVStandardTopBarKt composableSingletons$LVStandardTopBarKt = ComposableSingletons$LVStandardTopBarKt.f48739a;
                ((TopBarActionScope) obj).getClass();
                ((LVColorScheme) obj2).getClass();
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 129) != 128)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 14:
                TopBarActionScope topBarActionScope7 = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme7 = (LVColorScheme) obj2;
                Composer composer15 = (Composer) obj3;
                int iIntValue15 = ((Integer) obj4).intValue();
                ComposableSingletons$LVStandardTopBarKt composableSingletons$LVStandardTopBarKt2 = ComposableSingletons$LVStandardTopBarKt.f48739a;
                topBarActionScope7.getClass();
                lVColorScheme7.getClass();
                if ((iIntValue15 & 6) == 0) {
                    i8 = iIntValue15 | ((iIntValue15 & 8) == 0 ? composer15.K(topBarActionScope7) : composer15.y(topBarActionScope7) ? 4 : 2);
                } else {
                    i8 = iIntValue15;
                }
                if ((iIntValue15 & 48) == 0) {
                    i8 |= composer15.d(lVColorScheme7.ordinal()) ? 32 : 16;
                }
                if (composer15.p(i8 & 1, (i8 & 147) != 146)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    int i18 = LVAppDesignKitTheme.g(composer15).u0;
                    Object objX7 = composer15.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new tn(21);
                        composer15.q(objX7);
                    }
                    int i19 = ((i8 << 9) & 57344) | 3456 | ((i8 << 24) & 234881024);
                    TopBarActionScope.ComposeDefaultImpls.a(null, i18, "Settings", (Function0) objX7, lVColorScheme7, null, null, false, topBarActionScope7, composer15, i19, 225);
                    int i20 = LVAppDesignKitTheme.g(composer15).x;
                    Object objX8 = composer15.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new tn(22);
                        composer15.q(objX8);
                    }
                    TopBarActionScope.ComposeDefaultImpls.a(null, i20, "Settings", (Function0) objX8, lVColorScheme7, null, null, false, topBarActionScope7, composer15, i19, 225);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).intValue();
                Composer composer16 = (Composer) obj3;
                int iIntValue16 = ((Integer) obj4).intValue();
                ComposableSingletons$LVTimelineKt composableSingletons$LVTimelineKt = ComposableSingletons$LVTimelineKt.f50952a;
                ((ColumnScope) obj).getClass();
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 129) != 128)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 16:
                BottomSheetIconScope bottomSheetIconScope = (BottomSheetIconScope) obj;
                Modifier modifierE = (Modifier) obj2;
                Composer composer17 = (Composer) obj3;
                int iIntValue17 = ((Integer) obj4).intValue();
                ComposableSingletons$NativeCartBottomSheetsKt composableSingletons$NativeCartBottomSheetsKt = ComposableSingletons$NativeCartBottomSheetsKt.f55056a;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "lambda__57749645$lambda$0");
                }
                bottomSheetIconScope.getClass();
                modifierE.getClass();
                OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                bottomSheetIconScope.a(modifierE, composer17, LVAppDesignKitTheme.g(composer17).O0, (14 & (iIntValue17 >> 3)) | KyberEngine.KyberPolyBytes | ((iIntValue17 << 9) & 7168));
                return Unit.f71739a;
            case 17:
                BottomSheetIconScope bottomSheetIconScope2 = (BottomSheetIconScope) obj;
                Modifier modifierE2 = (Modifier) obj2;
                Composer composer18 = (Composer) obj3;
                int iIntValue18 = ((Integer) obj4).intValue();
                ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                if (modifierE2 != null) {
                    modifierE2 = a.e(modifierE2, "lambda_1284638133$lambda$0");
                }
                bottomSheetIconScope2.getClass();
                modifierE2.getClass();
                OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.Asset("success_checkmark.json"), composer18, 6);
                LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplC.getF10755b(), false, null, 1, composer18, 958);
                Modifier modifierE3 = ModifierExtKt.e(modifierE2, "osa_appointmentConfirmedLogo_image");
                LottieComposition lottieCompositionH = lottieCompositionResultImplC.getF10755b();
                ContentScale.f9447a.getClass();
                ContentScale.Companion companion2 = ContentScale.Companion.f9448a;
                bottomSheetIconScope2.b(modifierE3, lottieCompositionH, lottieAnimatableA, composer18, ((iIntValue18 << 12) & 57344) | 3072);
                return Unit.f71739a;
            case 18:
                BottomSheetIconScope bottomSheetIconScope3 = (BottomSheetIconScope) obj;
                Modifier modifierE4 = (Modifier) obj2;
                Composer composer19 = (Composer) obj3;
                int iIntValue19 = ((Integer) obj4).intValue();
                ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                if (modifierE4 != null) {
                    modifierE4 = a.e(modifierE4, "lambda__745980953$lambda$0");
                }
                bottomSheetIconScope3.getClass();
                modifierE4.getClass();
                OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                bottomSheetIconScope3.a(modifierE4, composer19, LVAppDesignKitTheme.g(composer19).I0, (14 & (iIntValue19 >> 3)) | KyberEngine.KyberPolyBytes | ((iIntValue19 << 9) & 7168));
                return Unit.f71739a;
            case 19:
                ((Integer) obj).intValue();
                Composer composer20 = (Composer) obj3;
                int iIntValue20 = ((Integer) obj4).intValue();
                ComposableSingletons$ProductCarouselKt composableSingletons$ProductCarouselKt = ComposableSingletons$ProductCarouselKt.f50765a;
                ((Unit) obj2).getClass();
                if (composer20.p(iIntValue20 & 1, (iIntValue20 & 129) != 128)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    ProductCarouselItemKt.b(composer20, 0);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 20:
                String str = (String) obj2;
                Composer composer21 = (Composer) obj3;
                int iIntValue21 = ((Integer) obj4).intValue();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                ((AnimatedContentScope) obj).getClass();
                str.getClass();
                OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                TextKt.c(str, null, LVAppDesignKitTheme.c(composer21).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 1, 0, null, LVAppDesignKitTheme.n(composer21).f48429j, composer21, (iIntValue21 >> 3) & 14, 24576, 114682);
                return Unit.f71739a;
            case 21:
                ((Integer) obj).intValue();
                ((Integer) obj4).intValue();
                ComposableSingletons$SuggestionCarouselComposableKt composableSingletons$SuggestionCarouselComposableKt = ComposableSingletons$SuggestionCarouselComposableKt.f64164a;
                OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                SuggestionCarouselComposableKt.e((Composer) obj3, 0);
                return Unit.f71739a;
            case 22:
                String str2 = (String) obj2;
                Composer composer22 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt = ComposableSingletons$ThankYouScreenKt.f65236a;
                ((AnimatedContentScope) obj).getClass();
                str2.getClass();
                OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                if (str2.length() == 0) {
                    composer22.L(1213853346);
                    ThankYouViewState.Success success = ThankYouScreenKt.f65244b;
                    Object objX9 = composer22.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new SnackbarHostState();
                        composer22.q(objX9);
                    }
                    SnackbarHostState snackbarHostState = (SnackbarHostState) objX9;
                    Object objX10 = composer22.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new no(28);
                        composer22.q(objX10);
                    }
                    ThankYouScreenKt.m(null, snackbarHostState, success, (Function1) objX10, null, composer22, 3504, 17);
                    composer22.F();
                } else {
                    composer22.L(1214084544);
                    composer22.F();
                }
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).intValue();
                Composer composer23 = (Composer) obj3;
                int iIntValue22 = ((Integer) obj4).intValue();
                ComposableSingletons$TrendingComposableKt composableSingletons$TrendingComposableKt = ComposableSingletons$TrendingComposableKt.f64166a;
                ((LazyItemScope) obj).getClass();
                if (composer23.p(iIntValue22 & 1, (iIntValue22 & 129) != 128)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    TrendingComposableKt.d(composer23, 0);
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 24:
                ((Integer) obj).intValue();
                Composer composer24 = (Composer) obj3;
                int iIntValue23 = ((Integer) obj4).intValue();
                ComposableSingletons$TutorialRecommendedKt composableSingletons$TutorialRecommendedKt = ComposableSingletons$TutorialRecommendedKt.f62116a;
                ((Unit) obj2).getClass();
                if (composer24.p(iIntValue23 & 1, (iIntValue23 & 129) != 128)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    CarouselSItemKt.b(composer24, 0);
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 25:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = PlatformSelectionBehaviors_androidKt.f6384a;
                return new PlatformSelectionBehaviorsImpl((CoroutineContext) obj, (Context) obj2, (SelectedTextType) obj3, (LocaleList) obj4);
            case 26:
                ((WebView) obj).getClass();
                ((HttpAuthHandler) obj2).getClass();
                ((String) obj3).getClass();
                ((String) obj4).getClass();
                return Unit.f71739a;
            default:
                ((WebView) obj).getClass();
                ((HttpAuthHandler) obj2).getClass();
                ((String) obj3).getClass();
                ((String) obj4).getClass();
                return Unit.f71739a;
        }
    }
}

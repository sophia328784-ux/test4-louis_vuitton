package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.navigation3.runtime.NavBackStack;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.ZoomableContentScope;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVBottomRoundOverlayKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.compose.components.LVPagerLineIndicatorKt;
import com.vuitton.android.presentation.compose.components.LVTopShadowKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.PodcastComposableKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpReferencesRowKt;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.components.SearchRoutes;
import com.vuitton.android.presentation.screen.search.components.SearchScreenComposableKt;
import com.vuitton.android.presentation.utils.ProductUtils;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c4 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21050b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f21051c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f21052e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f21053f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f21054h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f21055i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f21056j;

    public /* synthetic */ c4(AudioPlayerControllerUiState audioPlayerControllerUiState, boolean z, String str, ImmersiveArticleType immersiveArticleType, Function1 function1, Function0 function0, Function0 function2, Function1 function3) {
        this.f21053f = audioPlayerControllerUiState;
        this.f21052e = z;
        this.d = str;
        this.g = immersiveArticleType;
        this.f21054h = function1;
        this.f21051c = function0;
        this.f21055i = function2;
        this.f21056j = function3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        Composer composer2;
        int i2 = this.f21050b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function0 function0 = this.f21051c;
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
        boolean z = this.f21052e;
        Object obj4 = this.f21056j;
        Object obj5 = this.f21055i;
        Object obj6 = this.f21054h;
        Object obj7 = this.g;
        Object obj8 = this.f21053f;
        Object obj9 = this.d;
        switch (i2) {
            case 0:
                String str = (String) obj9;
                ProductBackground productBackground = (ProductBackground) obj5;
                String str2 = (String) obj8;
                ArrayList arrayList = (ArrayList) obj4;
                String str3 = (String) obj7;
                String str4 = (String) obj6;
                Composer composer3 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    PdpReferencesRowKt.a(null, str, productBackground, null, str2, arrayList, str3, composer3, 0, 9);
                    DividerKt.a(PaddingKt.m(new DTFunctionNameModifier("AddToCartContentBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(composer3).f48361b.q, composer3, 0, 2);
                    Modifier modifierM = PaddingKt.m(tr.d("AddToCartContentBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, composer3, 6);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierM);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function1);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                    Modifier modifierM2 = PaddingKt.m(ModifierExtKt.e(new DTFunctionNameModifier("AddToCartContentBottomSheet$lambda$0"), "addToCartReport_priceTitle_text"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    String strC = StringResources_androidKt.c(composer3, R.string.global_total);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer3).l;
                    long j2 = LVAppDesignKitTheme.c(composer3).f48361b.l;
                    TextOverflow.f10989a.getClass();
                    TextKt.c(strC, modifierM2, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 0, 0, null, textStyle, composer3, 0, KyberEngine.KyberPolyBytes, 126968);
                    Modifier modifierG = n00.g("AddToCartContentBottomSheet$lambda$0", "addToCartReport_priceValue_text");
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(composer3).l;
                    long j3 = LVAppDesignKitTheme.c(composer3).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    TextKt.c(str4, modifierG, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle2, composer3, 0, 0, 130040);
                    composer3.r();
                    if (z) {
                        TextKt.c(StringResources_androidKt.c(composer3, R.string.global_vat_included), PaddingKt.m(pq0.h(1.0f, 1612980084, composer3, "AddToCartContentBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).m, composer3, 0, 0, 131064);
                        composer3.F();
                    } else {
                        composer3.L(1613359989);
                        composer3.F();
                    }
                    LVButtonKt.b(0, 504, composer3, ModifierExtKt.e(PaddingKt.m(tr.d("AddToCartContentBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, 5), "bottomSheet_mainAction_button"), LVAppDesignKitTheme.b(composer3).f48446a, null, null, StringResources_androidKt.c(composer3, R.string.see_cart), this.f21051c, false, false, false);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 1:
                PreBookViewState preBookViewState = (PreBookViewState) obj8;
                String str5 = (String) obj9;
                Function2 function2 = (Function2) obj7;
                Function1 function3 = (Function1) obj6;
                Function2 function4 = (Function2) obj5;
                Function1 function5 = (Function1) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer4.K(paddingValues) ? 4 : 2;
                }
                if (composer4.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingSummaryScreen$lambda$5");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierH = PaddingKt.h(dTFunctionNameModifier.o(fillElement), paddingValues);
                    Alignment.f8582a.getClass();
                    BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                    MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                    int iHashCode2 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer4.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer4, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function6 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function6);
                    } else {
                        composer4.o();
                    }
                    Function2 function7 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer4, measurePolicyD, function7);
                    Function2 function8 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer4, persistentCompositionLocalMapN2, function8);
                    Integer numValueOf = Integer.valueOf(iHashCode2);
                    Function2 function9 = ComposeUiNode.Companion.g;
                    Updater.c(composer4, numValueOf, function9);
                    Function1 function10 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer4, function10);
                    Function2 function11 = ComposeUiNode.Companion.d;
                    Updater.c(composer4, modifierC2, function11);
                    if (preBookViewState instanceof PreBookViewState.Error) {
                        composer4.L(-701208615);
                        LVEmptyViewKt.e(new DTFunctionNameModifier("BookingSummaryScreen$lambda$5").o(fillElement), null, StringResources_androidKt.c(composer4, R.string.error_generic), null, null, StringResources_androidKt.c(composer4, R.string.button_try_again), this.f21051c, composer4, 6, 122);
                        composer = composer4;
                        composer.F();
                    } else {
                        composer = composer4;
                        if (Intrinsics.c(preBookViewState, PreBookViewState.Loading.f54828a)) {
                            Modifier modifierG2 = boxScopeInstance.g(pq0.j(-700815225, composer, "BookingSummaryScreen$lambda$5"), Alignment.Companion.f8587f);
                            boolean zK = composer.K(str5);
                            Object objX = composer.x();
                            if (zK || objX == composer$Companion$Empty$1) {
                                objX = new a4(str5, 18);
                                composer.q(objX);
                            }
                            LVFlowerLoaderKt.a(SemanticsModifierKt.b(modifierG2, false, (Function1) objX), null, false, composer, 0, 6);
                            composer.F();
                        } else {
                            if (!(preBookViewState instanceof PreBookViewState.Success)) {
                                throw o60.v(composer, 1917047395);
                            }
                            composer.L(-700230534);
                            Object objX2 = composer.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = SnapshotStateKt.g(null);
                                composer.q(objX2);
                            }
                            MutableState mutableState = (MutableState) objX2;
                            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BookingSummaryScreen$lambda$5");
                            boolean zY = composer.y(preBookViewState);
                            Object objX3 = composer.x();
                            if (zY || objX3 == composer$Companion$Empty$1) {
                                objX3 = new c1(preBookViewState, 25);
                                composer.q(objX3);
                            }
                            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX3);
                            boolean zY2 = composer.y(preBookViewState) | composer.K(function2) | composer.K(function3) | composer.K(function4) | composer.K(function5);
                            Object objX4 = composer.x();
                            if (zY2 || objX4 == composer$Companion$Empty$1) {
                                objX4 = new g4(preBookViewState, function2, function3, function4, mutableState, function5);
                                composer.q(objX4);
                            }
                            LazyDslKt.a(modifierB, null, null, null, null, null, false, null, (Function1) objX4, composer, 0, 510);
                            PreBookViewState.Success success = (PreBookViewState.Success) preBookViewState;
                            if (success.f54831c) {
                                composer.L(-696206300);
                                Modifier modifierO = new DTFunctionNameModifier("BookingSummaryScreen$lambda$5").o(fillElement);
                                boolean zK2 = composer.K(str5);
                                Object objX5 = composer.x();
                                if (zK2 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new a4(str5, 16);
                                    composer.q(objX5);
                                }
                                ProgressViewKt.a(SemanticsModifierKt.b(modifierO, false, (Function1) objX5), 0L, false, composer, 0, 6);
                                composer.F();
                            } else {
                                composer.L(-695819017);
                                composer.F();
                            }
                            if (z) {
                                DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-695742075, composer, "BookingSummaryScreen$lambda$5");
                                BiasAlignment biasAlignment2 = Alignment.Companion.f8589i;
                                BoxKt.a(com.vuitton.android.designkit.components.ModifierExtKt.e(LVAppDesignKitTheme.d(composer).m, LVAppDesignKitTheme.d(composer).m, LVAppDesignKitTheme.d(composer).m, 2, Color.b(0.06f, LVAppDesignKitTheme.c(composer).f48361b.u), SizeKt.f(SizeKt.d(boxScopeInstance.g(dTFunctionNameModifierJ, biasAlignment2), 1.0f), LVAppDesignKitTheme.d(composer).m)), composer, 0);
                                Modifier modifierG3 = boxScopeInstance.g(new DTFunctionNameModifier("BookingSummaryScreen$lambda$5"), biasAlignment2);
                                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                                int iHashCode3 = Long.hashCode(composer.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
                                Modifier modifierC3 = ComposedModifierKt.c(composer, modifierG3);
                                if (composer.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer.B();
                                if (composer.getS()) {
                                    composer.C(function6);
                                } else {
                                    composer.o();
                                }
                                Updater.c(composer, measurePolicyD2, function7);
                                Updater.c(composer, persistentCompositionLocalMapN3, function8);
                                cj.s(iHashCode3, composer, function9, composer, function10);
                                Updater.c(composer, modifierC3, function11);
                                LVBottomRoundOverlayKt.a(0, 1, LVAppDesignKitTheme.c(composer).f48361b.f48374a, composer, null);
                                composer.r();
                                composer.F();
                            } else {
                                composer.L(-694740713);
                                composer.F();
                            }
                            if (success.f54830b) {
                                LVFlowerLoaderKt.a(boxScopeInstance.g(pq0.j(-694685161, composer, "BookingSummaryScreen$lambda$5"), Alignment.Companion.f8587f), null, false, composer, 0, 6);
                                composer.F();
                            } else {
                                composer.L(-694592905);
                                composer.F();
                            }
                            composer.F();
                        }
                    }
                    composer.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 2:
                AudioPlayerControllerUiState audioPlayerControllerUiState = (AudioPlayerControllerUiState) obj8;
                String str6 = (String) obj9;
                ImmersiveArticleType immersiveArticleType = (ImmersiveArticleType) obj7;
                Function1 function12 = (Function1) obj6;
                Function0 function13 = (Function0) obj5;
                Function1 function14 = (Function1) obj4;
                Composer composer5 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                AudioPlayerItemUiModel audioPlayerItemUiModel = audioPlayerControllerUiState.f53246c;
                if (audioPlayerItemUiModel == null) {
                    composer5.L(413934458);
                    composer5.F();
                } else {
                    composer5.L(413934459);
                    PodcastComposableKt.a(null, this.f21052e, str6, immersiveArticleType, audioPlayerControllerUiState, audioPlayerItemUiModel, function12, this.f21051c, function13, function14, composer5, 0);
                    composer5.F();
                }
                return Unit.f71739a;
            case 3:
                InAppDispatch inAppDispatch = (InAppDispatch) obj9;
                List list = (List) obj8;
                LocalDate localDate = (LocalDate) obj7;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj6;
                Function1 function15 = (Function1) obj5;
                Function0 function16 = (Function0) obj4;
                Composer composer6 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer6.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("OsaFormCalendarBottomSheet$lambda$1");
                    Dp.Companion companion = Dp.f11004c;
                    Modifier modifierG4 = SizeKt.g(dTFunctionNameModifier3, 480.0f, 550.0f);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer6, 0);
                    int iHashCode4 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer6.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer6, modifierG4);
                    ComposeUiNode.b0.getClass();
                    Function0 function17 = ComposeUiNode.Companion.f9641b;
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function17);
                    } else {
                        composer6.o();
                    }
                    Function2 function18 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer6, columnMeasurePolicyA, function18);
                    Function2 function19 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer6, persistentCompositionLocalMapN4, function19);
                    Integer numValueOf2 = Integer.valueOf(iHashCode4);
                    Function2 function20 = ComposeUiNode.Companion.g;
                    Updater.c(composer6, numValueOf2, function20);
                    Function1 function21 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer6, function21);
                    Function2 function22 = ComposeUiNode.Companion.d;
                    Updater.c(composer6, modifierC4, function22);
                    if (z) {
                        ProgressViewKt.a(pq0.j(1350755396, composer6, "OsaFormCalendarBottomSheet$lambda$1").o(SizeKt.f5052c), 0L, false, composer6, 6, 6);
                        composer2 = composer6;
                        composer2.F();
                    } else {
                        composer2 = composer6;
                        Modifier modifierA = ColumnScopeInstance.f4944a.a(pq0.j(1350935816, composer2, "OsaFormCalendarBottomSheet$lambda$1").o(SizeKt.f5052c), 1.0f, true);
                        MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode5 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer2.n();
                        Modifier modifierC5 = ComposedModifierKt.c(composer2, modifierA);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function17);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD3, function18);
                        Updater.c(composer2, persistentCompositionLocalMapN5, function19);
                        cj.s(iHashCode5, composer2, function20, composer2, function21);
                        Updater.c(composer2, modifierC5, function22);
                        Locale locale = ((Boolean) composer2.k(InspectionModeKt.f10102a)).booleanValue() ? Locale.getDefault() : inAppDispatch.m;
                        Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("OsaFormCalendarBottomSheet$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        locale.getClass();
                        LVCalendarKt.d(modifierM3, list, localDate, locale, false, false, new nz(4, ref$ObjectRef), composer2, 0, 48);
                        LVTopShadowKt.a(boxScopeInstance.g(new DTFunctionNameModifier("OsaFormCalendarBottomSheet$lambda$1"), Alignment.Companion.f8589i), composer2, 0);
                        composer2.r();
                        Modifier modifierB2 = WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("OsaFormCalendarBottomSheet$lambda$1"), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a));
                        ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer2, 0);
                        int iHashCode6 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer2.n();
                        Modifier modifierC6 = ComposedModifierKt.c(composer2, modifierB2);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function17);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA2, function18);
                        Updater.c(composer2, persistentCompositionLocalMapN6, function19);
                        cj.s(iHashCode6, composer2, function20, composer2, function21);
                        Updater.c(composer2, modifierC6, function22);
                        if (list == null || !list.isEmpty()) {
                            composer2.L(-1255349191);
                            composer2.F();
                        } else {
                            composer2.L(-1256034384);
                            function0.mo47invoke();
                            TextKt.c(StringResources_androidKt.c(composer2, R.string.osa_error_no_date_available), PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48415c), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131068);
                            composer2.F();
                        }
                        LVButtonKt.b(0, 376, composer2, ModifierExtKt.e(PaddingKt.l(tr.d("OsaFormCalendarBottomSheet$lambda$1", 1.0f), LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48415c, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48416e), "osa_appointmentDateSelect_button"), LVAppDesignKitTheme.b(composer2).f48446a, null, null, StringResources_androidKt.c(composer2, R.string.osa_cta_calendar_select), new of0(ref$ObjectRef, function15, function16, 13), false, (ref$ObjectRef.f71921b == null || list == null || !(list.isEmpty() ^ true)) ? false : true, false);
                        composer2.r();
                        composer2.F();
                    }
                    composer2.r();
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 4:
                final ArrayList arrayList2 = (ArrayList) obj4;
                PagerState pagerState = (PagerState) obj9;
                MutableState mutableState2 = (MutableState) obj8;
                final Function0 function23 = (Function0) obj7;
                final ProductBackground productBackground2 = (ProductBackground) obj5;
                final MutableIntState mutableIntState = (MutableIntState) obj6;
                ZoomableContentScope zoomableContentScope = (ZoomableContentScope) obj;
                Composer composer7 = (Composer) obj2;
                ((Integer) obj3).getClass();
                zoomableContentScope.getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierC7 = GraphicsLayerModifierKt.c(new DTFunctionNameModifier("PagerImageViewer$lambda$8").o(SizeKt.f5052c), zoomableContentScope.getF48292a(), zoomableContentScope.getF48292a(), Call.Parameters.DEFAULT_CAMERA_ZOOM, zoomableContentScope.getF48293b(), zoomableContentScope.getF48294c(), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 0, 524260);
                Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Center$1, Alignment.Companion.n, composer7, 6);
                int iHashCode7 = Long.hashCode(composer7.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN7 = composer7.n();
                Modifier modifierC8 = ComposedModifierKt.c(composer7, modifierC7);
                ComposeUiNode.b0.getClass();
                Function0 function24 = ComposeUiNode.Companion.f9641b;
                if (composer7.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer7.B();
                if (composer7.getS()) {
                    composer7.C(function24);
                } else {
                    composer7.o();
                }
                Function2 function25 = ComposeUiNode.Companion.f9644f;
                Updater.c(composer7, columnMeasurePolicyA3, function25);
                Function2 function26 = ComposeUiNode.Companion.f9643e;
                Updater.c(composer7, persistentCompositionLocalMapN7, function26);
                Integer numValueOf3 = Integer.valueOf(iHashCode7);
                Function2 function27 = ComposeUiNode.Companion.g;
                Updater.c(composer7, numValueOf3, function27);
                Function1 function28 = ComposeUiNode.Companion.f9645h;
                Updater.b(composer7, function28);
                Function2 function29 = ComposeUiNode.Companion.d;
                DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer7, modifierC8, function29, "PagerImageViewer$lambda$8");
                MeasurePolicy measurePolicyD4 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode8 = Long.hashCode(composer7.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN8 = composer7.n();
                Modifier modifierC9 = ComposedModifierKt.c(composer7, dTFunctionNameModifierF);
                if (composer7.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer7.B();
                if (composer7.getS()) {
                    composer7.C(function24);
                } else {
                    composer7.o();
                }
                Updater.c(composer7, measurePolicyD4, function25);
                Updater.c(composer7, persistentCompositionLocalMapN8, function26);
                cj.s(iHashCode8, composer7, function27, composer7, function28);
                Updater.c(composer7, modifierC9, function29);
                Modifier modifierA2 = AspectRatioKt.a(new DTFunctionNameModifier("PagerImageViewer$lambda$8"), 1.0f, false);
                boolean zBooleanValue = ((Boolean) mutableState2.getF10755b()).booleanValue();
                final Function0 function30 = this.f21051c;
                PagerKt.a(pagerState, modifierA2, null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, zBooleanValue, false, null, null, null, ComposableLambdaKt.b(1034800297, new Function4() { // from class: com.vuitton.android.presentation.screen.imageviewer.components.a
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        String str7;
                        Integer num = (Integer) obj11;
                        int iIntValue4 = num.intValue();
                        Composer composer8 = (Composer) obj12;
                        int iIntValue5 = ((Integer) obj13).intValue();
                        ((PagerScope) obj10).getClass();
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                        boolean z2 = (((iIntValue5 & 112) ^ 48) > 32 && composer8.d(iIntValue4)) || (iIntValue5 & 48) == 32;
                        Function0 function31 = function30;
                        boolean zK3 = z2 | composer8.K(function31);
                        Function0 function32 = function23;
                        boolean zK4 = zK3 | composer8.K(function32);
                        Object objX6 = composer8.x();
                        if (zK4 || objX6 == Composer.Companion.f7939a) {
                            objX6 = new PagerImageViewerKt$PagerImageViewer$2$1$1$1$1$1(iIntValue4, function31, function32, mutableIntState, null);
                            composer8.q(objX6);
                        }
                        EffectsKt.e(composer8, num, (Function2) objX6);
                        ProductBackground productBackground3 = productBackground2;
                        ArrayList arrayList3 = arrayList2;
                        Integer numValueOf4 = (productBackground3 == null || (str7 = (String) arrayList3.get(iIntValue4)) == null) ? null : Integer.valueOf(ProductUtils.b(str7, productBackground3, ProductUtils.ProductImageRatio.R1_1));
                        DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("PagerImageViewer$lambda$8$0$0$0");
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD5 = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode9 = Long.hashCode(composer8.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN9 = composer8.n();
                        Modifier modifierC10 = ComposedModifierKt.c(composer8, dTFunctionNameModifier4);
                        ComposeUiNode.b0.getClass();
                        Function0 function33 = ComposeUiNode.Companion.f9641b;
                        if (composer8.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer8.B();
                        if (composer8.getS()) {
                            composer8.C(function33);
                        } else {
                            composer8.o();
                        }
                        Updater.c(composer8, measurePolicyD5, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer8, persistentCompositionLocalMapN9, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer8, Integer.valueOf(iHashCode9), ComposeUiNode.Companion.g);
                        Updater.b(composer8, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer8, modifierC10, ComposeUiNode.Companion.d);
                        if (numValueOf4 == null) {
                            composer8.L(674015434);
                            composer8.F();
                        } else {
                            composer8.L(674015435);
                            ImageKt.a(PainterResources_androidKt.a(numValueOf4.intValue(), composer8, 0), null, new DTFunctionNameModifier("PagerImageViewer$lambda$8$0$0$0").o(SizeKt.f5052c), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer8, 440, 120);
                            composer8.F();
                        }
                        Modifier modifierG5 = BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("PagerImageViewer$lambda$8$0$0$0"), Alignment.Companion.f8587f);
                        String str8 = (String) arrayList3.get(iIntValue4);
                        ImageLoaderKt.b(modifierG5, str8 != null ? str8 : null, null, null, null, 0, false, null, null, null, composer8, 3072, 2036);
                        composer8.r();
                        return Unit.f71739a;
                    }
                }, composer7), composer7, 48, 24576, 16124);
                if (pagerState.o() <= 1 || !z) {
                    composer7.L(-1549914664);
                    composer7.F();
                } else {
                    AccessibilityPagerButtonsKt.b(PaddingKt.i(boxScopeInstance.g(pq0.h(1.0f, -1550397086, composer7, "PagerImageViewer$lambda$8"), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(composer7).f48416e), pagerState, null, Arrangement.g, Alignment.Companion.l, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer7, 27648, 36);
                    pagerState = pagerState;
                    composer7.F();
                }
                composer7.r();
                if (arrayList2.size() <= 1 || !((Boolean) mutableState2.getF10755b()).booleanValue()) {
                    composer7.L(-1603614638);
                    composer7.F();
                } else {
                    composer7.L(-1603775125);
                    LVPagerLineIndicatorKt.a(pagerState, arrayList2.size(), null, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer7, 0, 60);
                    composer7.F();
                }
                composer7.r();
                return Unit.f71739a;
            default:
                SearchViewModel searchViewModel = (SearchViewModel) obj9;
                ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj8;
                Function0 function31 = (Function0) obj7;
                PSPViewModel pSPViewModel = (PSPViewModel) obj6;
                NavBackStack navBackStack = (NavBackStack) obj5;
                Function1 function32 = (Function1) obj4;
                Composer composer8 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((SearchRoutes.Search) obj).getClass();
                if (composer8.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    Modifier modifierO2 = new DTFunctionNameModifier("SearchNavDisplay$lambda$1$0").o(SizeKt.f5052c);
                    boolean zY3 = composer8.y(searchViewModel) | composer8.K(function0);
                    Object objX6 = composer8.x();
                    if (zY3 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new jm0(searchViewModel, function0, 18);
                        composer8.q(objX6);
                    }
                    Function0 function33 = (Function0) objX6;
                    boolean zY4 = composer8.y(pSPViewModel) | composer8.y(searchViewModel) | composer8.y(navBackStack);
                    Object objX7 = composer8.x();
                    if (zY4 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new cl0(pSPViewModel, searchViewModel, navBackStack, 9);
                        composer8.q(objX7);
                    }
                    Function1 function34 = (Function1) objX7;
                    boolean zY5 = composer8.y(searchViewModel) | composer8.K(function32);
                    Object objX8 = composer8.x();
                    if (zY5 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new pu0(searchViewModel, function32);
                        composer8.q(objX8);
                    }
                    SearchScreenComposableKt.a(modifierO2, searchViewModel, contributionLinkNavigator, this.f21052e, function33, function31, function34, (Function1) objX8, composer8, 6);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ c4(PreBookViewState preBookViewState, Function0 function0, String str, Function2 function2, Function1 function1, Function2 function3, Function1 function4, boolean z) {
        this.f21053f = preBookViewState;
        this.f21051c = function0;
        this.d = str;
        this.g = function2;
        this.f21054h = function1;
        this.f21055i = function3;
        this.f21056j = function4;
        this.f21052e = z;
    }

    public /* synthetic */ c4(SearchViewModel searchViewModel, ContributionLinkNavigator contributionLinkNavigator, boolean z, Function0 function0, Function0 function1, PSPViewModel pSPViewModel, NavBackStack navBackStack, Function1 function2) {
        this.d = searchViewModel;
        this.f21053f = contributionLinkNavigator;
        this.f21052e = z;
        this.f21051c = function0;
        this.g = function1;
        this.f21054h = pSPViewModel;
        this.f21055i = navBackStack;
        this.f21056j = function2;
    }

    public /* synthetic */ c4(String str, ProductBackground productBackground, String str2, ArrayList arrayList, String str3, boolean z, Function0 function0, String str4) {
        this.d = str;
        this.f21055i = productBackground;
        this.f21053f = str2;
        this.f21056j = arrayList;
        this.g = str3;
        this.f21052e = z;
        this.f21051c = function0;
        this.f21054h = str4;
    }

    public /* synthetic */ c4(ArrayList arrayList, PagerState pagerState, boolean z, MutableState mutableState, Function0 function0, Function0 function1, ProductBackground productBackground, MutableIntState mutableIntState) {
        this.f21056j = arrayList;
        this.d = pagerState;
        this.f21052e = z;
        this.f21053f = mutableState;
        this.f21051c = function0;
        this.g = function1;
        this.f21055i = productBackground;
        this.f21054h = mutableIntState;
    }

    public /* synthetic */ c4(boolean z, InAppDispatch inAppDispatch, List list, LocalDate localDate, Ref$ObjectRef ref$ObjectRef, Function0 function0, Function1 function1, Function0 function2) {
        this.f21052e = z;
        this.d = inAppDispatch;
        this.f21053f = list;
        this.g = localDate;
        this.f21054h = ref$ObjectRef;
        this.f21051c = function0;
        this.f21055i = function1;
        this.f21056j = function2;
    }
}

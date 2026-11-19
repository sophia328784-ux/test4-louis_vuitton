package com.vuitton.android.presentation.screen.search.components;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.RippleConfiguration;
import androidx.compose.material3.RippleDefaults;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.compose.LifecycleEffectKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardKt;
import com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVSearchCompositionLocalProviderKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.common.IconUiModel;
import com.vuitton.android.presentation.model.common.IconUiModelKt;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.components.SearchScreenComposableKt;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.SearchScreenViewState;
import com.vuitton.android.presentation.screen.search.models.SearchState;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import defpackage.cj;
import defpackage.dm;
import defpackage.es0;
import defpackage.eu;
import defpackage.j;
import defpackage.pu0;
import defpackage.qu0;
import defpackage.rp0;
import defpackage.sm0;
import defpackage.sq0;
import defpackage.xo0;
import defpackage.ys0;
import defpackage.yt0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;", "viewState", "Lcom/vuitton/android/presentation/compose/NestedScroll;", "nestedScroll", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SearchScreenComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64198a;

        static {
            int[] iArr = new int[SearchState.values().length];
            try {
                iArr[SearchState.HISTORY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SearchState.TRENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SearchState.SUCCESS_SEARCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SearchState.NO_RESULT_SEARCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f64198a = iArr;
        }
    }

    public static final void a(Modifier modifier, final SearchViewModel searchViewModel, final ContributionLinkNavigator contributionLinkNavigator, final boolean z, final Function0 function0, final Function0 function1, final Function1 function2, final Function1 function3, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "SearchScreenComposable");
        }
        final Modifier modifier2 = modifier;
        searchViewModel.getClass();
        contributionLinkNavigator.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1999483081);
        int i3 = i2 | (gapComposerH.K(searchViewModel) ? 32 : 16) | (gapComposerH.y(contributionLinkNavigator) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Function2 function4 = new Function2() { // from class: com.vuitton.android.presentation.screen.search.components.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Modifier modifierE = modifier2;
                    if (modifierE != null) {
                        modifierE = defpackage.a.e(modifierE, "SearchScreenComposable$lambda$0");
                    }
                    final Modifier modifier3 = modifierE;
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final SearchViewModel searchViewModel2 = searchViewModel;
                        final MutableState mutableStateB = SnapshotStateKt.b(searchViewModel2.getZ(), composer2);
                        final AICompanionTracker aICompanionTracker = (AICompanionTracker) composer2.k(AICompanionTrackerEntryPointKt.f52911a);
                        final FocusManager focusManager = (FocusManager) composer2.k(CompositionLocalsKt.f10032i);
                        SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) composer2.k(CompositionLocalsKt.r);
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = EffectsKt.j(EmptyCoroutineContext.f71840b, composer2);
                            composer2.q(objX);
                        }
                        final CoroutineScope coroutineScope = (CoroutineScope) objX;
                        final Context context = (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b);
                        Object objX2 = composer2.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new FocusRequester();
                            composer2.q(objX2);
                        }
                        final FocusRequester focusRequester = (FocusRequester) objX2;
                        Unit unit = Unit.f71739a;
                        boolean zY = composer2.y(searchViewModel2);
                        Object objX3 = composer2.x();
                        if (zY || objX3 == composer$Companion$Empty$1) {
                            objX3 = new SearchScreenComposableKt$SearchScreenComposable$1$1$1(searchViewModel2, focusRequester, null);
                            composer2.q(objX3);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX3);
                        Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
                        boolean zY2 = composer2.y(searchViewModel2);
                        Object objX4 = composer2.x();
                        if (zY2 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new qu0(searchViewModel2, 2);
                            composer2.q(objX4);
                        }
                        LifecycleEffectKt.a(event, null, (Function0) objX4, composer2, 6);
                        final Function0 function5 = function0;
                        boolean zK = composer2.K(function5);
                        Object objX5 = composer2.x();
                        if (zK || objX5 == composer$Companion$Empty$1) {
                            objX5 = new sq0(function5, 12);
                            composer2.q(objX5);
                        }
                        BackHandlerKt.a(false, (Function0) objX5, composer2, 0, 1);
                        Object objX6 = composer2.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = SnapshotStateKt.g(new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, new eu(softwareKeyboardController, 3), null, 5, null));
                            composer2.q(objX6);
                        }
                        final MutableState mutableState = (MutableState) objX6;
                        Color.f8866b.getClass();
                        long j2 = Color.f8870h;
                        WindowInsets windowInsetsA = WindowInsetsExtKt.a();
                        final boolean z2 = z;
                        final Function1 function6 = function2;
                        final Function0 function7 = function1;
                        final Function1 function8 = function3;
                        final ContributionLinkNavigator contributionLinkNavigator2 = contributionLinkNavigator;
                        ScaffoldKt.a(null, null, null, null, null, 0, j2, 0L, windowInsetsA, ComposableLambdaKt.b(-503876951, new Function3() { // from class: com.vuitton.android.presentation.screen.search.components.c
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj3, Object obj4, Object obj5) {
                                Function0 function9;
                                PaddingValues paddingValues = (PaddingValues) obj3;
                                Composer composer3 = (Composer) obj4;
                                int iIntValue2 = ((Integer) obj5).intValue();
                                Modifier modifierE2 = modifier3;
                                if (modifierE2 != null) {
                                    modifierE2 = defpackage.a.e(modifierE2, "SearchScreenComposable$lambda$0$7");
                                }
                                paddingValues.getClass();
                                if ((iIntValue2 & 6) == 0) {
                                    iIntValue2 |= composer3.K(paddingValues) ? 4 : 2;
                                }
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Modifier modifierB = BackgroundKt.b(PaddingKt.m(PaddingKt.h(modifierE2, paddingValues), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, 7), Color.b(z2 ? 0.75f : 0.9f, LVAppDesignKitTheme.c(composer3).f48361b.u), RectangleShapeKt.f8913a);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode = Long.hashCode(composer3.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierB);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function10 = ComposeUiNode.Companion.f9641b;
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function10);
                                    } else {
                                        composer3.o();
                                    }
                                    Function2 function11 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer3, measurePolicyD, function11);
                                    Function2 function12 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer3, persistentCompositionLocalMapN, function12);
                                    Integer numValueOf = Integer.valueOf(iHashCode);
                                    Function2 function13 = ComposeUiNode.Companion.g;
                                    Updater.c(composer3, numValueOf, function13);
                                    Function1 function14 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer3, function14);
                                    Function2 function15 = ComposeUiNode.Companion.d;
                                    Updater.c(composer3, modifierC, function15);
                                    Modifier modifierO = new DTFunctionNameModifier("SearchScreenComposable$lambda$0$7").o(SizeKt.f5052c);
                                    final CoroutineScope coroutineScope2 = coroutineScope;
                                    boolean zY3 = composer3.y(coroutineScope2);
                                    final FocusManager focusManager2 = focusManager;
                                    boolean zY4 = zY3 | composer3.y(focusManager2);
                                    final Function0 function16 = function5;
                                    boolean zK2 = zY4 | composer3.K(function16);
                                    final SearchViewModel searchViewModel3 = searchViewModel2;
                                    boolean zY5 = zK2 | composer3.y(searchViewModel3);
                                    Object objX7 = composer3.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (zY5 || objX7 == composer$Companion$Empty$2) {
                                        final int i4 = 1;
                                        objX7 = new Function0() { // from class: com.vuitton.android.presentation.screen.search.components.b
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                switch (i4) {
                                                    case 0:
                                                        BuildersKt.c(coroutineScope2, null, null, new SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$5$1$1(focusManager2, function16, searchViewModel3, null), 3);
                                                        break;
                                                    default:
                                                        BuildersKt.c(coroutineScope2, null, null, new SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1(focusManager2, function16, searchViewModel3, null), 3);
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        function9 = function16;
                                        composer3.q(objX7);
                                    } else {
                                        function9 = function16;
                                    }
                                    Modifier modifierC2 = ModifierExtKt.c(modifierO, false, null, null, (Function0) objX7, 27);
                                    Object objX8 = composer3.x();
                                    if (objX8 == composer$Companion$Empty$2) {
                                        objX8 = new yt0(20);
                                        composer3.q(objX8);
                                    }
                                    BoxKt.a(SemanticsModifierKt.b(modifierC2, false, (Function1) objX8), composer3, 0);
                                    Modifier modifierM = PaddingKt.m(WindowInsetsPadding_androidKt.d(new DTFunctionNameModifier("SearchScreenComposable$lambda$0$7")), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer3, 0);
                                    int iHashCode2 = Long.hashCode(composer3.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                                    Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierM);
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function10);
                                    } else {
                                        composer3.o();
                                    }
                                    Updater.c(composer3, columnMeasurePolicyA, function11);
                                    Updater.c(composer3, persistentCompositionLocalMapN2, function12);
                                    cj.s(iHashCode2, composer3, function13, composer3, function14);
                                    Updater.c(composer3, modifierC3, function15);
                                    String strC = StringResources_androidKt.c(composer3, R.string.search_placeholder);
                                    Modifier modifierA = FocusRequesterModifierKt.a(new DTFunctionNameModifier("SearchScreenComposable$lambda$0$7"), focusRequester);
                                    boolean zY6 = composer3.y(searchViewModel3);
                                    Object objX9 = composer3.x();
                                    if (zY6 || objX9 == composer$Companion$Empty$2) {
                                        objX9 = new xo0(searchViewModel3, 16);
                                        composer3.q(objX9);
                                    }
                                    Modifier modifierK = PaddingKt.k(FocusChangedModifierKt.a(modifierA, (Function1) objX9), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    final State state = mutableStateB;
                                    boolean zK3 = composer3.K(state) | composer3.K(strC);
                                    Object objX10 = composer3.x();
                                    if (zK3 || objX10 == composer$Companion$Empty$2) {
                                        objX10 = new rp0(strC, state, 15);
                                        composer3.q(objX10);
                                    }
                                    Modifier modifierE3 = ModifierExtKt.e(SemanticsModifierKt.b(modifierK, false, (Function1) objX10), "search_searchedTitle_text");
                                    String str = ((SearchScreenViewState) state.getF10755b()).g;
                                    boolean zK4 = composer3.K(state) | composer3.y(searchViewModel3);
                                    Object objX11 = composer3.x();
                                    if (zK4 || objX11 == composer$Companion$Empty$2) {
                                        objX11 = new rp0(searchViewModel3, state, 16);
                                        composer3.q(objX11);
                                    }
                                    Function1 function17 = (Function1) objX11;
                                    boolean zY7 = composer3.y(searchViewModel3) | composer3.K(state);
                                    Function1 function18 = function6;
                                    boolean zK5 = zY7 | composer3.K(function18);
                                    Object objX12 = composer3.x();
                                    if (zK5 || objX12 == composer$Companion$Empty$2) {
                                        objX12 = new sm0(searchViewModel3, function18, state, 14);
                                        composer3.q(objX12);
                                    }
                                    Function0 function19 = (Function0) objX12;
                                    final Function0 function20 = function9;
                                    boolean zY8 = composer3.y(coroutineScope2) | composer3.y(focusManager2) | composer3.K(function20) | composer3.y(searchViewModel3);
                                    Object objX13 = composer3.x();
                                    if (zY8 || objX13 == composer$Companion$Empty$2) {
                                        final int i5 = 0;
                                        objX13 = new Function0() { // from class: com.vuitton.android.presentation.screen.search.components.b
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                switch (i5) {
                                                    case 0:
                                                        BuildersKt.c(coroutineScope2, null, null, new SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$5$1$1(focusManager2, function20, searchViewModel3, null), 3);
                                                        break;
                                                    default:
                                                        BuildersKt.c(coroutineScope2, null, null, new SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1(focusManager2, function20, searchViewModel3, null), 3);
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer3.q(objX13);
                                    }
                                    final int i6 = 1;
                                    LVSearchBarKt.a(modifierE3, str, function17, function19, strC, null, 0, (Function0) objX13, null, composer3, 100663296, 608);
                                    Composer composer4 = composer3;
                                    if (!((SearchScreenViewState) state.getF10755b()).f64263i || (((SearchScreenViewState) state.getF10755b()).d instanceof SearchListState.Result)) {
                                        composer4.L(644131989);
                                        composer4.F();
                                    } else {
                                        composer4.L(642696534);
                                        Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                                        PushCardType pushCardType = PushCardType.INVERT;
                                        Modifier modifierE4 = com.vuitton.android.designkit.components.ModifierExtKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(composer4).f48389i, LVAppDesignKitTheme.d(composer4).f48388h, 6, ((Color) pushCardType.getContainerColor().invoke(composer4, 6)).f8872a, modifierM2);
                                        String strC2 = StringResources_androidKt.c(composer4, R.string.companion_push_card_title);
                                        String strC3 = StringResources_androidKt.c(composer4, R.string.companion_push_card_description);
                                        IconUiModelKt.a(IconUiModel.AI_COMPANION);
                                        Integer numValueOf2 = Integer.valueOf(R.drawable.ic_lv_ai);
                                        AICompanionTracker aICompanionTracker2 = aICompanionTracker;
                                        boolean zY9 = composer4.y(aICompanionTracker2);
                                        Function0 function21 = function7;
                                        boolean zK6 = zY9 | composer4.K(function21);
                                        Object objX14 = composer4.x();
                                        if (zK6 || objX14 == composer$Companion$Empty$2) {
                                            objX14 = new j(aICompanionTracker2, function21, 6);
                                            composer4.q(objX14);
                                        }
                                        PushCardKt.a(modifierE4, strC2, strC3, false, numValueOf2, null, pushCardType, (Function0) objX14, composer4, 1769472);
                                        composer4 = composer4;
                                        composer4.F();
                                    }
                                    int i7 = SearchScreenComposableKt.WhenMappings.f64198a[((SearchScreenViewState) state.getF10755b()).f64257a.ordinal()];
                                    final Function1 function22 = function8;
                                    MutableState mutableState2 = mutableState;
                                    if (i7 == 1) {
                                        composer4.L(1960446343);
                                        HistoryUiModel historyUiModel = ((SearchScreenViewState) state.getF10755b()).f64258b;
                                        boolean z3 = ((SearchScreenViewState) state.getF10755b()).f64262h;
                                        NestedScroll nestedScroll = (NestedScroll) mutableState2.getF10755b();
                                        boolean zY10 = composer4.y(searchViewModel3);
                                        Object objX15 = composer4.x();
                                        if (zY10 || objX15 == composer$Companion$Empty$2) {
                                            objX15 = new SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$7$1(0, searchViewModel3, SearchViewModel.class, "onClearHistory", "onClearHistory()V", 0);
                                            composer4.q(objX15);
                                        }
                                        Function0 function23 = (Function0) ((KFunction) objX15);
                                        boolean zK7 = composer4.K(function22) | composer4.y(searchViewModel3);
                                        Object objX16 = composer4.x();
                                        if (zK7 || objX16 == composer$Companion$Empty$2) {
                                            objX16 = new es0(function22, searchViewModel3, 4);
                                            composer4.q(objX16);
                                        }
                                        Function2 function24 = (Function2) objX16;
                                        boolean zK8 = composer4.K(function18) | composer4.y(searchViewModel3);
                                        Object objX17 = composer4.x();
                                        if (zK8 || objX17 == composer$Companion$Empty$2) {
                                            objX17 = new pu0(function18, searchViewModel3, 1);
                                            composer4.q(objX17);
                                        }
                                        HistoryComposableKt.a(historyUiModel, z3, nestedScroll, function23, function24, (Function1) objX17, composer4, 0);
                                        composer4.F();
                                    } else if (i7 == 2) {
                                        composer4.L(1960489821);
                                        SearchListState searchListState = ((SearchScreenViewState) state.getF10755b()).f64259c;
                                        NestedScroll nestedScroll2 = (NestedScroll) mutableState2.getF10755b();
                                        boolean zK9 = composer4.K(function18) | composer4.y(searchViewModel3);
                                        Object objX18 = composer4.x();
                                        if (zK9 || objX18 == composer$Companion$Empty$2) {
                                            objX18 = new pu0(function18, searchViewModel3, 2);
                                            composer4.q(objX18);
                                        }
                                        TrendingComposableKt.a(searchListState, nestedScroll2, (Function1) objX18, composer4, 0);
                                        composer4.F();
                                    } else if (i7 == 3) {
                                        composer4.L(646209082);
                                        SearchListState searchListState2 = ((SearchScreenViewState) state.getF10755b()).d;
                                        boolean zY11 = composer4.y(searchViewModel3) | composer4.K(state);
                                        Object objX19 = composer4.x();
                                        if (zY11 || objX19 == composer$Companion$Empty$2) {
                                            objX19 = new SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1(searchViewModel3, state, null);
                                            composer4.q(objX19);
                                        }
                                        EffectsKt.e(composer4, searchListState2, (Function2) objX19);
                                        List list = ((SearchScreenViewState) state.getF10755b()).f64260e;
                                        List list2 = ((SearchScreenViewState) state.getF10755b()).f64261f;
                                        SearchListState searchListState3 = ((SearchScreenViewState) state.getF10755b()).d;
                                        boolean zY12 = composer4.y(searchViewModel3) | composer4.K(state) | composer4.K(function22);
                                        Object objX20 = composer4.x();
                                        if (zY12 || objX20 == composer$Companion$Empty$2) {
                                            objX20 = new Function2() { // from class: ru0
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(Object obj6, Object obj7) {
                                                    int i8 = i6;
                                                    State state2 = state;
                                                    Function1 function25 = function22;
                                                    switch (i8) {
                                                        case 0:
                                                            SuggestionItemUiModel suggestionItemUiModel = (SuggestionItemUiModel) obj6;
                                                            int iIntValue3 = ((Integer) obj7).intValue();
                                                            suggestionItemUiModel.getClass();
                                                            String str2 = suggestionItemUiModel.f64284a;
                                                            String str3 = suggestionItemUiModel.f64285b;
                                                            SearchScreenComposableKt.c(searchViewModel3, str2, str3, suggestionItemUiModel.d, iIntValue3, new SearchTrackingUiModel.OnHitOnSuggestionsCarouselProduct(((SearchScreenViewState) state2.getF10755b()).g, str2, null));
                                                            function25.invoke(new HistoryItemUiModel.HistoryProductUiModel(str2, str3, suggestionItemUiModel.f64286c, suggestionItemUiModel.d, 0, null, null));
                                                            break;
                                                        default:
                                                            SuggestionItemUiModel suggestionItemUiModel2 = (SuggestionItemUiModel) obj6;
                                                            int iIntValue4 = ((Integer) obj7).intValue();
                                                            suggestionItemUiModel2.getClass();
                                                            String str4 = suggestionItemUiModel2.f64284a;
                                                            String str5 = suggestionItemUiModel2.f64285b;
                                                            SearchScreenComposableKt.c(searchViewModel3, str4, str5, suggestionItemUiModel2.d, iIntValue4, new SearchTrackingUiModel.OnHitOnResultCarouselProduct(((SearchScreenViewState) state2.getF10755b()).g, str4, null));
                                                            function25.invoke(new HistoryItemUiModel.HistoryProductUiModel(str4, str5, suggestionItemUiModel2.f64286c, suggestionItemUiModel2.d, 0, null, null));
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            };
                                            composer4.q(objX20);
                                        }
                                        Function2 function25 = (Function2) objX20;
                                        boolean zK10 = composer4.K(function18) | composer4.y(searchViewModel3);
                                        Object objX21 = composer4.x();
                                        if (zK10 || objX21 == composer$Companion$Empty$2) {
                                            objX21 = new pu0(function18, searchViewModel3, 3);
                                            composer4.q(objX21);
                                        }
                                        Function1 function26 = (Function1) objX21;
                                        boolean zY13 = composer4.y(searchViewModel3) | composer4.K(state);
                                        Context context2 = context;
                                        boolean zY14 = zY13 | composer4.y(context2);
                                        ContributionLinkNavigator contributionLinkNavigator3 = contributionLinkNavigator2;
                                        boolean zY15 = zY14 | composer4.y(contributionLinkNavigator3);
                                        Object objX22 = composer4.x();
                                        if (zY15 || objX22 == composer$Companion$Empty$2) {
                                            objX22 = new ys0(searchViewModel3, context2, state, contributionLinkNavigator3, 1);
                                            composer4.q(objX22);
                                        }
                                        Function2 function27 = (Function2) objX22;
                                        boolean zY16 = composer4.y(searchViewModel3);
                                        Object objX23 = composer4.x();
                                        if (zY16 || objX23 == composer$Companion$Empty$2) {
                                            objX23 = new qu0(searchViewModel3, 0);
                                            composer4.q(objX23);
                                        }
                                        Composer composer5 = composer4;
                                        SuccessSearchComposableKt.c(list, list2, searchListState3, function25, function26, function27, (Function0) objX23, composer5, 0);
                                        composer4 = composer5;
                                        composer4.F();
                                    } else if (i7 != 4) {
                                        composer4.L(651699027);
                                        composer4.F();
                                    } else {
                                        composer4.L(1960639128);
                                        SearchListState searchListState4 = ((SearchScreenViewState) state.getF10755b()).d;
                                        SearchListState searchListState5 = ((SearchScreenViewState) state.getF10755b()).f64259c;
                                        NestedScroll nestedScroll3 = (NestedScroll) mutableState2.getF10755b();
                                        boolean zY17 = composer4.y(searchViewModel3) | composer4.K(state) | composer4.K(function22);
                                        Object objX24 = composer4.x();
                                        if (zY17 || objX24 == composer$Companion$Empty$2) {
                                            final int i8 = 0;
                                            objX24 = new Function2() { // from class: ru0
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(Object obj6, Object obj7) {
                                                    int i9 = i8;
                                                    State state2 = state;
                                                    Function1 function28 = function22;
                                                    switch (i9) {
                                                        case 0:
                                                            SuggestionItemUiModel suggestionItemUiModel = (SuggestionItemUiModel) obj6;
                                                            int iIntValue3 = ((Integer) obj7).intValue();
                                                            suggestionItemUiModel.getClass();
                                                            String str2 = suggestionItemUiModel.f64284a;
                                                            String str3 = suggestionItemUiModel.f64285b;
                                                            SearchScreenComposableKt.c(searchViewModel3, str2, str3, suggestionItemUiModel.d, iIntValue3, new SearchTrackingUiModel.OnHitOnSuggestionsCarouselProduct(((SearchScreenViewState) state2.getF10755b()).g, str2, null));
                                                            function28.invoke(new HistoryItemUiModel.HistoryProductUiModel(str2, str3, suggestionItemUiModel.f64286c, suggestionItemUiModel.d, 0, null, null));
                                                            break;
                                                        default:
                                                            SuggestionItemUiModel suggestionItemUiModel2 = (SuggestionItemUiModel) obj6;
                                                            int iIntValue4 = ((Integer) obj7).intValue();
                                                            suggestionItemUiModel2.getClass();
                                                            String str4 = suggestionItemUiModel2.f64284a;
                                                            String str5 = suggestionItemUiModel2.f64285b;
                                                            SearchScreenComposableKt.c(searchViewModel3, str4, str5, suggestionItemUiModel2.d, iIntValue4, new SearchTrackingUiModel.OnHitOnResultCarouselProduct(((SearchScreenViewState) state2.getF10755b()).g, str4, null));
                                                            function28.invoke(new HistoryItemUiModel.HistoryProductUiModel(str4, str5, suggestionItemUiModel2.f64286c, suggestionItemUiModel2.d, 0, null, null));
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            };
                                            composer4.q(objX24);
                                        }
                                        Function2 function28 = (Function2) objX24;
                                        boolean zY18 = composer4.y(searchViewModel3);
                                        Object objX25 = composer4.x();
                                        if (zY18 || objX25 == composer$Companion$Empty$2) {
                                            objX25 = new qu0(searchViewModel3, 1);
                                            composer4.q(objX25);
                                        }
                                        NoResultSearchComposableKt.a(searchListState4, searchListState5, nestedScroll3, function28, function18, (Function0) objX25, composer4, 0);
                                        composer4.F();
                                    }
                                    composer4.r();
                                    composer4.r();
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 806879232, 191);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            };
            modifier2 = modifier2;
            LVSearchCompositionLocalProviderKt.a(ComposableLambdaKt.b(521415450, function4, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dm(modifier2, searchViewModel, contributionLinkNavigator, z, function0, function1, function2, function3, i2);
        }
    }

    public static final RippleConfiguration b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48380i;
        boolean zE = composer.e(j2);
        Object objX = composer.x();
        if (zE || objX == Composer.Companion.f7939a) {
            objX = new RippleConfiguration(j2, RippleDefaults.f7163a, null);
            composer.q(objX);
        }
        return (RippleConfiguration) objX;
    }

    public static final void c(SearchViewModel searchViewModel, String str, String str2, ProductShortPriceUiModel productShortPriceUiModel, int i2, SearchTrackingUiModel searchTrackingUiModel) {
        searchViewModel.x7(searchTrackingUiModel);
        searchViewModel.j(new GA4TrackingUiModel.SelectItemClicked("search", productShortPriceUiModel != null ? productShortPriceUiModel.d : null, "search_results", "Search results", str, str2, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, i2, null, null, 768, null));
    }
}

package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridSpanKt;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScrollPosition;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.navigation.NavHostController;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationInteractorImpl;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartLoadingScreenKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceComposableKt;
import com.vuitton.android.presentation.screen.onboarding.OnboardingNavHostKt;
import com.vuitton.android.presentation.screen.options.components.OptionsScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.orders.components.returns.legacy.LoadingAnimationKt;
import com.vuitton.android.presentation.screen.search.components.NoResultSearchComposableKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n50 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76451b;

    public /* synthetic */ n50(NativeLoginViewModelImpl nativeLoginViewModelImpl) {
        this.f76451b = 20;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f76451b) {
            case 0:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(-446744814);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierA = AlphaKt.a(new DTFunctionNameModifier("LVCardWithIcon$lambda$0$1"), LVAppDesignKitTheme.h(composer).d);
                composer.F();
                return modifierA;
            case 1:
                ((Integer) obj2).getClass();
                LVEmptyViewKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                LVModalBottomSheetKt.d((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(1822010494);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierA2 = AlphaKt.a(new DTFunctionNameModifier("LVTagFilter$lambda$0"), LVAppDesignKitTheme.h(composer2).d);
                composer2.F();
                return modifierA2;
            case 4:
                ((Integer) obj2).intValue();
                n50 n50Var = LazyGridIntervalContent.d;
                return new GridItemSpan(LazyGridSpanKt.a(1));
            case 5:
                LazyGridState lazyGridState = (LazyGridState) obj2;
                LazyGridState.Companion companion = LazyGridState.w;
                return CollectionsKt.P(Integer.valueOf(lazyGridState.g()), Integer.valueOf(((SnapshotMutableIntStateImpl) lazyGridState.d.f5336b).f()));
            case 6:
                LazyListState lazyListState = (LazyListState) obj2;
                LazyListState.Companion companion2 = LazyListState.y;
                return CollectionsKt.P(Integer.valueOf(lazyListState.h()), Integer.valueOf(lazyListState.i()));
            case 7:
                LazyStaggeredGridScrollPosition lazyStaggeredGridScrollPosition = ((LazyStaggeredGridState) obj2).f5667c;
                return CollectionsKt.P(lazyStaggeredGridScrollPosition.f5653b, lazyStaggeredGridScrollPosition.d);
            case 8:
                return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$2((LiveTranslationInteractor.State) obj, (LiveTranslationInteractor.SelectLanguage) obj2);
            case 9:
                return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$3((LiveTranslationInteractor.State) obj, (LiveTranslationInteractor.SentenceTimedOut) obj2);
            case 10:
                return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$5((LiveTranslationInteractor.State) obj, (LiveTranslationInteractor.Enable) obj2);
            case 11:
                return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$8((LiveTranslationInteractor.State) obj, (LiveTranslationInteractorImpl.FetchLanguagesSuccess) obj2);
            case 12:
                return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$9((LiveTranslationInteractor.State) obj, (LiveTranslationInteractorImpl.FetchLanguagesFailure) obj2);
            case 13:
                ((Integer) obj2).getClass();
                LoadingAnimationKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                MaintenanceComposableKt.b((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 15:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope);
            case 16:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope2.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope2);
            case 17:
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(-702086342);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierB = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("NativeCartComposable$lambda$31$0"));
                composer3.F();
                return modifierB;
            case 18:
                ((Integer) obj).intValue();
                CartItemUiModel cartItemUiModel = (CartItemUiModel) obj2;
                cartItemUiModel.getClass();
                return cartItemUiModel.f55151j;
            case 19:
                ((Integer) obj2).getClass();
                NativeCartLoadingScreenKt.b((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 20:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj2;
                return !(formFieldGenericUiModel instanceof FormFieldUiModel) ? formFieldGenericUiModel : FormFieldUiModel.c((FormFieldUiModel) formFieldGenericUiModel, false, null, null, null, null, null, null, false, false, 1022);
            case 21:
                ((Integer) obj2).getClass();
                NativeRegisterBottomSheetScreenKt.d((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                return ((NavHostController) obj2).h();
            case 23:
                ((Integer) obj2).getClass();
                NoResultSearchComposableKt.e((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                OnboardingNavHostKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                ((Integer) obj2).getClass();
                OptionsScreenKt.c((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                OrderExchangeReviewScreenKt.g((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                Composer composer4 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer4.L(-1113165733);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierA3 = AlphaKt.a(new DTFunctionNameModifier("OrderItem$lambda$1$0"), LVAppDesignKitTheme.h(composer4).d);
                composer4.F();
                return modifierA3;
            case 28:
                Composer composer5 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer5.L(389921114);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("OrderListShippingGroup$lambda$2$1$2$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).f48416e, 7);
                composer5.F();
                return modifierM;
            default:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ n50(int i2, int i3) {
        this.f76451b = i3;
    }

    public /* synthetic */ n50(int i2) {
        this.f76451b = i2;
    }
}

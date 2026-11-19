package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVFeedCompositionLocalProviderKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailCoverKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.feed.FeedViewModelImpl;
import com.vuitton.android.presentation.screen.feed.components.FeedComposableKt;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSelectorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import defpackage.je;
import defpackage.md;
import defpackage.tj;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class za implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81582c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function f81583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81584f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81585h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81586i;

    public /* synthetic */ za(MainNavigationState mainNavigationState, ContributionLinkNavigator contributionLinkNavigator, SharedFlow sharedFlow, Function1 function1, qb0 qb0Var, Function3 function3, Function0 function0) {
        this.f81581b = 2;
        this.f81582c = mainNavigationState;
        this.f81584f = contributionLinkNavigator;
        this.g = sharedFlow;
        this.f81583e = function1;
        this.f81585h = qb0Var;
        this.f81586i = function3;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        AssetImageUiModel assetImageUiModel;
        int i2 = this.f81581b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function0 function0 = this.d;
        Object obj5 = this.f81586i;
        Object obj6 = this.f81585h;
        Function function = this.f81583e;
        Object obj7 = this.g;
        Object obj8 = this.f81584f;
        Object obj9 = this.f81582c;
        switch (i2) {
            case 0:
                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel = (AudioGuideUiModel.AudioGuideColorsUiModel) obj8;
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj7;
                Function0 function1 = (Function0) function;
                State state = (State) obj6;
                State state2 = (State) obj5;
                int iIntValue = ((Integer) obj2).intValue();
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) CollectionsKt.G(iIntValue, (List) obj9);
                String str = (trackUiModel == null || (assetImageUiModel = trackUiModel.f53221e) == null) ? null : assetImageUiModel.f51778b;
                if (str == null) {
                    str = "";
                }
                long j2 = audioGuideColorsUiModel.f53207a;
                long j3 = audioGuideColorsUiModel.g;
                float fFloatValue = ((Number) state.getF10755b()).floatValue();
                float fFloatValue2 = ((Number) state2.getF10755b()).floatValue();
                boolean zY = composer.y(audioGuideTracker) | composer.K(function0);
                Object objX = composer.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new ga(audioGuideTracker, function0, 8);
                    composer.q(objX);
                }
                Function0 function2 = (Function0) objX;
                boolean zY2 = composer.y(audioGuideTracker) | composer.K(function1);
                Object objX2 = composer.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ga(audioGuideTracker, function1, 9);
                    composer.q(objX2);
                }
                TrackDetailCoverKt.a(str, j2, j3, fFloatValue, fFloatValue2, function2, (Function0) objX2, composer, 0);
                break;
            case 1:
                List list = (List) obj9;
                BeautyVtoViewState beautyVtoViewState = (BeautyVtoViewState) obj8;
                Function1 function3 = (Function1) obj7;
                Function0 function4 = (Function0) function;
                Function0 function5 = (Function0) obj6;
                MutableState mutableState = (MutableState) obj5;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f3 = BeautyVtoScreenKt.f62031a;
                ((AnimatedContentScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                if (zBooleanValue) {
                    Modifier modifierH = pq0.h(1.0f, 820719461, composer2, "BeautyVtoScreen$lambda$12$3$0$0$1");
                    TryOnProductUiModel tryOnProductUiModel = beautyVtoViewState.f62155i;
                    LookUiModel lookUiModel = beautyVtoViewState.s;
                    boolean zK = composer2.K(function3);
                    Object objX3 = composer2.x();
                    if (zK || objX3 == composer$Companion$Empty$1) {
                        objX3 = new x3(function3, mutableState, 2);
                        composer2.q(objX3);
                    }
                    Function1 function6 = (Function1) objX3;
                    boolean zK2 = composer2.K(function0);
                    Object objX4 = composer2.x();
                    if (zK2 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new na(function0, mutableState, 2);
                        composer2.q(objX4);
                    }
                    BeautyColorSelectorKt.a(modifierH, list, tryOnProductUiModel, lookUiModel, function6, (Function0) objX4, function4, function5, composer2, 6, 0);
                    composer2.F();
                } else {
                    composer2.L(821934165);
                    composer2.F();
                }
                break;
            default:
                final MainNavigationState mainNavigationState = (MainNavigationState) obj9;
                final ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj8;
                final SharedFlow sharedFlow = (SharedFlow) obj7;
                final Function1 function7 = (Function1) function;
                final qb0 qb0Var = (qb0) obj6;
                final Function3 function8 = (Function3) obj5;
                Composer composer3 = (Composer) obj3;
                a.x((Integer) obj4, (AnimatedContentScope) obj, (NavBackStackEntry) obj2);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                final int iB = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer3), composer3).getF5031b());
                final int iB2 = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer3), composer3).getD());
                final Context context = (Context) composer3.k(AndroidCompositionLocals_androidKt.f9936b);
                final Function0 function9 = this.d;
                LVFeedCompositionLocalProviderKt.b(ComposableLambdaKt.b(85449401, new Function2() { // from class: com.vuitton.android.presentation.screen.main.navigation.a
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj10, Object obj11) {
                        Composer composer4 = (Composer) obj10;
                        int iIntValue2 = ((Integer) obj11).intValue();
                        if (composer4.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer4);
                            if (viewModelStoreOwnerA == null) {
                                md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                return null;
                            }
                            HiltViewModelFactory hiltViewModelFactoryA = HiltViewModelKt.a(viewModelStoreOwnerA, composer4);
                            CreationExtras defaultViewModelCreationExtras = viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
                            ReflectionFactory reflectionFactory = Reflection.f71922a;
                            FeedViewModelImpl feedViewModelImpl = (FeedViewModelImpl) ViewModelKt.a(reflectionFactory.b(FeedViewModelImpl.class), viewModelStoreOwnerA, null, hiltViewModelFactoryA, defaultViewModelCreationExtras, composer4);
                            ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer4);
                            if (viewModelStoreOwnerA2 == null) {
                                md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                return null;
                            }
                            PermissionsViewModelImpl permissionsViewModelImpl = (PermissionsViewModelImpl) ViewModelKt.a(reflectionFactory.b(PermissionsViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer4), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer4);
                            MainNavigationState mainNavigationState2 = mainNavigationState;
                            boolean zK3 = composer4.K(mainNavigationState2);
                            Object objX5 = composer4.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (zK3 || objX5 == composer$Companion$Empty$2) {
                                FeedNavigationKt$feedComposable$3$1$1$1 feedNavigationKt$feedComposable$3$1$1$1 = new FeedNavigationKt$feedComposable$3$1$1$1(1, mainNavigationState2, MainNavigationState.class, "updateStatusBarIconsColor", "updateStatusBarIconsColor-CFaEubQ(Z)V", 0);
                                composer4.q(feedNavigationKt$feedComposable$3$1$1$1);
                                objX5 = feedNavigationKt$feedComposable$3$1$1$1;
                            }
                            Function1 function10 = (Function1) ((KFunction) objX5);
                            Function3 function11 = function8;
                            boolean zK4 = composer4.K(function11);
                            int i3 = iB;
                            boolean zD = zK4 | composer4.d(i3);
                            int i4 = iB2;
                            boolean zD2 = zD | composer4.d(i4);
                            Object objX6 = composer4.x();
                            if (zD2 || objX6 == composer$Companion$Empty$2) {
                                objX6 = new tj(function11, i3, i4, 5);
                                composer4.q(objX6);
                            }
                            Function1 function12 = (Function1) objX6;
                            Context context2 = context;
                            boolean zY3 = composer4.y(context2);
                            Object objX7 = composer4.x();
                            if (zY3 || objX7 == composer$Companion$Empty$2) {
                                objX7 = new je(context2, 8);
                                composer4.q(objX7);
                            }
                            Function0 function13 = (Function0) objX7;
                            boolean zY4 = composer4.y(context2);
                            Object objX8 = composer4.x();
                            if (zY4 || objX8 == composer$Companion$Empty$2) {
                                objX8 = new je(context2, 9);
                                composer4.q(objX8);
                            }
                            FeedComposableKt.b(feedViewModelImpl, permissionsViewModelImpl, contributionLinkNavigator, sharedFlow, function10, function7, qb0Var, function12, function9, function13, (Function0) objX8, composer4, 0);
                        } else {
                            composer4.D();
                        }
                        return Unit.f71739a;
                    }
                }, composer3), composer3, 6);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ za(List list, Object obj, Object obj2, Function0 function0, Function0 function1, Object obj3, State state, int i2) {
        this.f81581b = i2;
        this.f81582c = list;
        this.f81584f = obj;
        this.g = obj2;
        this.d = function0;
        this.f81583e = function1;
        this.f81585h = obj3;
        this.f81586i = state;
    }
}

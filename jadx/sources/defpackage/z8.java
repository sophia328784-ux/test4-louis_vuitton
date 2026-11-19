package defpackage;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorNavHostKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.components.PersonalSelectionsInStoreComposableKt;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreViewState;
import com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModel;
import com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListComposableKt;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListViewState;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import defpackage.ef;
import defpackage.gf0;
import defpackage.gi0;
import defpackage.je;
import defpackage.md;
import defpackage.qn0;
import defpackage.tb0;
import defpackage.tl;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z8 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81570b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f81571c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81572e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f81573f;
    public final /* synthetic */ Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f81575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f81576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function1 f81577k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ z8(ContactUsTracker contactUsTracker, Function3 function3, Function0 function0, NavHostController navHostController, Function0 function1, Context context, Function1 function2, Function1 function4, Function1 function5, Function1 function6, Function1 function7, Function1 function8, Function1 function9) {
        this.m = contactUsTracker;
        this.f81576j = function3;
        this.d = function0;
        this.f81574h = navHostController;
        this.f81573f = function1;
        this.n = context;
        this.f81571c = function2;
        this.g = function4;
        this.f81575i = function5;
        this.f81577k = function6;
        this.l = function7;
        this.o = function8;
        this.f81572e = function9;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81570b;
        Object obj2 = this.f81572e;
        Object obj3 = this.o;
        Object obj4 = this.n;
        Object obj5 = this.f81574h;
        Object obj6 = this.f81576j;
        Object obj7 = this.m;
        switch (i2) {
            case 0:
                final AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) obj7;
                final CoroutineScope coroutineScope = (CoroutineScope) obj6;
                final Function0 function0 = (Function0) obj5;
                final LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj2;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                final Function1 function1 = this.f81571c;
                final Function1 function2 = this.g;
                final Function1 function3 = this.f81575i;
                final Function1 function4 = this.f81577k;
                final Function1 function5 = this.l;
                final Function0 function6 = this.d;
                final Function0 function7 = this.f81573f;
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1370253322, true, new Function4() { // from class: r8
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        ((Integer) obj11).intValue();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        int i3 = LVModalBottomSheetState.f48797e;
                        AssessmentFormBffComponentKt.a(assessmentBffViewState, coroutineScope, function1, function2, function3, function4, function5, function6, function7, function0, lVModalBottomSheetState, (Composer) obj10, 0, i3);
                        return Unit.f71739a;
                    }
                });
                Map mapC = MapsKt.c();
                EmptyList emptyList = EmptyList.f71768b;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(AssessmentRoutes.Form.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(1311659585, true, new s8(assessmentBffViewState, (Function0) obj4, (Function0) obj3, 0));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(AssessmentRoutes.Confirmation.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                break;
            case 1:
                AssessmentViewState assessmentViewState = (AssessmentViewState) obj7;
                Function0 function8 = (Function0) obj5;
                CoroutineScope coroutineScope2 = (CoroutineScope) obj6;
                LazyListState lazyListState = (LazyListState) obj3;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$AssessmentFormComponentKt.f57069a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormComponentKt.f57070b, 3);
                Function1 function9 = this.f81571c;
                Function0 function10 = this.d;
                Function0 function11 = this.f81573f;
                Function1 function12 = this.g;
                Function1 function13 = this.f81575i;
                ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(1263334520, true, new h9(assessmentViewState, (String) obj4, function9, function10, (LVModalBottomSheetState) obj2, function11, function12, function8, function13, coroutineScope2, lazyListState));
                int i3 = 3;
                LazyListScope.f(lazyListScope, null, composableLambdaImpl3, 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormComponentKt.f57071c, 3);
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(465908986, true, new n4(assessmentViewState, function9, function13, coroutineScope2, lazyListState, 3)), 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormComponentKt.d, 3);
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-331516548, true, new w0(assessmentViewState, this.f81577k, this.l, function9, function13, coroutineScope2, lazyListState, 3)), 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormComponentKt.f57072e, 3);
                if (assessmentViewState.f57358c.d == FormState.CONFIRM) {
                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1635440740, true, new d3(assessmentViewState, i3)), 3);
                }
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormComponentKt.f57073f, 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormComponentKt.g, 3);
                break;
            default:
                final ContactUsTracker contactUsTracker = (ContactUsTracker) obj7;
                final Function3 function14 = (Function3) obj6;
                final NavHostController navHostController = (NavHostController) obj5;
                final Context context = (Context) obj4;
                final Function1 function15 = (Function1) obj3;
                final Function1 function16 = (Function1) obj2;
                NavGraphBuilder navGraphBuilder2 = (NavGraphBuilder) obj;
                navGraphBuilder2.getClass();
                final Function0 function17 = this.d;
                final Function0 function18 = this.f81573f;
                ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(-485373108, true, new Function4() { // from class: com.vuitton.android.presentation.screen.personalselections.b
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Unit unit = Unit.f71739a;
                        ContactUsTracker contactUsTracker2 = contactUsTracker;
                        boolean zY = composer.y(contactUsTracker2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$1$1(contactUsTracker2, null);
                            composer.q(objX);
                        }
                        EffectsKt.e(composer, unit, (Function2) objX);
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        PersonalSelectionsListViewModel personalSelectionsListViewModel = (PersonalSelectionsListViewModel) ViewModelKt.a(Reflection.f71922a.b(PersonalSelectionsListViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                        MutableState mutableStateB = SnapshotStateKt.b(personalSelectionsListViewModel.getF62597i(), composer);
                        MutableState mutableStateA = SnapshotStateKt.a(personalSelectionsListViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, composer, 0, 2);
                        PersonalSelectionsListViewState personalSelectionsListViewState = (PersonalSelectionsListViewState) mutableStateB.getF10755b();
                        boolean zY2 = composer.y(personalSelectionsListViewModel);
                        Object objX2 = composer.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$2$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$2$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$2$1(0, personalSelectionsListViewModel, PersonalSelectionsListViewModel.class, "reloadList", "reloadList()V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$2$1);
                            objX2 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$2$1;
                        }
                        KFunction kFunction = (KFunction) objX2;
                        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                        boolean zY3 = composer.y(personalSelectionsListViewModel);
                        Object objX3 = composer.x();
                        if (zY3 || objX3 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$3$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$3$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$3$1(0, personalSelectionsListViewModel, PersonalSelectionsListViewModel.class, "setUserChatConsentEnabled", "setUserChatConsentEnabled()V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$3$1);
                            objX3 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$3$1;
                        }
                        KFunction kFunction2 = (KFunction) objX3;
                        boolean zY4 = composer.y(personalSelectionsListViewModel);
                        Object objX4 = composer.x();
                        if (zY4 || objX4 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$4$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$4$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$4$1(1, personalSelectionsListViewModel, PersonalSelectionsListViewModel.class, "sendTrackingHit", "sendTrackingHit(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;)V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$4$1);
                            objX4 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$4$1;
                        }
                        KFunction kFunction3 = (KFunction) objX4;
                        Function0 function19 = (Function0) kFunction2;
                        NavHostController navHostController2 = navHostController;
                        boolean zY5 = composer.y(navHostController2);
                        Object objX5 = composer.x();
                        if (zY5 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new tl(navHostController2, 1);
                            composer.q(objX5);
                        }
                        PersonalSelectionsListComposableKt.a(personalSelectionsListViewState, contactUsUiModel, function14, function17, function19, (Function2) objX5, (Function1) kFunction3, (Function0) kFunction, function18, composer, 0);
                        return unit;
                    }
                });
                Map mapC2 = MapsKt.c();
                EmptyList emptyList2 = EmptyList.f71768b;
                ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(PersonalSelectionsRoute.List.class), mapC2, emptyList2, null, null, null, null, composableLambdaImpl4);
                final Function1 function19 = this.f81571c;
                final Function1 function20 = this.g;
                final Function1 function21 = this.f81575i;
                final Function1 function22 = this.f81577k;
                final Function1 function23 = this.l;
                ComposableLambdaImpl composableLambdaImpl5 = new ComposableLambdaImpl(-1924409725, true, new Function4() { // from class: com.vuitton.android.presentation.screen.personalselections.c
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        PersonalSelectionsCurationAdvisorViewModel personalSelectionsCurationAdvisorViewModel;
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Unit unit = Unit.f71739a;
                        ContactUsTracker contactUsTracker2 = contactUsTracker;
                        boolean zY = composer.y(contactUsTracker2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$2$1$1(contactUsTracker2, null);
                            composer.q(objX);
                        }
                        EffectsKt.e(composer, unit, (Function2) objX);
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        PersonalSelectionsCurationAdvisorViewModel personalSelectionsCurationAdvisorViewModel2 = (PersonalSelectionsCurationAdvisorViewModel) ViewModelKt.a(Reflection.f71922a.b(PersonalSelectionsCurationAdvisorViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                        NavHostController navHostController2 = navHostController;
                        boolean zY2 = composer.y(navHostController2);
                        Context context2 = context;
                        boolean zY3 = zY2 | composer.y(context2);
                        Object objX2 = composer.x();
                        if (zY3 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new gf0(navHostController2, context2, 2);
                            composer.q(objX2);
                        }
                        Function0 function24 = (Function0) objX2;
                        boolean zY4 = composer.y(personalSelectionsCurationAdvisorViewModel2);
                        Object objX3 = composer.x();
                        if (zY4 || objX3 == composer$Companion$Empty$1) {
                            personalSelectionsCurationAdvisorViewModel = personalSelectionsCurationAdvisorViewModel2;
                            objX3 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$2$3$1(0, personalSelectionsCurationAdvisorViewModel, PersonalSelectionsCurationAdvisorViewModel.class, "setUserChatConsentEnabled", "setUserChatConsentEnabled()V", 0);
                            composer.q(objX3);
                        } else {
                            personalSelectionsCurationAdvisorViewModel = personalSelectionsCurationAdvisorViewModel2;
                        }
                        PersonalSelectionsCurationAdvisorNavHostKt.a(personalSelectionsCurationAdvisorViewModel, function24, function19, function20, function14, function17, (Function0) ((KFunction) objX3), function21, function22, function23, function15, function16, composer, 0);
                        return unit;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(PersonalSelectionsRoute.AdvisorCurationDetail.class), MapsKt.c(), emptyList2, null, null, null, null, composableLambdaImpl5);
                ComposableLambdaImpl composableLambdaImpl6 = new ComposableLambdaImpl(-372755196, true, new Function4() { // from class: com.vuitton.android.presentation.screen.personalselections.d
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Object personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$3$1;
                        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj9;
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        navBackStackEntry.getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Unit unit = Unit.f71739a;
                        ContactUsTracker contactUsTracker2 = contactUsTracker;
                        boolean zY = composer.y(contactUsTracker2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$1$1(contactUsTracker2, null);
                            composer.q(objX);
                        }
                        EffectsKt.e(composer, unit, (Function2) objX);
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        HiltViewModelFactory hiltViewModelFactoryA = HiltViewModelKt.a(viewModelStoreOwnerA, composer);
                        CreationExtras defaultViewModelCreationExtras = viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
                        ReflectionFactory reflectionFactory3 = Reflection.f71922a;
                        PersonalSelectionsInStoreViewModel personalSelectionsInStoreViewModel = (PersonalSelectionsInStoreViewModel) ViewModelKt.a(reflectionFactory3.b(PersonalSelectionsInStoreViewModelImpl.class), viewModelStoreOwnerA, null, hiltViewModelFactoryA, defaultViewModelCreationExtras, composer);
                        MutableState mutableStateB = SnapshotStateKt.b(personalSelectionsInStoreViewModel.getR(), composer);
                        MutableState mutableStateA = SnapshotStateKt.a(personalSelectionsInStoreViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, composer, 0, 2);
                        ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA2 == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        SocialLoginViewModelImpl socialLoginViewModelImpl = (SocialLoginViewModelImpl) ViewModelKt.a(reflectionFactory3.b(SocialLoginViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                        ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
                        boolean zY2 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX2 = composer.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new tb0(personalSelectionsInStoreViewModel, 27);
                            composer.q(objX2);
                        }
                        ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX2, composer, 0);
                        TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.PERSONAL_SELECTIONS;
                        Function1 function24 = function23;
                        boolean zK = composer.K(function24) | composer.y(managedActivityResultLauncherA);
                        Object objX3 = composer.x();
                        if (zK || objX3 == composer$Companion$Empty$1) {
                            objX3 = new qn0(function24, managedActivityResultLauncherA, 2);
                            composer.q(objX3);
                        }
                        Function0 function25 = (Function0) objX3;
                        Function1 function26 = function15;
                        boolean zK2 = composer.K(function26) | composer.y(managedActivityResultLauncherA);
                        Object objX4 = composer.x();
                        if (zK2 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new qn0(function26, managedActivityResultLauncherA, 3);
                            composer.q(objX4);
                        }
                        Function0 function27 = (Function0) objX4;
                        boolean zY3 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX5 = composer.x();
                        if (zY3 || objX5 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$socialLoginState$3$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$socialLoginState$3$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$socialLoginState$3$1(0, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "reloadDetail", "reloadDetail()V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$socialLoginState$3$1);
                            objX5 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$socialLoginState$3$1;
                        }
                        SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(trackingAuthOrigin, function25, function27, (Function0) ((KFunction) objX5), socialLoginViewModelImpl, composer, 6, 0);
                        boolean zY4 = composer.y(personalSelectionsInStoreViewModel);
                        Context context2 = context;
                        boolean zY5 = zY4 | composer.y(context2);
                        Object objX6 = composer.x();
                        if (zY5 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1(personalSelectionsInStoreViewModel, context2, null);
                            composer.q(objX6);
                        }
                        EffectsKt.e(composer, unit, (Function2) objX6);
                        PersonalSelectionsInStoreViewState personalSelectionsInStoreViewState = (PersonalSelectionsInStoreViewState) mutableStateB.getF10755b();
                        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                        SharedFlowImpl sharedFlowImplG = personalSelectionsInStoreViewModel.g();
                        boolean zY6 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX7 = composer.x();
                        if (zY6 || objX7 == composer$Companion$Empty$1) {
                            personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$3$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$3$1(0, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "setUserChatConsentEnabled", "setUserChatConsentEnabled()V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$3$1);
                        } else {
                            personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$3$1 = objX7;
                        }
                        KFunction kFunction = (KFunction) personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$3$1;
                        boolean zY7 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX8 = composer.x();
                        if (zY7 || objX8 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$4$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$4$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$4$1(1, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "sendTrackingHit", "sendTrackingHit(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel;)V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$4$1);
                            objX8 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$4$1;
                        }
                        KFunction kFunction2 = (KFunction) objX8;
                        boolean zY8 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX9 = composer.x();
                        if (zY8 || objX9 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$5$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$5$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$5$1(1, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "updateWishlist", "updateWishlist(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$5$1);
                            objX9 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$5$1;
                        }
                        KFunction kFunction3 = (KFunction) objX9;
                        boolean zY9 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX10 = composer.x();
                        if (zY9 || objX10 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$6$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$6$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$6$1(0, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "refreshWishlistStatus", "refreshWishlistStatus()V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$6$1);
                            objX10 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$6$1;
                        }
                        KFunction kFunction4 = (KFunction) objX10;
                        boolean zY10 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX11 = composer.x();
                        if (zY10 || objX11 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$7$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$7$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$7$1(0, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "sharePersonalSelection", "sharePersonalSelection()V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$7$1);
                            objX11 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$7$1;
                        }
                        KFunction kFunction5 = (KFunction) objX11;
                        boolean zY11 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX12 = composer.x();
                        if (zY11 || objX12 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$8$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$8$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$8$1(0, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "reloadDetail", "reloadDetail()V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$8$1);
                            objX12 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$8$1;
                        }
                        KFunction kFunction6 = (KFunction) objX12;
                        boolean zY12 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX13 = composer.x();
                        if (zY12 || objX13 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$9$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$9$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$9$1(1, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "onWishlistToggled", "onWishlistToggled(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$9$1);
                            objX13 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$9$1;
                        }
                        KFunction kFunction7 = (KFunction) objX13;
                        boolean zY13 = composer.y(personalSelectionsInStoreViewModel);
                        Object objX14 = composer.x();
                        if (zY13 || objX14 == composer$Companion$Empty$1) {
                            PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$10$1 personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$10$1 = new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$10$1(1, personalSelectionsInStoreViewModel, PersonalSelectionsInStoreViewModel.class, "onWishlistAnimationEnded", "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                            composer.q(personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$10$1);
                            objX14 = personalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$10$1;
                        }
                        KFunction kFunction8 = (KFunction) objX14;
                        Function0 function28 = socialLoginBottomSheetStateB.f54159i;
                        Function0 function29 = socialLoginBottomSheetStateB.f54160j;
                        Function0 function30 = (Function0) kFunction;
                        NavHostController navHostController2 = navHostController;
                        boolean zY14 = composer.y(navHostController2) | composer.y(context2);
                        Object objX15 = composer.x();
                        if (zY14 || objX15 == composer$Companion$Empty$1) {
                            objX15 = new gf0(navHostController2, context2, 1);
                            composer.q(objX15);
                        }
                        Function0 function31 = (Function0) objX15;
                        boolean zY15 = composer.y(context2);
                        Object objX16 = composer.x();
                        if (zY15 || objX16 == composer$Companion$Empty$1) {
                            objX16 = new ef(context2, 14);
                            composer.q(objX16);
                        }
                        Function1 function32 = (Function1) objX16;
                        Function1 function33 = (Function1) kFunction7;
                        Function1 function34 = (Function1) kFunction8;
                        Function1 function35 = (Function1) kFunction3;
                        Function0 function36 = (Function0) kFunction4;
                        boolean zY16 = composer.y(context2);
                        Object objX17 = composer.x();
                        if (zY16 || objX17 == composer$Companion$Empty$1) {
                            objX17 = new je(context2, 27);
                            composer.q(objX17);
                        }
                        Function0 function37 = (Function0) objX17;
                        Function0 function38 = (Function0) kFunction5;
                        Function0 function39 = (Function0) kFunction6;
                        boolean zK3 = composer.K(r13) | composer.y(navBackStackEntry) | composer.y(context2);
                        Object objX18 = composer.x();
                        if (zK3 || objX18 == composer$Companion$Empty$1) {
                            objX18 = new gi0(navBackStackEntry, context2, mutableStateB, 17);
                            composer.q(objX18);
                        }
                        PersonalSelectionsInStoreComposableKt.b(personalSelectionsInStoreViewState, contactUsUiModel, sharedFlowImplG, function14, function17, function30, function31, function32, function33, function34, function35, function36, function37, function38, function39, (Function2) objX18, (Function1) kFunction2, function28, function29, composer, 0);
                        SocialLoginBottomSheetKt.a(socialLoginBottomSheetStateB, composer, 0);
                        return unit;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(PersonalSelectionsRoute.InStoreDetail.class), MapsKt.c(), emptyList2, null, null, null, null, composableLambdaImpl6);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ z8(AssessmentBffViewState assessmentBffViewState, CoroutineScope coroutineScope, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, Function0 function6, Function0 function7, LVModalBottomSheetState lVModalBottomSheetState, Function0 function8, Function0 function9) {
        this.m = assessmentBffViewState;
        this.f81576j = coroutineScope;
        this.f81571c = function1;
        this.g = function2;
        this.f81575i = function3;
        this.f81577k = function4;
        this.l = function5;
        this.d = function0;
        this.f81573f = function6;
        this.f81574h = function7;
        this.f81572e = lVModalBottomSheetState;
        this.n = function8;
        this.o = function9;
    }

    public /* synthetic */ z8(AssessmentViewState assessmentViewState, String str, Function1 function1, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, Function0 function2, Function1 function3, Function0 function4, Function1 function5, CoroutineScope coroutineScope, LazyListState lazyListState, Function1 function6, Function1 function7) {
        this.m = assessmentViewState;
        this.n = str;
        this.f81571c = function1;
        this.d = function0;
        this.f81572e = lVModalBottomSheetState;
        this.f81573f = function2;
        this.g = function3;
        this.f81574h = function4;
        this.f81575i = function5;
        this.f81576j = coroutineScope;
        this.o = lazyListState;
        this.f81577k = function6;
        this.l = function7;
    }
}

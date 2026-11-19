package defpackage;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryKt;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.PreprodRouter;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.options.OptionsRoutes;
import com.vuitton.android.presentation.screen.options.OptionsViewModel;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl;
import com.vuitton.android.presentation.screen.options.accessibility.components.AccessibilityPreferencesComposableKt;
import com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModel;
import com.vuitton.android.presentation.screen.options.appinfo.components.AppInfoComposableKt;
import com.vuitton.android.presentation.screen.options.components.OptionsComposableKt;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt;
import com.vuitton.android.presentation.screen.options.legaltext.components.LegalTextComposableKt;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt;
import defpackage.md;
import defpackage.of0;
import defpackage.pp;
import defpackage.rh0;
import defpackage.sh0;
import defpackage.t30;
import defpackage.tb0;
import defpackage.yj;
import java.util.LinkedHashMap;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s9 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79745b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79746c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79748f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f79749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f79750i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function0 f79751j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f79752k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ s9(NavHostController navHostController, Context context, OptionsViewModel optionsViewModel, Function0 function0, ManagedActivityResultLauncher managedActivityResultLauncher, Function0 function1, NotificationsPreferencesViewModel notificationsPreferencesViewModel, PreprodRouter preprodRouter, Function1 function2, DispatchCountryViewModel dispatchCountryViewModel, AppInfoViewModel appInfoViewModel, Function1 function3, Function0 function4, Function0 function5) {
        this.f79752k = navHostController;
        this.l = context;
        this.m = optionsViewModel;
        this.d = function0;
        this.n = managedActivityResultLauncher;
        this.g = function1;
        this.o = notificationsPreferencesViewModel;
        this.p = preprodRouter;
        this.f79746c = function2;
        this.f79747e = dispatchCountryViewModel;
        this.f79748f = appInfoViewModel;
        this.f79749h = function3;
        this.f79750i = function4;
        this.f79751j = function5;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79745b;
        Object obj2 = this.f79748f;
        Object obj3 = this.f79747e;
        Object obj4 = this.p;
        Object obj5 = this.o;
        Object obj6 = this.n;
        Object obj7 = this.m;
        Object obj8 = this.l;
        Object obj9 = this.f79752k;
        final int i3 = 1;
        switch (i2) {
            case 0:
                final AssessmentViewState assessmentViewState = (AssessmentViewState) obj9;
                final CoroutineScope coroutineScope = (CoroutineScope) obj8;
                final Function1 function1 = (Function1) obj7;
                final Function1 function2 = (Function1) obj6;
                final Function1 function3 = (Function1) obj5;
                final LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj3;
                final MutableState mutableState = (MutableState) obj2;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                final Function1 function4 = this.f79746c;
                final Function1 function5 = this.f79749h;
                final Function0 function0 = this.d;
                final Function0 function6 = this.g;
                final Function0 function7 = this.f79750i;
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-139217886, true, new Function4() { // from class: t9
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        String str = (String) mutableState.getF10755b();
                        int i4 = LVModalBottomSheetState.f48797e << 3;
                        AssessmentFormComponentKt.a(assessmentViewState, str, coroutineScope, function4, function5, function1, function2, function3, function0, function6, function7, lVModalBottomSheetState, (Composer) obj12, 0, i4);
                        return Unit.f71739a;
                    }
                });
                Map mapC = MapsKt.c();
                EmptyList emptyList = EmptyList.f71768b;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(AssessmentRoutes.Form.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(1094556683, true, new w4(assessmentViewState, this.f79751j, (Function0) obj4, mutableState, 2));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(AssessmentRoutes.Confirmation.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                break;
            case 1:
                final NativeRegisterViewModel nativeRegisterViewModel = (NativeRegisterViewModel) obj9;
                final SnackbarHostState snackbarHostState = (SnackbarHostState) obj8;
                final PagerState pagerState = (PagerState) obj7;
                final LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) obj3;
                final MutableState mutableState2 = (MutableState) obj2;
                final NavHostController navHostController = (NavHostController) obj6;
                final MutableState mutableState3 = (MutableState) obj5;
                final AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) obj4;
                NavGraphBuilder navGraphBuilder2 = (NavGraphBuilder) obj;
                navGraphBuilder2.getClass();
                final Function1 function8 = this.f79746c;
                final Function0 function9 = this.d;
                final Function0 function10 = this.g;
                final Function1 function11 = this.f79749h;
                final Function0 function12 = this.f79750i;
                final Function0 function13 = this.f79751j;
                ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(1259111718, true, new Function4() { // from class: com.vuitton.android.presentation.screen.authentication.register.components.a
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        Composer composer = (Composer) obj12;
                        ((Integer) obj13).getClass();
                        ((AnimatedContentScope) obj10).getClass();
                        ((NavBackStackEntry) obj11).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        MutableState mutableState4 = mutableState2;
                        NativeRegisterViewState nativeRegisterViewState = (NativeRegisterViewState) mutableState4.getF10755b();
                        NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen = (NativeRegisterBottomSheetScreen) mutableState3.getF10755b();
                        NativeRegisterViewModel nativeRegisterViewModel2 = nativeRegisterViewModel;
                        boolean zY = composer.y(nativeRegisterViewModel2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$1$1(3, nativeRegisterViewModel2, NativeRegisterViewModel.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/authentication/register/Step;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                            composer.q(objX);
                        }
                        KFunction kFunction = (KFunction) objX;
                        boolean zY2 = composer.y(nativeRegisterViewModel2);
                        Object objX2 = composer.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$2$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$2$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$2$1(1, nativeRegisterViewModel2, NativeRegisterViewModel.class, "onFieldClicked", "onFieldClicked(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$2$1);
                            objX2 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$2$1;
                        }
                        KFunction kFunction2 = (KFunction) objX2;
                        boolean zY3 = composer.y(nativeRegisterViewModel2);
                        Object objX3 = composer.x();
                        if (zY3 || objX3 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$3$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$3$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$3$1(1, nativeRegisterViewModel2, NativeRegisterViewModel.class, "confirmStep", "confirmStep(Lcom/vuitton/android/presentation/screen/authentication/register/Step;)V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$3$1);
                            objX3 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$3$1;
                        }
                        KFunction kFunction3 = (KFunction) objX3;
                        boolean zY4 = composer.y(nativeRegisterViewModel2);
                        Object objX4 = composer.x();
                        if (zY4 || objX4 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$4$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$4$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$4$1(0, nativeRegisterViewModel2, NativeRegisterViewModel.class, "skipAddressStep", "skipAddressStep()V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$4$1);
                            objX4 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$4$1;
                        }
                        KFunction kFunction4 = (KFunction) objX4;
                        boolean zY5 = composer.y(nativeRegisterViewModel2);
                        Object objX5 = composer.x();
                        if (zY5 || objX5 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$5$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$5$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$5$1(1, nativeRegisterViewModel2, NativeRegisterViewModel.class, "updateBirthDate", "updateBirthDate(J)V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$5$1);
                            objX5 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$5$1;
                        }
                        KFunction kFunction5 = (KFunction) objX5;
                        boolean zY6 = composer.y(nativeRegisterViewModel2);
                        Object objX6 = composer.x();
                        if (zY6 || objX6 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$6$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$6$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$6$1(0, nativeRegisterViewModel2, NativeRegisterViewModel.class, "closeDatePicker", "closeDatePicker()V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$6$1);
                            objX6 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$6$1;
                        }
                        KFunction kFunction6 = (KFunction) objX6;
                        boolean zY7 = composer.y(nativeRegisterViewModel2);
                        Object objX7 = composer.x();
                        if (zY7 || objX7 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$7$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$7$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$7$1(1, nativeRegisterViewModel2, NativeRegisterViewModel.class, "updateOtpCode", "updateOtpCode(Ljava/lang/String;)V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$7$1);
                            objX7 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$7$1;
                        }
                        KFunction kFunction7 = (KFunction) objX7;
                        boolean zY8 = composer.y(nativeRegisterViewModel2);
                        Object objX8 = composer.x();
                        if (zY8 || objX8 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$8$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$8$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$8$1(1, nativeRegisterViewModel2, NativeRegisterViewModel.class, "onStepReached", "onStepReached(Lcom/vuitton/android/presentation/screen/authentication/register/Step;)V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$8$1);
                            objX8 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$8$1;
                        }
                        KFunction kFunction8 = (KFunction) objX8;
                        boolean zY9 = composer.y(nativeRegisterViewModel2);
                        Object objX9 = composer.x();
                        if (zY9 || objX9 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$9$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$9$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$9$1(0, nativeRegisterViewModel2, NativeRegisterViewModel.class, "goToPreviousStep", "goToPreviousStep()V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$9$1);
                            objX9 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$9$1;
                        }
                        KFunction kFunction9 = (KFunction) objX9;
                        boolean zY10 = composer.y(nativeRegisterViewModel2);
                        Object objX10 = composer.x();
                        if (zY10 || objX10 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$10$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$10$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$10$1(0, nativeRegisterViewModel2, NativeRegisterViewModel.class, "onResendCodeClick", "onResendCodeClick()V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$10$1);
                            objX10 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$10$1;
                        }
                        KFunction kFunction10 = (KFunction) objX10;
                        boolean zY11 = composer.y(nativeRegisterViewModel2);
                        Object objX11 = composer.x();
                        if (zY11 || objX11 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$11$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$11$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$11$1(1, nativeRegisterViewModel2, NativeRegisterViewModel.class, "trackAddressEvent", "trackAddressEvent(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;)V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$11$1);
                            objX11 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$1$11$1;
                        }
                        KFunction kFunction11 = (KFunction) objX11;
                        Function3 function14 = (Function3) kFunction;
                        Function1 function15 = (Function1) kFunction2;
                        Function1 function16 = (Function1) kFunction3;
                        Function0 function17 = (Function0) kFunction4;
                        boolean zK = composer.K(mutableState4);
                        NavHostController navHostController2 = navHostController;
                        boolean zY12 = zK | composer.y(navHostController2) | composer.y(nativeRegisterViewModel2);
                        Object objX12 = composer.x();
                        if (zY12 || objX12 == composer$Companion$Empty$1) {
                            objX12 = new of0(navHostController2, nativeRegisterViewModel2, mutableState4, 0);
                            composer.q(objX12);
                        }
                        Function0 function18 = (Function0) objX12;
                        Function1 function19 = (Function1) kFunction5;
                        Function0 function20 = (Function0) kFunction6;
                        Function1 function21 = (Function1) kFunction7;
                        Function1 function22 = (Function1) kFunction8;
                        Function0 function23 = (Function0) kFunction9;
                        Function0 function24 = function13;
                        boolean zK2 = composer.K(function24) | composer.y(nativeRegisterViewModel2);
                        PagerState pagerState2 = pagerState;
                        boolean zK3 = zK2 | composer.K(pagerState2);
                        Object objX13 = composer.x();
                        if (zK3 || objX13 == composer$Companion$Empty$1) {
                            objX13 = new pp(function24, nativeRegisterViewModel2, pagerState2, 29);
                            composer.q(objX13);
                        }
                        Function0 function25 = (Function0) objX13;
                        Function0 function26 = (Function0) kFunction10;
                        boolean zY13 = composer.y(nativeRegisterViewModel2);
                        Object objX14 = composer.x();
                        if (zY13 || objX14 == composer$Companion$Empty$1) {
                            objX14 = new tb0(nativeRegisterViewModel2, 12);
                            composer.q(objX14);
                        }
                        NativeRegisterScreenKt.a(nativeRegisterViewState, snackbarHostState, nativeRegisterBottomSheetScreen, function8, function9, pagerState2, lVModalBottomSheetState2, function14, function15, function16, function17, function18, function10, function11, function19, function12, function20, function21, function22, function23, function25, function26, (Function1) objX14, (Function1) kFunction11, composer, (LVModalBottomSheetState.f48797e << 18) | 48);
                        return Unit.f71739a;
                    }
                });
                Map mapC2 = MapsKt.c();
                EmptyList emptyList2 = EmptyList.f71768b;
                ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(NativeRegisterRoutes.Register.class), mapC2, emptyList2, null, null, null, null, composableLambdaImpl3);
                ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(-1879662065, true, new Function4() { // from class: com.vuitton.android.presentation.screen.authentication.register.components.b
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj11;
                        Composer composer = (Composer) obj12;
                        ((Integer) obj13).getClass();
                        ((AnimatedContentScope) obj10).getClass();
                        navBackStackEntry.getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        ReflectionFactory reflectionFactory3 = Reflection.f71922a;
                        NativeRegisterRoutes.JusoSearch jusoSearch = (NativeRegisterRoutes.JusoSearch) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory3.b(NativeRegisterRoutes.JusoSearch.class));
                        NativeRegisterViewModel nativeRegisterViewModel2 = nativeRegisterViewModel;
                        MutableState mutableStateB = SnapshotStateKt.b(nativeRegisterViewModel2.getX(), composer);
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        AddressEditorViewModel addressEditorViewModel = (AddressEditorViewModel) ViewModelKt.a(reflectionFactory3.b(AddressEditorViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                        AddressAutocompleteViewModel addressAutocompleteViewModel2 = addressAutocompleteViewModel;
                        boolean zY = composer.y(addressAutocompleteViewModel2);
                        NavHostController navHostController2 = navHostController;
                        boolean zY2 = zY | composer.y(navHostController2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY2 || objX == composer$Companion$Empty$1) {
                            objX = new t30(addressAutocompleteViewModel2, navHostController2, 21);
                            composer.q(objX);
                        }
                        Function0 function14 = (Function0) objX;
                        String str = jusoSearch.f53861b;
                        String str2 = jusoSearch.f53862c;
                        AddressAutocompleteScreenContext addressAutocompleteScreenContext = AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS;
                        TrackingAuthOrigin trackingAuthOrigin = ((NativeRegisterViewState) mutableStateB.getF10755b()).o;
                        TrackingAuthEntryPoint trackingAuthEntryPoint = ((NativeRegisterViewState) mutableStateB.getF10755b()).p;
                        boolean zY3 = composer.y(nativeRegisterViewModel2);
                        Object objX2 = composer.x();
                        if (zY3 || objX2 == composer$Companion$Empty$1) {
                            NativeRegisterComposableKt$NativeRegisterComposable$7$1$2$2$1 nativeRegisterComposableKt$NativeRegisterComposable$7$1$2$2$1 = new NativeRegisterComposableKt$NativeRegisterComposable$7$1$2$2$1(1, nativeRegisterViewModel2, NativeRegisterViewModel.class, "trackAddressEvent", "trackAddressEvent(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;)V", 0);
                            composer.q(nativeRegisterComposableKt$NativeRegisterComposable$7$1$2$2$1);
                            objX2 = nativeRegisterComposableKt$NativeRegisterComposable$7$1$2$2$1;
                        }
                        AddressAutocompleteComposableKt.a(addressEditorViewModel, addressAutocompleteViewModel2, function14, str, str2, addressAutocompleteScreenContext, trackingAuthOrigin, trackingAuthEntryPoint, (Function1) ((KFunction) objX2), composer, ImageMetadata.EDGE_MODE, 0);
                        return Unit.f71739a;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder2, reflectionFactory2.b(NativeRegisterRoutes.JusoSearch.class), MapsKt.c(), emptyList2, null, null, null, null, composableLambdaImpl4);
                break;
            default:
                final NavHostController navHostController2 = (NavHostController) obj9;
                final Context context = (Context) obj8;
                final OptionsViewModel optionsViewModel = (OptionsViewModel) obj7;
                final ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj6;
                final NotificationsPreferencesViewModel notificationsPreferencesViewModel = (NotificationsPreferencesViewModel) obj5;
                final PreprodRouter preprodRouter = (PreprodRouter) obj4;
                final DispatchCountryViewModel dispatchCountryViewModel = (DispatchCountryViewModel) obj3;
                final AppInfoViewModel appInfoViewModel = (AppInfoViewModel) obj2;
                NavGraphBuilder navGraphBuilder3 = (NavGraphBuilder) obj;
                navGraphBuilder3.getClass();
                final Function0 function14 = this.d;
                final Function0 function15 = this.g;
                ComposableLambdaImpl composableLambdaImpl5 = new ComposableLambdaImpl(1205614555, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.e
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        StateFlow stateFlowB;
                        MutableState mutableStateC;
                        SavedStateHandle savedStateHandleA;
                        Composer composer = (Composer) obj12;
                        ((Integer) obj13).getClass();
                        ((AnimatedContentScope) obj10).getClass();
                        ((NavBackStackEntry) obj11).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        NavHostController navHostController3 = navHostController2;
                        NavBackStackEntry navBackStackEntryH = navHostController3.f18122b.h();
                        if (navBackStackEntryH == null || (savedStateHandleA = navBackStackEntryH.a()) == null) {
                            stateFlowB = null;
                        } else {
                            Boolean bool = Boolean.FALSE;
                            SavedStateHandleImpl savedStateHandleImpl = savedStateHandleA.f13501b;
                            boolean zContainsKey = savedStateHandleImpl.d.containsKey("featureFlagsChanged");
                            LinkedHashMap linkedHashMap = savedStateHandleImpl.f13571a;
                            if (zContainsKey) {
                                LinkedHashMap linkedHashMap2 = savedStateHandleImpl.d;
                                Object objA = linkedHashMap2.get("featureFlagsChanged");
                                if (objA == null) {
                                    if (!linkedHashMap.containsKey("featureFlagsChanged")) {
                                        linkedHashMap.put("featureFlagsChanged", bool);
                                    }
                                    objA = StateFlowKt.a(linkedHashMap.get("featureFlagsChanged"));
                                    linkedHashMap2.put("featureFlagsChanged", objA);
                                }
                                stateFlowB = FlowKt.b((MutableStateFlow) objA);
                            } else {
                                LinkedHashMap linkedHashMap3 = savedStateHandleImpl.f13573c;
                                Object objA2 = linkedHashMap3.get("featureFlagsChanged");
                                if (objA2 == null) {
                                    if (!linkedHashMap.containsKey("featureFlagsChanged")) {
                                        linkedHashMap.put("featureFlagsChanged", bool);
                                    }
                                    objA2 = StateFlowKt.a(linkedHashMap.get("featureFlagsChanged"));
                                    linkedHashMap3.put("featureFlagsChanged", objA2);
                                }
                                stateFlowB = FlowKt.b((MutableStateFlow) objA2);
                            }
                        }
                        final int i4 = 0;
                        if (stateFlowB == null) {
                            composer.L(1946914857);
                            composer.F();
                            mutableStateC = null;
                        } else {
                            composer.L(-1045574952);
                            mutableStateC = FlowExtKt.c(stateFlowB, null, composer, 0, 7);
                            composer.F();
                        }
                        Boolean bool2 = mutableStateC != null ? (Boolean) mutableStateC.getF10755b() : null;
                        boolean zK = composer.K(mutableStateC);
                        OptionsViewModel optionsViewModel2 = optionsViewModel;
                        boolean zY = zK | composer.y(optionsViewModel2) | composer.y(navBackStackEntryH);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new OptionsNavHostKt$OptionsNavHost$5$1$1$1$1(mutableStateC, optionsViewModel2, navBackStackEntryH, null);
                            composer.q(objX);
                        }
                        EffectsKt.e(composer, bool2, (Function2) objX);
                        final Context context2 = context;
                        boolean zY2 = composer.y(context2);
                        ManagedActivityResultLauncher managedActivityResultLauncher2 = managedActivityResultLauncher;
                        boolean zY3 = zY2 | composer.y(managedActivityResultLauncher2);
                        Object objX2 = composer.x();
                        final int i5 = 1;
                        if (zY3 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new sh0(context2, managedActivityResultLauncher2, 1);
                            composer.q(objX2);
                        }
                        Function0 function16 = (Function0) objX2;
                        NotificationsPreferencesViewModel notificationsPreferencesViewModel2 = notificationsPreferencesViewModel;
                        boolean zY4 = composer.y(notificationsPreferencesViewModel2) | composer.y(navHostController3);
                        Object objX3 = composer.x();
                        if (zY4 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new rh0(notificationsPreferencesViewModel2, navHostController3, 4);
                            composer.q(objX3);
                        }
                        Function0 function17 = (Function0) objX3;
                        boolean zY5 = composer.y(navHostController3);
                        Object objX4 = composer.x();
                        if (zY5 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new yj(navHostController3, 12);
                            composer.q(objX4);
                        }
                        Function0 function18 = (Function0) objX4;
                        boolean zY6 = composer.y(navHostController3);
                        Object objX5 = composer.x();
                        if (zY6 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new yj(navHostController3, 13);
                            composer.q(objX5);
                        }
                        Function0 function19 = (Function0) objX5;
                        final PreprodRouter preprodRouter2 = preprodRouter;
                        boolean zK2 = composer.K(preprodRouter2) | composer.y(context2);
                        Object objX6 = composer.x();
                        if (zK2 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new Function0() { // from class: th0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i4) {
                                        case 0:
                                            ContextExtKt.b(context2);
                                            preprodRouter2.getClass();
                                            break;
                                        case 1:
                                            preprodRouter2.getClass();
                                            context2.getClass();
                                            break;
                                        default:
                                            preprodRouter2.getClass();
                                            context2.getClass();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer.q(objX6);
                        }
                        Function0 function20 = (Function0) objX6;
                        boolean zK3 = composer.K(preprodRouter2) | composer.y(context2);
                        Object objX7 = composer.x();
                        if (zK3 || objX7 == composer$Companion$Empty$1) {
                            objX7 = new Function0() { // from class: th0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i5) {
                                        case 0:
                                            ContextExtKt.b(context2);
                                            preprodRouter2.getClass();
                                            break;
                                        case 1:
                                            preprodRouter2.getClass();
                                            context2.getClass();
                                            break;
                                        default:
                                            preprodRouter2.getClass();
                                            context2.getClass();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer.q(objX7);
                        }
                        Function0 function21 = (Function0) objX7;
                        boolean zK4 = composer.K(preprodRouter2) | composer.y(context2);
                        Object objX8 = composer.x();
                        if (zK4 || objX8 == composer$Companion$Empty$1) {
                            final int i6 = 2;
                            objX8 = new Function0() { // from class: th0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i6) {
                                        case 0:
                                            ContextExtKt.b(context2);
                                            preprodRouter2.getClass();
                                            break;
                                        case 1:
                                            preprodRouter2.getClass();
                                            context2.getClass();
                                            break;
                                        default:
                                            preprodRouter2.getClass();
                                            context2.getClass();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer.q(objX8);
                        }
                        OptionsComposableKt.b(optionsViewModel2, navHostController3, function14, function16, function15, function17, function18, function19, function20, function21, (Function0) objX8, composer, 0);
                        return Unit.f71739a;
                    }
                });
                Map mapC3 = MapsKt.c();
                EmptyList emptyList3 = EmptyList.f71768b;
                ReflectionFactory reflectionFactory3 = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OptionsRoutes.Menu.class), mapC3, emptyList3, null, null, null, null, composableLambdaImpl5);
                final Function1 function16 = this.f79746c;
                final int i4 = 0;
                ComposableLambdaImpl composableLambdaImpl6 = new ComposableLambdaImpl(-1033442734, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.f
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        int i5 = i4;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        switch (i5) {
                            case 0:
                                Composer composer = (Composer) obj12;
                                defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                NavHostController navHostController3 = navHostController2;
                                boolean zY = composer.y(navHostController3);
                                Object objX = composer.x();
                                if (zY || objX == composer$Companion$Empty$1) {
                                    OptionsNavHostKt$OptionsNavHost$5$1$2$1$1 optionsNavHostKt$OptionsNavHost$5$1$2$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$2$1$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer.q(optionsNavHostKt$OptionsNavHost$5$1$2$1$1);
                                    objX = optionsNavHostKt$OptionsNavHost$5$1$2$1$1;
                                }
                                LegalTextComposableKt.a(null, true, (Function0) objX, function16, composer, 48);
                                break;
                            default:
                                Composer composer2 = (Composer) obj12;
                                defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                NavHostController navHostController4 = navHostController2;
                                boolean zY2 = composer2.y(navHostController4);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    OptionsNavHostKt$OptionsNavHost$5$1$3$1$1 optionsNavHostKt$OptionsNavHost$5$1$3$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$3$1$1(0, navHostController4, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer2.q(optionsNavHostKt$OptionsNavHost$5$1$3$1$1);
                                    objX2 = optionsNavHostKt$OptionsNavHost$5$1$3$1$1;
                                }
                                LegalTextComposableKt.a(null, false, (Function0) objX2, function16, composer2, 48);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OptionsRoutes.LegalMentions.class), MapsKt.c(), emptyList3, null, null, null, null, composableLambdaImpl6);
                ComposableLambdaImpl composableLambdaImpl7 = new ComposableLambdaImpl(-1262232685, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.f
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        int i5 = i3;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        switch (i5) {
                            case 0:
                                Composer composer = (Composer) obj12;
                                defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                NavHostController navHostController3 = navHostController2;
                                boolean zY = composer.y(navHostController3);
                                Object objX = composer.x();
                                if (zY || objX == composer$Companion$Empty$1) {
                                    OptionsNavHostKt$OptionsNavHost$5$1$2$1$1 optionsNavHostKt$OptionsNavHost$5$1$2$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$2$1$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer.q(optionsNavHostKt$OptionsNavHost$5$1$2$1$1);
                                    objX = optionsNavHostKt$OptionsNavHost$5$1$2$1$1;
                                }
                                LegalTextComposableKt.a(null, true, (Function0) objX, function16, composer, 48);
                                break;
                            default:
                                Composer composer2 = (Composer) obj12;
                                defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                NavHostController navHostController4 = navHostController2;
                                boolean zY2 = composer2.y(navHostController4);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    OptionsNavHostKt$OptionsNavHost$5$1$3$1$1 optionsNavHostKt$OptionsNavHost$5$1$3$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$3$1$1(0, navHostController4, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer2.q(optionsNavHostKt$OptionsNavHost$5$1$3$1$1);
                                    objX2 = optionsNavHostKt$OptionsNavHost$5$1$3$1$1;
                                }
                                LegalTextComposableKt.a(null, false, (Function0) objX2, function16, composer2, 48);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OptionsRoutes.PrivacyPolicy.class), MapsKt.c(), emptyList3, null, null, null, null, composableLambdaImpl7);
                ComposableLambdaImpl composableLambdaImpl8 = new ComposableLambdaImpl(-1491022636, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.b
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        int i5 = i4;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        Object obj14 = dispatchCountryViewModel;
                        switch (i5) {
                            case 0:
                                DispatchCountryViewModel dispatchCountryViewModel2 = (DispatchCountryViewModel) obj14;
                                Composer composer = (Composer) obj12;
                                defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                NavHostController navHostController3 = navHostController2;
                                boolean zY = composer.y(navHostController3);
                                Object objX = composer.x();
                                if (zY || objX == composer$Companion$Empty$1) {
                                    OptionsNavHostKt$OptionsNavHost$5$1$4$1$1 optionsNavHostKt$OptionsNavHost$5$1$4$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$4$1$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer.q(optionsNavHostKt$OptionsNavHost$5$1$4$1$1);
                                    objX = optionsNavHostKt$OptionsNavHost$5$1$4$1$1;
                                }
                                DispatchComposableKt.a(dispatchCountryViewModel2, (Function0) objX, composer, 0);
                                return Unit.f71739a;
                            default:
                                Function0 function17 = (Function0) obj14;
                                Composer composer2 = (Composer) obj12;
                                defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                AccessibilityPreferencesViewModel accessibilityPreferencesViewModel = (AccessibilityPreferencesViewModel) ViewModelKt.a(Reflection.f71922a.b(AccessibilityPreferencesViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                NavHostController navHostController4 = navHostController2;
                                boolean zY2 = composer2.y(navHostController4);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    OptionsNavHostKt$OptionsNavHost$5$1$7$1$1 optionsNavHostKt$OptionsNavHost$5$1$7$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$7$1$1(0, navHostController4, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer2.q(optionsNavHostKt$OptionsNavHost$5$1$7$1$1);
                                    objX2 = optionsNavHostKt$OptionsNavHost$5$1$7$1$1;
                                }
                                AccessibilityPreferencesComposableKt.a(accessibilityPreferencesViewModel, function17, (Function0) objX2, composer2, 0);
                                return Unit.f71739a;
                        }
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OptionsRoutes.Dispatch.class), MapsKt.c(), emptyList3, null, null, null, null, composableLambdaImpl8);
                final Function1 function17 = this.f79749h;
                ComposableLambdaImpl composableLambdaImpl9 = new ComposableLambdaImpl(-1719812587, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.c
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        Composer composer = (Composer) obj12;
                        defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        NavHostController navHostController3 = navHostController2;
                        boolean zY = composer.y(navHostController3);
                        Object objX = composer.x();
                        if (zY || objX == Composer.Companion.f7939a) {
                            OptionsNavHostKt$OptionsNavHost$5$1$5$1$1 optionsNavHostKt$OptionsNavHost$5$1$5$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$5$1$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                            composer.q(optionsNavHostKt$OptionsNavHost$5$1$5$1$1);
                            objX = optionsNavHostKt$OptionsNavHost$5$1$5$1$1;
                        }
                        AppInfoComposableKt.a(appInfoViewModel, (Function0) objX, function17, composer, 0);
                        return Unit.f71739a;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OptionsRoutes.AppInfo.class), MapsKt.c(), emptyList3, null, null, null, null, composableLambdaImpl9);
                final Function0 function18 = this.f79750i;
                ComposableLambdaImpl composableLambdaImpl10 = new ComposableLambdaImpl(-1948602538, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.d
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        Composer composer = (Composer) obj12;
                        ((Integer) obj13).getClass();
                        ((AnimatedContentScope) obj10).getClass();
                        ((NavBackStackEntry) obj11).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        NavHostController navHostController3 = navHostController2;
                        boolean zY = composer.y(navHostController3);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new yj(navHostController3, 11);
                            composer.q(objX);
                        }
                        Function0 function19 = (Function0) objX;
                        NotificationsPreferencesViewModel notificationsPreferencesViewModel2 = notificationsPreferencesViewModel;
                        boolean zY2 = composer.y(notificationsPreferencesViewModel2);
                        Function0 function20 = function18;
                        boolean zK = zY2 | composer.K(function20);
                        Object objX2 = composer.x();
                        if (zK || objX2 == composer$Companion$Empty$1) {
                            objX2 = new rh0(notificationsPreferencesViewModel2, function20, 3);
                            composer.q(objX2);
                        }
                        Function0 function21 = (Function0) objX2;
                        boolean zY3 = composer.y(navHostController3);
                        Object objX3 = composer.x();
                        if (zY3 || objX3 == composer$Companion$Empty$1) {
                            OptionsNavHostKt$OptionsNavHost$5$1$6$3$1 optionsNavHostKt$OptionsNavHost$5$1$6$3$1 = new OptionsNavHostKt$OptionsNavHost$5$1$6$3$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                            composer.q(optionsNavHostKt$OptionsNavHost$5$1$6$3$1);
                            objX3 = optionsNavHostKt$OptionsNavHost$5$1$6$3$1;
                        }
                        Function0 function22 = (Function0) objX3;
                        Context context2 = context;
                        boolean zY4 = composer.y(context2);
                        ManagedActivityResultLauncher managedActivityResultLauncher2 = managedActivityResultLauncher;
                        boolean zY5 = zY4 | composer.y(managedActivityResultLauncher2);
                        Object objX4 = composer.x();
                        if (zY5 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new sh0(context2, managedActivityResultLauncher2, 0);
                            composer.q(objX4);
                        }
                        NotificationsPreferencesComposableKt.b(notificationsPreferencesViewModel2, function19, function21, function22, (Function0) objX4, false, composer, 0, 32);
                        return Unit.f71739a;
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OptionsRoutes.Notifications.class), MapsKt.c(), emptyList3, null, null, null, null, composableLambdaImpl10);
                final Function0 function19 = this.f79751j;
                ComposableLambdaImpl composableLambdaImpl11 = new ComposableLambdaImpl(2117574807, true, new Function4() { // from class: com.vuitton.android.presentation.screen.options.b
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj10, Object obj11, Object obj12, Object obj13) {
                        int i5 = i3;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        Object obj14 = function19;
                        switch (i5) {
                            case 0:
                                DispatchCountryViewModel dispatchCountryViewModel2 = (DispatchCountryViewModel) obj14;
                                Composer composer = (Composer) obj12;
                                defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                NavHostController navHostController3 = navHostController2;
                                boolean zY = composer.y(navHostController3);
                                Object objX = composer.x();
                                if (zY || objX == composer$Companion$Empty$1) {
                                    OptionsNavHostKt$OptionsNavHost$5$1$4$1$1 optionsNavHostKt$OptionsNavHost$5$1$4$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$4$1$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer.q(optionsNavHostKt$OptionsNavHost$5$1$4$1$1);
                                    objX = optionsNavHostKt$OptionsNavHost$5$1$4$1$1;
                                }
                                DispatchComposableKt.a(dispatchCountryViewModel2, (Function0) objX, composer, 0);
                                return Unit.f71739a;
                            default:
                                Function0 function110 = (Function0) obj14;
                                Composer composer2 = (Composer) obj12;
                                defpackage.a.x((Integer) obj13, (AnimatedContentScope) obj10, (NavBackStackEntry) obj11);
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                AccessibilityPreferencesViewModel accessibilityPreferencesViewModel = (AccessibilityPreferencesViewModel) ViewModelKt.a(Reflection.f71922a.b(AccessibilityPreferencesViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                NavHostController navHostController4 = navHostController2;
                                boolean zY2 = composer2.y(navHostController4);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    OptionsNavHostKt$OptionsNavHost$5$1$7$1$1 optionsNavHostKt$OptionsNavHost$5$1$7$1$1 = new OptionsNavHostKt$OptionsNavHost$5$1$7$1$1(0, navHostController4, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer2.q(optionsNavHostKt$OptionsNavHost$5$1$7$1$1);
                                    objX2 = optionsNavHostKt$OptionsNavHost$5$1$7$1$1;
                                }
                                AccessibilityPreferencesComposableKt.a(accessibilityPreferencesViewModel, function110, (Function0) objX2, composer2, 0);
                                return Unit.f71739a;
                        }
                    }
                });
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory3.b(OptionsRoutes.Accessibility.class), MapsKt.c(), emptyList3, null, null, null, null, composableLambdaImpl11);
                navHostController2.getClass();
                context.getClass();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ s9(NativeRegisterViewModel nativeRegisterViewModel, SnackbarHostState snackbarHostState, Function1 function1, Function0 function0, PagerState pagerState, LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, NavHostController navHostController, Function0 function2, Function1 function3, Function0 function4, Function0 function5, MutableState mutableState2, AddressAutocompleteViewModel addressAutocompleteViewModel) {
        this.f79752k = nativeRegisterViewModel;
        this.l = snackbarHostState;
        this.f79746c = function1;
        this.d = function0;
        this.m = pagerState;
        this.f79747e = lVModalBottomSheetState;
        this.f79748f = mutableState;
        this.n = navHostController;
        this.g = function2;
        this.f79749h = function3;
        this.f79750i = function4;
        this.f79751j = function5;
        this.o = mutableState2;
        this.p = addressAutocompleteViewModel;
    }

    public /* synthetic */ s9(AssessmentViewState assessmentViewState, CoroutineScope coroutineScope, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, Function0 function6, Function0 function7, LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, Function0 function8, Function0 function9) {
        this.f79752k = assessmentViewState;
        this.l = coroutineScope;
        this.f79746c = function1;
        this.f79749h = function2;
        this.m = function3;
        this.n = function4;
        this.o = function5;
        this.d = function0;
        this.g = function6;
        this.f79750i = function7;
        this.f79747e = lVModalBottomSheetState;
        this.f79748f = mutableState;
        this.f79751j = function8;
        this.p = function9;
    }
}

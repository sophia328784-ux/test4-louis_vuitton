package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionDetailRoutes;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorComposableKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookComposableKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorLookViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import defpackage.cl0;
import defpackage.jm0;
import defpackage.k3;
import defpackage.le;
import defpackage.md;
import defpackage.n00;
import defpackage.pj0;
import defpackage.qn0;
import defpackage.tb0;
import defpackage.x60;
import defpackage.xg0;
import java.util.Map;
import kotlin.Metadata;
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
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;", "curationAdvisorViewState", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;", "productsState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState;", "lookViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorNavHostKt {
    public static final void a(final PersonalSelectionsCurationAdvisorViewModel personalSelectionsCurationAdvisorViewModel, final Function0 function0, final Function1 function1, final Function1 function2, final Function3 function3, final Function0 function4, final Function0 function5, final Function1 function6, final Function1 function7, Function1 function8, Function1 function9, final Function1 function10, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z;
        GapComposer gapComposer2;
        personalSelectionsCurationAdvisorViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        GapComposer gapComposerH = composer.h(1744142300);
        int i3 = i2 | (gapComposerH.K(personalSelectionsCurationAdvisorViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536) | (gapComposerH.y(function5) ? 1048576 : 524288) | (gapComposerH.y(function6) ? 8388608 : 4194304) | (gapComposerH.y(function7) ? 67108864 : 33554432) | (gapComposerH.y(function8) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.y(function9) ? (char) 4 : (char) 2) | (gapComposerH.y(function10) ? ' ' : (char) 16);
        if (gapComposerH.p(i3 & 1, ((306783379 & i3) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final MutableState mutableStateB = SnapshotStateKt.b(personalSelectionsCurationAdvisorViewModel.getU(), gapComposerH);
            final MutableState mutableStateB2 = SnapshotStateKt.b(personalSelectionsCurationAdvisorViewModel.getW(), gapComposerH);
            final MutableState mutableStateA = SnapshotStateKt.a(personalSelectionsCurationAdvisorViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            final SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            final AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
            if (viewModelStoreOwnerA == null) {
                md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
            SocialLoginViewModelImpl socialLoginViewModelImpl = (SocialLoginViewModelImpl) ViewModelKt.a(Reflection.f71922a.b(SocialLoginViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, gapComposerH), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
            Unit unit = Unit.f71739a;
            int i5 = i3 & 14;
            boolean zY = (i5 == 4) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$1$1(personalSelectionsCurationAdvisorViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean z2 = i5 == 4;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new tb0(personalSelectionsCurationAdvisorViewModel, 26);
                gapComposerH.q(objX3);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX3, gapComposerH, 0);
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.PERSONAL_SELECTIONS;
            boolean zY2 = ((1879048192 & i3) == 536870912) | gapComposerH.y(managedActivityResultLauncherA);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new qn0(function8, managedActivityResultLauncherA, 0);
                gapComposerH.q(objX4);
            }
            Function0 function11 = (Function0) objX4;
            boolean zY3 = ((i4 & 14) == 4) | gapComposerH.y(managedActivityResultLauncherA);
            Object objX5 = gapComposerH.x();
            if (zY3 || objX5 == composer$Companion$Empty$1) {
                z = true;
                objX5 = new qn0(function9, managedActivityResultLauncherA, 1);
                gapComposerH.q(objX5);
            } else {
                z = true;
            }
            Function0 function12 = (Function0) objX5;
            boolean z3 = i5 != 4 ? false : z;
            Object objX6 = gapComposerH.x();
            if (z3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new x60(personalSelectionsCurationAdvisorViewModel, 29);
                gapComposerH.q(objX6);
            }
            final SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(trackingAuthOrigin, function11, function12, (Function0) objX6, socialLoginViewModelImpl, gapComposerH, 6, 0);
            PersonalSelectionDetailRoutes.Detail detail = PersonalSelectionDetailRoutes.Detail.INSTANCE;
            boolean zK = gapComposerH.K(mutableStateB) | gapComposerH.K(mutableStateB2) | gapComposerH.K(mutableStateA) | ((57344 & i3) == 16384) | ((458752 & i3) == 131072) | ((3670016 & i3) == 1048576) | ((i3 & 112) == 32) | (i5 == 4) | ((i3 & 7168) == 2048) | gapComposerH.K(socialLoginBottomSheetStateB) | ((i3 & 896) == 256) | gapComposerH.y(navHostControllerA) | ((29360128 & i3) == 8388608) | ((i3 & 234881024) == 67108864) | gapComposerH.y(appsFlyerUiTracker) | ((i4 & 112) == 32);
            Object objX7 = gapComposerH.x();
            if (zK || objX7 == composer$Companion$Empty$1) {
                Function1 function13 = new Function1() { // from class: rn0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                        navGraphBuilder.getClass();
                        final Function3 function14 = function3;
                        final Function0 function15 = function4;
                        final Function0 function16 = function5;
                        final Function0 function17 = function0;
                        final PersonalSelectionsCurationAdvisorViewModel personalSelectionsCurationAdvisorViewModel2 = personalSelectionsCurationAdvisorViewModel;
                        final Function1 function18 = function2;
                        final SocialLoginBottomSheetState socialLoginBottomSheetState = socialLoginBottomSheetStateB;
                        final Function1 function19 = function1;
                        final NavHostController navHostController = navHostControllerA;
                        final Function1 function20 = function6;
                        final Function1 function21 = function7;
                        final State state = mutableStateB;
                        final State state2 = mutableStateB2;
                        final AppsFlyerUiTracker appsFlyerUiTracker2 = appsFlyerUiTracker;
                        final State state3 = mutableStateA;
                        ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1186003421, true, new Function4() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.a
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                Function0 function22;
                                Function0 function23;
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                State state4 = state;
                                PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState = (PersonalSelectionsCurationAdvisorViewState) state4.getF10755b();
                                State state5 = state2;
                                PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState = (PersonalSelectionsCurationAdvisorProductState) state5.getF10755b();
                                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) state3.getF10755b();
                                final PersonalSelectionsCurationAdvisorViewModel personalSelectionsCurationAdvisorViewModel3 = personalSelectionsCurationAdvisorViewModel2;
                                boolean zY4 = composer2.y(personalSelectionsCurationAdvisorViewModel3);
                                Object objX8 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY4 || objX8 == composer$Companion$Empty$2) {
                                    PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$1$1 personalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$1$1 = new PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$1$1(0, personalSelectionsCurationAdvisorViewModel3, PersonalSelectionsCurationAdvisorViewModel.class, "getPersonalSelection", "getPersonalSelection()V", 0);
                                    composer2.q(personalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$1$1);
                                    objX8 = personalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$1$1;
                                }
                                Function0 function24 = (Function0) ((KFunction) objX8);
                                Function1 function25 = function18;
                                boolean zK2 = composer2.K(function25) | composer2.y(personalSelectionsCurationAdvisorViewModel3);
                                Object objX9 = composer2.x();
                                if (zK2 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new jm0(function25, personalSelectionsCurationAdvisorViewModel3, 7);
                                    composer2.q(objX9);
                                }
                                Function0 function26 = (Function0) objX9;
                                SocialLoginBottomSheetState socialLoginBottomSheetState2 = socialLoginBottomSheetState;
                                Function0 function27 = socialLoginBottomSheetState2.f54159i;
                                Function0 function28 = socialLoginBottomSheetState2.f54160j;
                                boolean zY5 = composer2.y(personalSelectionsCurationAdvisorViewModel3);
                                Object objX10 = composer2.x();
                                if (zY5 || objX10 == composer$Companion$Empty$2) {
                                    objX10 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$3$1
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj6) {
                                            String str = ((SkuIdUiModel) obj6).f61764b;
                                            str.getClass();
                                            personalSelectionsCurationAdvisorViewModel3.u3(str);
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX10);
                                }
                                Function1 function29 = (Function1) objX10;
                                boolean zY6 = composer2.y(personalSelectionsCurationAdvisorViewModel3);
                                Object objX11 = composer2.x();
                                if (zY6 || objX11 == composer$Companion$Empty$2) {
                                    function22 = function28;
                                    function23 = function27;
                                    PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$4$1 personalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$4$1 = new PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$4$1(1, personalSelectionsCurationAdvisorViewModel3, PersonalSelectionsCurationAdvisorViewModel.class, "deleteInteraction", "deleteInteraction-1Zqi3gk(Ljava/lang/String;)V", 0);
                                    composer2.q(personalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$4$1);
                                    objX11 = personalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$4$1;
                                } else {
                                    function22 = function28;
                                    function23 = function27;
                                }
                                Function1 function30 = (Function1) ((KFunction) objX11);
                                NavHostController navHostController2 = navHostController;
                                boolean zY7 = composer2.y(navHostController2) | composer2.y(personalSelectionsCurationAdvisorViewModel3);
                                Object objX12 = composer2.x();
                                if (zY7 || objX12 == composer$Companion$Empty$2) {
                                    objX12 = new xg0(navHostController2, personalSelectionsCurationAdvisorViewModel3);
                                    composer2.q(objX12);
                                }
                                Function1 function31 = (Function1) objX12;
                                boolean zK3 = composer2.K(state4) | composer2.K(state5);
                                AppsFlyerUiTracker appsFlyerUiTracker3 = appsFlyerUiTracker2;
                                boolean zY8 = zK3 | composer2.y(appsFlyerUiTracker3);
                                Object objX13 = composer2.x();
                                if (zY8 || objX13 == composer$Companion$Empty$2) {
                                    objX13 = new cl0(appsFlyerUiTracker3, state4, state5);
                                    composer2.q(objX13);
                                }
                                Function0 function32 = function22;
                                Function0 function33 = function23;
                                PersonalSelectionsCurationAdvisorComposableKt.a(personalSelectionsCurationAdvisorViewState, personalSelectionsCurationAdvisorProductState, contactUsUiModel, function14, function15, function16, function17, function24, function26, function33, function32, function19, function29, function30, function31, function20, function21, (Function1) objX13, composer2, 0);
                                return Unit.f71739a;
                            }
                        });
                        Map mapC = MapsKt.c();
                        EmptyList emptyList = EmptyList.f71768b;
                        ReflectionFactory reflectionFactory = Reflection.f71922a;
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(PersonalSelectionDetailRoutes.Detail.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                        final SnackbarHostState snackbarHostState2 = snackbarHostState;
                        final Function1 function22 = function10;
                        ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(255184148, true, new Function4() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.b
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                MutableState mutableStateC = FlowExtKt.c(personalSelectionsCurationAdvisorViewModel2.getY(), null, composer2, 0, 7);
                                PersonalSelectionsCurationAdvisorLookViewState personalSelectionsCurationAdvisorLookViewState = (PersonalSelectionsCurationAdvisorLookViewState) mutableStateC.getF10755b();
                                State state4 = state;
                                PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState = (PersonalSelectionsCurationAdvisorViewState) state4.getF10755b();
                                NavHostController navHostController2 = navHostController;
                                boolean zY4 = composer2.y(navHostController2);
                                Object objX8 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$2$1$1(0, navHostController2, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer2.q(objX8);
                                }
                                Function0 function23 = (Function0) objX8;
                                Function1 function24 = function20;
                                boolean zK2 = composer2.K(function24);
                                Function1 function25 = function21;
                                boolean zK3 = zK2 | composer2.K(function25);
                                Object objX9 = composer2.x();
                                if (zK3 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new pj0(function24, function25, 3);
                                    composer2.q(objX9);
                                }
                                Function1 function26 = (Function1) objX9;
                                AppsFlyerUiTracker appsFlyerUiTracker3 = appsFlyerUiTracker2;
                                boolean zY5 = composer2.y(appsFlyerUiTracker3) | composer2.K(mutableStateC) | composer2.K(state4);
                                Function1 function27 = function19;
                                boolean zK4 = zY5 | composer2.K(function27);
                                Object objX10 = composer2.x();
                                if (zK4 || objX10 == composer$Companion$Empty$2) {
                                    k3 k3Var = new k3(appsFlyerUiTracker3, function27, mutableStateC, state4, 26);
                                    composer2.q(k3Var);
                                    objX10 = k3Var;
                                }
                                PersonalSelectionsCurationAdvisorLookComposableKt.a(personalSelectionsCurationAdvisorLookViewState, personalSelectionsCurationAdvisorViewState, snackbarHostState2, function23, function26, (Function1) objX10, function22, composer2, KyberEngine.KyberPolyBytes);
                                return Unit.f71739a;
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(PersonalSelectionDetailRoutes.Look.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                        return Unit.f71739a;
                    }
                };
                gapComposer2 = gapComposerH;
                gapComposer2.q(function13);
                objX7 = function13;
            } else {
                gapComposer2 = gapComposerH;
            }
            GapComposer gapComposer3 = gapComposer2;
            NavHostKt.b(navHostControllerA, detail, null, null, null, null, null, null, null, (Function1) objX7, gapComposer3, 48, 2044);
            gapComposer = gapComposer3;
            SocialLoginBottomSheetKt.a(socialLoginBottomSheetStateB, gapComposer, 0);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new le(personalSelectionsCurationAdvisorViewModel, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, i2);
        }
    }
}

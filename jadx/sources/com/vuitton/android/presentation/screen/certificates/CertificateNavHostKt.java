package com.vuitton.android.presentation.screen.certificates;

import androidx.compose.animation.AnimatedContentScope;
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
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryKt;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.capucine.CertificateCapucineComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.transfer.CertificateTransferComposableKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateViewState;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import defpackage.jh;
import defpackage.md;
import defpackage.sl;
import defpackage.tf;
import defpackage.tl;
import defpackage.vg;
import defpackage.w1;
import defpackage.yj;
import defpackage.zl;
import java.util.ArrayList;
import java.util.List;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateNavHostKt {
    public static final void a(final NavHostController navHostController, final CertificateViewModel certificateViewModel, boolean z, final Function0 function0, final Function2 function2, final Function1 function1, final Function1 function3, final Function0 function4, final Function3 function5, final Function0 function6, final Function1 function7, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        navHostController.getClass();
        certificateViewModel.getClass();
        function0.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(1282236007);
        int i4 = i2 | (gapComposerH.y(navHostController) ? 4 : 2) | (gapComposerH.K(certificateViewModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        char c2 = gapComposerH.y(function7) ? (char) 4 : (char) 2;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (c2 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(certificateViewModel.getP(), gapComposerH);
            Unit unit = Unit.f71739a;
            boolean zY = ((i4 & 896) == 256) | gapComposerH.y(navHostController);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new CertificateNavHostKt$CertificateNavHost$1$1(z, navHostController, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            CertificateRoute.List list = CertificateRoute.List.INSTANCE;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new jh(22);
                gapComposerH.q(objX2);
            }
            Function1 function8 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new jh(23);
                gapComposerH.q(objX3);
            }
            Function1 function9 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new jh(24);
                gapComposerH.q(objX4);
            }
            Function1 function10 = (Function1) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new jh(25);
                gapComposerH.q(objX5);
            }
            Function1 function11 = (Function1) objX5;
            boolean zY2 = ((57344 & i4) == 16384) | ((i4 & 112) == 32) | gapComposerH.y(navHostController) | ((458752 & i4) == 131072) | ((3670016 & i4) == 1048576) | ((i4 & 7168) == 2048) | ((234881024 & i4) == 67108864) | ((1879048192 & i4) == 536870912) | ((29360128 & i4) == 8388608) | gapComposerH.K(mutableStateB) | ((c2 & 14) == 4);
            Object objX6 = gapComposerH.x();
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                i3 = i4;
                Function1 function12 = new Function1() { // from class: yl
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                        navGraphBuilder.getClass();
                        final Function2 function13 = function2;
                        final CertificateViewModel certificateViewModel2 = certificateViewModel;
                        final NavHostController navHostController2 = navHostController;
                        Function1 function14 = function1;
                        Function1 function15 = function3;
                        Function0 function16 = function0;
                        final Function3 function17 = function5;
                        final Function0 function18 = function6;
                        final int i5 = 1;
                        ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1233240070, true, new e3(function13, certificateViewModel2, navHostController2, function14, function15, function16, function17, function18));
                        Map mapC = MapsKt.c();
                        EmptyList emptyList = EmptyList.f71768b;
                        ReflectionFactory reflectionFactory = Reflection.f71922a;
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CertificateRoute.List.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                        final int i6 = 0;
                        ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-1070187473, true, new Function4() { // from class: com.vuitton.android.presentation.screen.certificates.e
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                SavedStateHandle savedStateHandleA;
                                CertificateUiModel certificateUiModel;
                                int i7 = i6;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                Function2 function19 = function13;
                                switch (i7) {
                                    case 0:
                                        Composer composer2 = (Composer) obj4;
                                        ((Integer) obj5).getClass();
                                        ((AnimatedContentScope) obj2).getClass();
                                        ((NavBackStackEntry) obj3).getClass();
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        SystemIcons.f43533b.getClass();
                                        boolean z2 = SystemIcons.f43534c;
                                        function19.invoke(new SystemIcons(z2), new SystemIcons(z2));
                                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                        if (viewModelStoreOwnerA == null) {
                                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                            return null;
                                        }
                                        AddCertificateViewModel addCertificateViewModel = (AddCertificateViewModel) ViewModelKt.a(Reflection.f71922a.b(AddCertificateViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                        SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) composer2.k(CompositionLocalsKt.r);
                                        boolean zK = composer2.K(softwareKeyboardController) | composer2.y(addCertificateViewModel);
                                        Object objX7 = composer2.x();
                                        if (zK || objX7 == composer$Companion$Empty$2) {
                                            objX7 = new vg(softwareKeyboardController, addCertificateViewModel, 10);
                                            composer2.q(objX7);
                                        }
                                        Function1 function20 = (Function1) objX7;
                                        NavHostController navHostController3 = navHostController2;
                                        boolean zY3 = composer2.y(navHostController3);
                                        Object objX8 = composer2.x();
                                        if (zY3 || objX8 == composer$Companion$Empty$2) {
                                            objX8 = new yj(navHostController3, 4);
                                            composer2.q(objX8);
                                        }
                                        Function0 function21 = (Function0) objX8;
                                        boolean zY4 = composer2.y(navHostController3);
                                        Object objX9 = composer2.x();
                                        if (zY4 || objX9 == composer$Companion$Empty$2) {
                                            CertificateNavHostKt$CertificateNavHost$6$1$2$3$1 certificateNavHostKt$CertificateNavHost$6$1$2$3$1 = new CertificateNavHostKt$CertificateNavHost$6$1$2$3$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                            composer2.q(certificateNavHostKt$CertificateNavHost$6$1$2$3$1);
                                            objX9 = certificateNavHostKt$CertificateNavHost$6$1$2$3$1;
                                        }
                                        AddCertificateComposableKt.c(addCertificateViewModel, function20, function21, (Function0) objX9, composer2, 0);
                                        return Unit.f71739a;
                                    default:
                                        Composer composer3 = (Composer) obj4;
                                        ((Integer) obj5).getClass();
                                        ((AnimatedContentScope) obj2).getClass();
                                        ((NavBackStackEntry) obj3).getClass();
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        SystemIcons.f43533b.getClass();
                                        boolean z3 = SystemIcons.f43534c;
                                        function19.invoke(new SystemIcons(z3), new SystemIcons(z3));
                                        ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer3);
                                        if (viewModelStoreOwnerA2 == null) {
                                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                            return null;
                                        }
                                        CertificateTransferViewModel certificateTransferViewModel = (CertificateTransferViewModel) ViewModelKt.a(Reflection.f71922a.b(CertificateTransferViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer3), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer3);
                                        NavHostController navHostController4 = navHostController2;
                                        NavBackStackEntry navBackStackEntryB = navHostController4.b();
                                        if (navBackStackEntryB != null && (savedStateHandleA = navBackStackEntryB.a()) != null && (certificateUiModel = (CertificateUiModel) savedStateHandleA.a("certificate")) != null) {
                                            certificateTransferViewModel.S7(certificateUiModel);
                                        }
                                        boolean zY5 = composer3.y(navHostController4);
                                        Object objX10 = composer3.x();
                                        if (zY5 || objX10 == composer$Companion$Empty$2) {
                                            CertificateNavHostKt$CertificateNavHost$6$1$4$2$1 certificateNavHostKt$CertificateNavHost$6$1$4$2$1 = new CertificateNavHostKt$CertificateNavHost$6$1$4$2$1(0, navHostController4, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                            composer3.q(certificateNavHostKt$CertificateNavHost$6$1$4$2$1);
                                            objX10 = certificateNavHostKt$CertificateNavHost$6$1$4$2$1;
                                        }
                                        Function0 function22 = (Function0) objX10;
                                        boolean zY6 = composer3.y(navHostController4);
                                        Object objX11 = composer3.x();
                                        if (zY6 || objX11 == composer$Companion$Empty$2) {
                                            objX11 = new tl(navHostController4, 0);
                                            composer3.q(objX11);
                                        }
                                        CertificateTransferComposableKt.a(certificateTransferViewModel, function22, (Function2) objX11, composer3, 0);
                                        return Unit.f71739a;
                                }
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CertificateRoute.Add.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                        ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(1580831054, true, new s8(function13, certificateViewModel2, navHostController2, 5));
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CertificateRoute.AddConfirmation.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl3);
                        ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(-63117715, true, new Function4() { // from class: com.vuitton.android.presentation.screen.certificates.e
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                SavedStateHandle savedStateHandleA;
                                CertificateUiModel certificateUiModel;
                                int i7 = i5;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                Function2 function19 = function13;
                                switch (i7) {
                                    case 0:
                                        Composer composer2 = (Composer) obj4;
                                        ((Integer) obj5).getClass();
                                        ((AnimatedContentScope) obj2).getClass();
                                        ((NavBackStackEntry) obj3).getClass();
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        SystemIcons.f43533b.getClass();
                                        boolean z2 = SystemIcons.f43534c;
                                        function19.invoke(new SystemIcons(z2), new SystemIcons(z2));
                                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                        if (viewModelStoreOwnerA == null) {
                                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                            return null;
                                        }
                                        AddCertificateViewModel addCertificateViewModel = (AddCertificateViewModel) ViewModelKt.a(Reflection.f71922a.b(AddCertificateViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                        SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) composer2.k(CompositionLocalsKt.r);
                                        boolean zK = composer2.K(softwareKeyboardController) | composer2.y(addCertificateViewModel);
                                        Object objX7 = composer2.x();
                                        if (zK || objX7 == composer$Companion$Empty$2) {
                                            objX7 = new vg(softwareKeyboardController, addCertificateViewModel, 10);
                                            composer2.q(objX7);
                                        }
                                        Function1 function20 = (Function1) objX7;
                                        NavHostController navHostController3 = navHostController2;
                                        boolean zY3 = composer2.y(navHostController3);
                                        Object objX8 = composer2.x();
                                        if (zY3 || objX8 == composer$Companion$Empty$2) {
                                            objX8 = new yj(navHostController3, 4);
                                            composer2.q(objX8);
                                        }
                                        Function0 function21 = (Function0) objX8;
                                        boolean zY4 = composer2.y(navHostController3);
                                        Object objX9 = composer2.x();
                                        if (zY4 || objX9 == composer$Companion$Empty$2) {
                                            CertificateNavHostKt$CertificateNavHost$6$1$2$3$1 certificateNavHostKt$CertificateNavHost$6$1$2$3$1 = new CertificateNavHostKt$CertificateNavHost$6$1$2$3$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                            composer2.q(certificateNavHostKt$CertificateNavHost$6$1$2$3$1);
                                            objX9 = certificateNavHostKt$CertificateNavHost$6$1$2$3$1;
                                        }
                                        AddCertificateComposableKt.c(addCertificateViewModel, function20, function21, (Function0) objX9, composer2, 0);
                                        return Unit.f71739a;
                                    default:
                                        Composer composer3 = (Composer) obj4;
                                        ((Integer) obj5).getClass();
                                        ((AnimatedContentScope) obj2).getClass();
                                        ((NavBackStackEntry) obj3).getClass();
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        SystemIcons.f43533b.getClass();
                                        boolean z3 = SystemIcons.f43534c;
                                        function19.invoke(new SystemIcons(z3), new SystemIcons(z3));
                                        ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer3);
                                        if (viewModelStoreOwnerA2 == null) {
                                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                            return null;
                                        }
                                        CertificateTransferViewModel certificateTransferViewModel = (CertificateTransferViewModel) ViewModelKt.a(Reflection.f71922a.b(CertificateTransferViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer3), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer3);
                                        NavHostController navHostController4 = navHostController2;
                                        NavBackStackEntry navBackStackEntryB = navHostController4.b();
                                        if (navBackStackEntryB != null && (savedStateHandleA = navBackStackEntryB.a()) != null && (certificateUiModel = (CertificateUiModel) savedStateHandleA.a("certificate")) != null) {
                                            certificateTransferViewModel.S7(certificateUiModel);
                                        }
                                        boolean zY5 = composer3.y(navHostController4);
                                        Object objX10 = composer3.x();
                                        if (zY5 || objX10 == composer$Companion$Empty$2) {
                                            CertificateNavHostKt$CertificateNavHost$6$1$4$2$1 certificateNavHostKt$CertificateNavHost$6$1$4$2$1 = new CertificateNavHostKt$CertificateNavHost$6$1$4$2$1(0, navHostController4, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                            composer3.q(certificateNavHostKt$CertificateNavHost$6$1$4$2$1);
                                            objX10 = certificateNavHostKt$CertificateNavHost$6$1$4$2$1;
                                        }
                                        Function0 function22 = (Function0) objX10;
                                        boolean zY6 = composer3.y(navHostController4);
                                        Object objX11 = composer3.x();
                                        if (zY6 || objX11 == composer$Companion$Empty$2) {
                                            objX11 = new tl(navHostController4, 0);
                                            composer3.q(objX11);
                                        }
                                        CertificateTransferComposableKt.a(certificateTransferViewModel, function22, (Function2) objX11, composer3, 0);
                                        return Unit.f71739a;
                                }
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CertificateRoute.Transfer.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl4);
                        ComposableLambdaImpl composableLambdaImpl5 = new ComposableLambdaImpl(-1707066484, true, new s8(4, function13, navHostController2, function4));
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CertificateRoute.TransferConfirmation.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl5);
                        final State state = mutableStateB;
                        ComposableLambdaImpl composableLambdaImpl6 = new ComposableLambdaImpl(943952043, true, new Function4() { // from class: com.vuitton.android.presentation.screen.certificates.b
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                                Composer composer2 = (Composer) obj4;
                                defpackage.a.x((Integer) obj5, (AnimatedContentScope) obj2, navBackStackEntry);
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                SystemIcons.f43533b.getClass();
                                boolean z2 = SystemIcons.f43534c;
                                function13.invoke(new SystemIcons(z2), new SystemIcons(z2));
                                String str = ((CertificateRoute.Capucine) NavBackStackEntryKt.a(navBackStackEntry, Reflection.f71922a.b(CertificateRoute.Capucine.class))).f55602a;
                                CertificateViewState certificateViewState = (CertificateViewState) state.getF10755b();
                                Object obj6 = null;
                                CertificateViewState.Success success = certificateViewState instanceof CertificateViewState.Success ? (CertificateViewState.Success) certificateViewState : null;
                                if (success != null) {
                                    List list2 = success.f55880a;
                                    ArrayList arrayList = new ArrayList();
                                    for (Object obj7 : list2) {
                                        if (obj7 instanceof CertificateCapucineUiModel) {
                                            arrayList.add(obj7);
                                        }
                                    }
                                    for (Object obj8 : arrayList) {
                                        if (Intrinsics.c(((CertificateCapucineUiModel) obj8).f55817b, str)) {
                                            obj6 = obj8;
                                            break;
                                        }
                                    }
                                    CertificateCapucineUiModel certificateCapucineUiModel = (CertificateCapucineUiModel) obj6;
                                    if (certificateCapucineUiModel != null) {
                                        NavHostController navHostController3 = navHostController2;
                                        boolean zY3 = composer2.y(navHostController3);
                                        Object objX7 = composer2.x();
                                        if (zY3 || objX7 == Composer.Companion.f7939a) {
                                            CertificateNavHostKt$CertificateNavHost$6$1$6$1$1 certificateNavHostKt$CertificateNavHost$6$1$6$1$1 = new CertificateNavHostKt$CertificateNavHost$6$1$6$1$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                            composer2.q(certificateNavHostKt$CertificateNavHost$6$1$6$1$1);
                                            objX7 = certificateNavHostKt$CertificateNavHost$6$1$6$1$1;
                                        }
                                        CertificateCapucineComposableKt.a(certificateCapucineUiModel, (Function0) objX7, composer2, 0);
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        return Unit.f71739a;
                                    }
                                }
                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                return Unit.f71739a;
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CertificateRoute.Capucine.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl6);
                        ComposableLambdaImpl composableLambdaImpl7 = new ComposableLambdaImpl(-699996726, true, new Function4() { // from class: com.vuitton.android.presentation.screen.certificates.c
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                List list2;
                                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                navBackStackEntry.getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                SystemIcons.f43533b.getClass();
                                function13.invoke(new SystemIcons(false), new SystemIcons(false));
                                ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                                CertificateRoute.NfcScan nfcScan = (CertificateRoute.NfcScan) NavBackStackEntryKt.a(navBackStackEntry, reflectionFactory2.b(CertificateRoute.NfcScan.class));
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                CertificateVisionnaireUiModel certificateVisionnaireUiModel = null;
                                Object obj6 = null;
                                certificateVisionnaireUiModel = null;
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl = (CertificateNfcScanViewModelImpl) ViewModelKt.a(reflectionFactory2.b(CertificateNfcScanViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                CertificateViewState certificateViewState = (CertificateViewState) state.getF10755b();
                                CertificateViewState.Success success = certificateViewState instanceof CertificateViewState.Success ? (CertificateViewState.Success) certificateViewState : null;
                                if (success != null && (list2 = success.f55880a) != null) {
                                    ArrayList arrayList = new ArrayList();
                                    for (Object obj7 : list2) {
                                        if (obj7 instanceof CertificateVisionnaireUiModel) {
                                            arrayList.add(obj7);
                                        }
                                    }
                                    for (Object obj8 : arrayList) {
                                        if (Intrinsics.c(((CertificateVisionnaireUiModel) obj8).f55883b, nfcScan.f55605a)) {
                                            obj6 = obj8;
                                            break;
                                        }
                                    }
                                    certificateVisionnaireUiModel = (CertificateVisionnaireUiModel) obj6;
                                }
                                certificateNfcScanViewModelImpl.n = certificateVisionnaireUiModel;
                                Object obj9 = navHostController2;
                                boolean zY3 = composer2.y(obj9);
                                Object objX7 = composer2.x();
                                Object obj10 = Composer.Companion.f7939a;
                                if (zY3 || objX7 == obj10) {
                                    Object certificateNavHostKt$CertificateNavHost$6$1$7$1$1$1 = new CertificateNavHostKt$CertificateNavHost$6$1$7$1$1$1(0, obj9, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer2.q(certificateNavHostKt$CertificateNavHost$6$1$7$1$1$1);
                                    objX7 = certificateNavHostKt$CertificateNavHost$6$1$7$1$1$1;
                                }
                                Function0 function19 = (Function0) objX7;
                                boolean zY4 = composer2.y(obj9) | composer2.K(nfcScan);
                                Object objX8 = composer2.x();
                                if (zY4 || objX8 == obj10) {
                                    objX8 = new tf(obj9, nfcScan, 18);
                                    composer2.q(objX8);
                                }
                                Function0 function20 = (Function0) objX8;
                                CertificateViewModel certificateViewModel3 = certificateViewModel2;
                                boolean zY5 = composer2.y(certificateViewModel3);
                                Object objX9 = composer2.x();
                                if (zY5 || objX9 == obj10) {
                                    objX9 = new w1(certificateViewModel3, 19);
                                    composer2.q(objX9);
                                }
                                Function0 function21 = (Function0) objX9;
                                boolean zY6 = composer2.y(certificateVisionnaireUiModel) | composer2.y(certificateViewModel3);
                                Object objX10 = composer2.x();
                                if (zY6 || objX10 == obj10) {
                                    objX10 = new sl(certificateVisionnaireUiModel, certificateViewModel3, 0);
                                    composer2.q(objX10);
                                }
                                Function0 function22 = (Function0) objX10;
                                boolean zY7 = composer2.y(certificateVisionnaireUiModel) | composer2.y(certificateViewModel3);
                                Object objX11 = composer2.x();
                                if (zY7 || objX11 == obj10) {
                                    objX11 = new sl(certificateVisionnaireUiModel, certificateViewModel3, 1);
                                    composer2.q(objX11);
                                }
                                Function0 function23 = (Function0) objX11;
                                boolean zY8 = composer2.y(certificateVisionnaireUiModel) | composer2.y(certificateViewModel3);
                                Object objX12 = composer2.x();
                                if (zY8 || objX12 == obj10) {
                                    objX12 = new sl(certificateVisionnaireUiModel, certificateViewModel3, 2);
                                    composer2.q(objX12);
                                }
                                Function0 function24 = (Function0) objX12;
                                boolean zY9 = composer2.y(certificateVisionnaireUiModel) | composer2.y(certificateViewModel3);
                                Object objX13 = composer2.x();
                                if (zY9 || objX13 == obj10) {
                                    objX13 = new vg(certificateVisionnaireUiModel, certificateViewModel3, 11);
                                    composer2.q(objX13);
                                }
                                CertificateNfcScanComposableKt.a(certificateNfcScanViewModelImpl, function19, function17, function18, function20, function21, function22, function23, function24, (Function1) objX13, composer2, 0);
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                return Unit.f71739a;
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CertificateRoute.NfcScan.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl7);
                        ComposableLambdaImpl composableLambdaImpl8 = new ComposableLambdaImpl(1951021801, true, new rl(function13, function7, navHostController2, certificateViewModel2, state, 0));
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(CertificateRoute.Visionnaire.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl8);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function12);
                objX6 = function12;
            } else {
                i3 = i4;
            }
            gapComposer = gapComposerH;
            NavHostKt.b(navHostController, list, null, null, null, function8, function9, function10, function11, (Function1) objX6, gapComposer, (i3 & 14) | 920125488, 1084);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zl(navHostController, certificateViewModel, z, function0, function2, function1, function3, function4, function5, function6, function7, i2);
        }
    }
}

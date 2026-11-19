package defpackage;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCertificatesLocalProviderKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationOtpStepKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationPasswordStepKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateRubyUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickFilterButtonKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import defpackage.n0;
import defpackage.ul;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.reflect.KFunction;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e3 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68733b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68734c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f68735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f68736f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f68737h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f68738i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f68739j;

    public /* synthetic */ e3(AccountActivationViewState accountActivationViewState, Function2 function2, Function0 function0, SoftwareKeyboardController softwareKeyboardController, Function0 function1, Function1 function3, Function0 function4, Function0 function5) {
        this.g = accountActivationViewState;
        this.f68734c = function2;
        this.f68735e = function0;
        this.f68739j = softwareKeyboardController;
        this.f68736f = function1;
        this.d = function3;
        this.f68737h = function4;
        this.f68738i = function5;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2;
        int i3;
        int i4 = this.f68733b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function0 function0 = this.f68736f;
        Object obj5 = this.f68739j;
        Object obj6 = this.f68738i;
        Object obj7 = this.f68737h;
        Object obj8 = this.f68734c;
        Object obj9 = this.g;
        switch (i4) {
            case 0:
                AccountActivationViewState accountActivationViewState = (AccountActivationViewState) obj9;
                Function2 function2 = (Function2) obj8;
                SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) obj5;
                Function0 function1 = (Function0) obj7;
                Function0 function3 = (Function0) obj6;
                ColumnScope columnScope = (ColumnScope) obj;
                int iIntValue = ((Integer) obj2).intValue();
                Composer composer = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                columnScope.getClass();
                if ((iIntValue2 & 6) == 0) {
                    i2 = (composer.K(columnScope) ? 4 : 2) | iIntValue2;
                } else {
                    i2 = iIntValue2;
                }
                if ((iIntValue2 & 48) == 0) {
                    i2 |= composer.d(iIntValue) ? 32 : 16;
                }
                if (composer.p(i2 & 1, (i2 & 147) != 146)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (iIntValue == 0) {
                        composer.L(-1089865442);
                        boolean zK = composer.K(softwareKeyboardController) | composer.K(function0);
                        Object objX = composer.x();
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new n1(softwareKeyboardController, function0, 1);
                            composer.q(objX);
                        }
                        AccountActivationPasswordStepKt.a(columnScope, accountActivationViewState, function2, this.f68735e, (Function0) objX, composer, i2 & 14);
                        composer.F();
                    } else if (iIntValue != 1) {
                        composer.L(574725619);
                        composer.F();
                    } else {
                        composer.L(-1089852899);
                        String str = accountActivationViewState.f53395c;
                        String str2 = accountActivationViewState.d;
                        boolean zK2 = composer.K(softwareKeyboardController) | composer.K(function3);
                        Object objX2 = composer.x();
                        if (zK2 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new n1(softwareKeyboardController, function3, 2);
                            composer.q(objX2);
                        }
                        AccountActivationOtpStepKt.a(columnScope, str, str2, this.d, function1, (Function0) objX2, composer, i2 & 14);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            case 1:
                final CertificateViewModel certificateViewModel = (CertificateViewModel) obj9;
                final NavHostController navHostController = (NavHostController) obj7;
                final Function1 function4 = (Function1) obj6;
                final Function3 function5 = (Function3) obj5;
                Composer composer2 = (Composer) obj3;
                a.x((Integer) obj4, (AnimatedContentScope) obj, (NavBackStackEntry) obj2);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                SystemIcons.f43533b.getClass();
                boolean z = SystemIcons.f43534c;
                ((Function2) obj8).invoke(new SystemIcons(z), new SystemIcons(z));
                final Function1 function6 = this.d;
                final Function0 function7 = this.f68735e;
                final Function0 function8 = this.f68736f;
                LVCertificatesLocalProviderKt.a(ComposableLambdaKt.b(598413947, new Function2() { // from class: com.vuitton.android.presentation.screen.certificates.d
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj10, Object obj11) {
                        Composer composer3 = (Composer) obj10;
                        int iIntValue3 = ((Integer) obj11).intValue();
                        final int i5 = 0;
                        final int i6 = 1;
                        if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            final CertificateViewModel certificateViewModel2 = certificateViewModel;
                            boolean zY = composer3.y(certificateViewModel2);
                            Object objX3 = composer3.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (zY || objX3 == composer$Companion$Empty$2) {
                                CertificateNavHostKt$CertificateNavHost$6$1$1$1$1$1 certificateNavHostKt$CertificateNavHost$6$1$1$1$1$1 = new CertificateNavHostKt$CertificateNavHost$6$1$1$1$1$1(0, certificateViewModel2, CertificateViewModel.class, "getCertificatesList", "getCertificatesList()V", 0);
                                composer3.q(certificateNavHostKt$CertificateNavHost$6$1$1$1$1$1);
                                objX3 = certificateNavHostKt$CertificateNavHost$6$1$1$1$1$1;
                            }
                            KFunction kFunction = (KFunction) objX3;
                            boolean zY2 = composer3.y(certificateViewModel2);
                            Object objX4 = composer3.x();
                            if (zY2 || objX4 == composer$Companion$Empty$2) {
                                objX4 = new CertificateNavHostKt$CertificateNavHost$6$1$1$1$2$1(2, certificateViewModel2, CertificateViewModel.class, "onViewStoneClicked", "onViewStoneClicked(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;)V", 0);
                                composer3.q(objX4);
                            }
                            KFunction kFunction2 = (KFunction) objX4;
                            boolean zY3 = composer3.y(certificateViewModel2);
                            final NavHostController navHostController2 = navHostController;
                            boolean zY4 = zY3 | composer3.y(navHostController2);
                            Object objX5 = composer3.x();
                            if (zY4 || objX5 == composer$Companion$Empty$2) {
                                objX5 = new ul(certificateViewModel2, navHostController2, 2);
                                composer3.q(objX5);
                            }
                            Function0 function9 = (Function0) objX5;
                            boolean zY5 = composer3.y(certificateViewModel2) | composer3.y(navHostController2);
                            Function1 function10 = function4;
                            boolean zK3 = zY5 | composer3.K(function10);
                            Object objX6 = composer3.x();
                            if (zK3 || objX6 == composer$Companion$Empty$2) {
                                objX6 = new n0(certificateViewModel2, navHostController2, function10, 16);
                                composer3.q(objX6);
                            }
                            Function1 function11 = (Function1) objX6;
                            boolean zY6 = composer3.y(certificateViewModel2);
                            Object objX7 = composer3.x();
                            if (zY6 || objX7 == composer$Companion$Empty$2) {
                                objX7 = new Function1() { // from class: wl
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        int i7 = i5;
                                        CertificateViewModel certificateViewModel3 = certificateViewModel2;
                                        CertificateUiModel certificateUiModel = (CertificateUiModel) obj12;
                                        switch (i7) {
                                            case 0:
                                                certificateUiModel.getClass();
                                                certificateViewModel3.u(new CertificateTrackingUiModel.TransferCertificateEvent(certificateUiModel));
                                                break;
                                            default:
                                                certificateUiModel.getClass();
                                                certificateViewModel3.u(new CertificateTrackingUiModel.CancelTransferCertificateEvent(certificateUiModel));
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer3.q(objX7);
                            }
                            Function1 function12 = (Function1) objX7;
                            boolean zY7 = composer3.y(certificateViewModel2) | composer3.y(navHostController2);
                            Object objX8 = composer3.x();
                            if (zY7 || objX8 == composer$Companion$Empty$2) {
                                objX8 = new Function1() { // from class: xl
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        SavedStateHandle savedStateHandleA;
                                        int i7 = i5;
                                        NavHostController navHostController3 = navHostController2;
                                        CertificateViewModel certificateViewModel3 = certificateViewModel2;
                                        CertificateUiModel certificateUiModel = (CertificateUiModel) obj12;
                                        switch (i7) {
                                            case 0:
                                                certificateUiModel.getClass();
                                                certificateViewModel3.u(new CertificateTrackingUiModel.AcceptTransferCertificateEvent(certificateUiModel));
                                                NavBackStackEntry navBackStackEntryH = navHostController3.f18122b.h();
                                                if (navBackStackEntryH != null && (savedStateHandleA = navBackStackEntryH.a()) != null) {
                                                    savedStateHandleA.b(certificateUiModel, "certificate");
                                                }
                                                NavController.d(navHostController3, CertificateRoute.Transfer.INSTANCE, null, 6);
                                                break;
                                            default:
                                                certificateUiModel.getClass();
                                                certificateViewModel3.u(new CertificateTrackingUiModel.ActivateCertificateIntentionEvent(certificateUiModel));
                                                if (certificateUiModel instanceof CertificateVisionnaireUiModel) {
                                                    NavController.d(navHostController3, new CertificateRoute.NfcScan(((CertificateVisionnaireUiModel) certificateUiModel).f55883b), null, 6);
                                                } else if ((certificateUiModel instanceof CertificateDiamondUiModel) || (certificateUiModel instanceof CertificateRubyUiModel)) {
                                                    NavController.d(navHostController3, new CertificateRoute.Add(certificateUiModel.getF55843f()), null, 6);
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer3.q(objX8);
                            }
                            Function1 function13 = (Function1) objX8;
                            boolean zY8 = composer3.y(certificateViewModel2);
                            Object objX9 = composer3.x();
                            if (zY8 || objX9 == composer$Companion$Empty$2) {
                                objX9 = new Function1() { // from class: wl
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        int i7 = i6;
                                        CertificateViewModel certificateViewModel3 = certificateViewModel2;
                                        CertificateUiModel certificateUiModel = (CertificateUiModel) obj12;
                                        switch (i7) {
                                            case 0:
                                                certificateUiModel.getClass();
                                                certificateViewModel3.u(new CertificateTrackingUiModel.TransferCertificateEvent(certificateUiModel));
                                                break;
                                            default:
                                                certificateUiModel.getClass();
                                                certificateViewModel3.u(new CertificateTrackingUiModel.CancelTransferCertificateEvent(certificateUiModel));
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer3.q(objX9);
                            }
                            Function1 function14 = (Function1) objX9;
                            Function0 function15 = (Function0) kFunction;
                            boolean zY9 = composer3.y(certificateViewModel2) | composer3.y(navHostController2);
                            Object objX10 = composer3.x();
                            if (zY9 || objX10 == composer$Companion$Empty$2) {
                                objX10 = new Function1() { // from class: xl
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        SavedStateHandle savedStateHandleA;
                                        int i7 = i6;
                                        NavHostController navHostController3 = navHostController2;
                                        CertificateViewModel certificateViewModel3 = certificateViewModel2;
                                        CertificateUiModel certificateUiModel = (CertificateUiModel) obj12;
                                        switch (i7) {
                                            case 0:
                                                certificateUiModel.getClass();
                                                certificateViewModel3.u(new CertificateTrackingUiModel.AcceptTransferCertificateEvent(certificateUiModel));
                                                NavBackStackEntry navBackStackEntryH = navHostController3.f18122b.h();
                                                if (navBackStackEntryH != null && (savedStateHandleA = navBackStackEntryH.a()) != null) {
                                                    savedStateHandleA.b(certificateUiModel, "certificate");
                                                }
                                                NavController.d(navHostController3, CertificateRoute.Transfer.INSTANCE, null, 6);
                                                break;
                                            default:
                                                certificateUiModel.getClass();
                                                certificateViewModel3.u(new CertificateTrackingUiModel.ActivateCertificateIntentionEvent(certificateUiModel));
                                                if (certificateUiModel instanceof CertificateVisionnaireUiModel) {
                                                    NavController.d(navHostController3, new CertificateRoute.NfcScan(((CertificateVisionnaireUiModel) certificateUiModel).f55883b), null, 6);
                                                } else if ((certificateUiModel instanceof CertificateDiamondUiModel) || (certificateUiModel instanceof CertificateRubyUiModel)) {
                                                    NavController.d(navHostController3, new CertificateRoute.Add(certificateUiModel.getF55843f()), null, 6);
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer3.q(objX10);
                            }
                            CertificateComposableKt.a(null, certificateViewModel2, function9, function6, function11, function12, function13, function14, function15, function7, (Function1) objX10, function5, function8, (Function2) kFunction2, composer3, 0);
                        } else {
                            composer3.D();
                        }
                        return Unit.f71739a;
                    }
                }, composer2), composer2, 6);
                break;
            default:
                String str3 = (String) obj9;
                QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) obj8;
                String str4 = (String) obj7;
                MutableState mutableState = (MutableState) obj6;
                MutableState mutableState2 = (MutableState) obj5;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                Composer composer3 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                if (zBooleanValue) {
                    composer3.L(299105295);
                    Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("QuickAccessFiltersEntryPoint_AlbwjTQ$lambda$19$2$5"), "QAF_CloseItem_button");
                    boolean zK3 = composer3.K(str3);
                    Object objX3 = composer3.x();
                    if (zK3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new nj0(str3, 13);
                        composer3.q(objX3);
                    }
                    Modifier modifierB = SemanticsModifierKt.b(modifierE, false, (Function1) objX3);
                    int i5 = LVAppDesignKitTheme.g(composer3).A;
                    FiltersButtonState filtersButtonState = quickAccessFiltersViewState.f58169a;
                    boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
                    Function0 function9 = this.f68735e;
                    boolean zK4 = composer3.K(function9);
                    Object objX4 = composer3.x();
                    if (zK4 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new sq0(function9, 4);
                        composer3.q(objX4);
                    }
                    QuickFilterButtonKt.a(modifierB, i5, null, filtersButtonState, zBooleanValue2, (Function0) objX4, null, composer3, 0, 68);
                    composer3.F();
                } else {
                    composer3.L(299816993);
                    Modifier modifierE2 = ModifierExtKt.e(new DTFunctionNameModifier("QuickAccessFiltersEntryPoint_AlbwjTQ$lambda$19$2$5"), "QAF_FloatingIconItem_button");
                    boolean zK5 = composer3.K(str4);
                    Object objX5 = composer3.x();
                    if (zK5 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new nj0(str4, 14);
                        composer3.q(objX5);
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(modifierE2, false, (Function1) objX5);
                    if (quickAccessFiltersViewState.q) {
                        composer3.L(300186482);
                        i3 = LVAppDesignKitTheme.g(composer3).l1;
                        composer3.F();
                    } else {
                        composer3.L(300277839);
                        i3 = LVAppDesignKitTheme.g(composer3).p;
                        composer3.F();
                    }
                    int i6 = i3;
                    FiltersButtonState filtersButtonState2 = quickAccessFiltersViewState.f58169a;
                    boolean zBooleanValue3 = ((Boolean) mutableState.getF10755b()).booleanValue();
                    boolean zK6 = composer3.K(function0);
                    Object objX6 = composer3.x();
                    if (zK6 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new sq0(function0, 5);
                        composer3.q(objX6);
                    }
                    Function0 function10 = (Function0) objX6;
                    Function1 function11 = this.d;
                    boolean zK7 = composer3.K(function11);
                    Object objX7 = composer3.x();
                    if (zK7 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new x3(function11, mutableState2, 13);
                        composer3.q(objX7);
                    }
                    QuickFilterButtonKt.a(modifierB2, i6, "QAF_FloatingIconItem_text", filtersButtonState2, zBooleanValue3, function10, (Function1) objX7, composer3, KyberEngine.KyberPolyBytes, 0);
                    composer3.F();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ e3(String str, QuickAccessFiltersViewState quickAccessFiltersViewState, Function0 function0, String str2, Function0 function1, Function1 function2, MutableState mutableState, MutableState mutableState2) {
        this.g = str;
        this.f68734c = quickAccessFiltersViewState;
        this.f68735e = function0;
        this.f68737h = str2;
        this.f68736f = function1;
        this.d = function2;
        this.f68738i = mutableState;
        this.f68739j = mutableState2;
    }

    public /* synthetic */ e3(Function2 function2, CertificateViewModel certificateViewModel, NavHostController navHostController, Function1 function1, Function1 function3, Function0 function0, Function3 function4, Function0 function5) {
        this.f68734c = function2;
        this.g = certificateViewModel;
        this.f68737h = navHostController;
        this.d = function1;
        this.f68738i = function3;
        this.f68735e = function0;
        this.f68739j = function4;
        this.f68736f = function5;
    }
}

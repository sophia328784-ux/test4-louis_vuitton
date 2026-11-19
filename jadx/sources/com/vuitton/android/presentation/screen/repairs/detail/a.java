package com.vuitton.android.presentation.screen.repairs.detail;

import android.os.Bundle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairPaymentFailedComposableKt;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import defpackage.xo0;
import defpackage.zd;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f63771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f63772c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Fragment f63773e;

    public /* synthetic */ a(Fragment fragment, MutableState mutableState, int i2, int i3) {
        this.f63771b = i3;
        this.f63773e = fragment;
        this.f63772c = mutableState;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        String string;
        int i2 = this.f63771b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = this.d;
        MutableState mutableState = this.f63772c;
        Fragment fragment = this.f63773e;
        boolean z = false;
        final int i4 = 1;
        switch (i2) {
            case 0:
                final RepairConfirmAddressBffFragment repairConfirmAddressBffFragment = (RepairConfirmAddressBffFragment) fragment;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                RepairConfirmAddressBffFragment.Companion companion = RepairConfirmAddressBffFragment.M;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker = (ContactUsTracker) composer.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit = Unit.f71739a;
                    boolean zY = composer.y(contactUsTracker);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        obj3 = objX;
                        RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$1$1 repairConfirmAddressBffFragment$onCreateView$1$1$1$1$1$1 = new RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$1$1(contactUsTracker, null);
                        composer.q(repairConfirmAddressBffFragment$onCreateView$1$1$1$1$1$1);
                        obj3 = repairConfirmAddressBffFragment$onCreateView$1$1$1$1$1$1;
                    }
                    EffectsKt.e(composer, unit, (Function2) obj3);
                    RepairBffViewModel repairBffViewModel = (RepairBffViewModel) repairConfirmAddressBffFragment.F.getF71699b();
                    DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModelS = repairConfirmAddressBffFragment.S();
                    boolean zY2 = composer.y(repairConfirmAddressBffFragment);
                    Object objX2 = composer.x();
                    Object obj8 = objX2;
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$2$1 repairConfirmAddressBffFragment$onCreateView$1$1$1$1$2$1 = new RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$2$1(0, repairConfirmAddressBffFragment, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                        composer.q(repairConfirmAddressBffFragment$onCreateView$1$1$1$1$2$1);
                        obj8 = repairConfirmAddressBffFragment$onCreateView$1$1$1$1$2$1;
                    }
                    KFunction kFunction = (KFunction) obj8;
                    boolean zY3 = composer.y(repairConfirmAddressBffFragment);
                    Object objX3 = composer.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$3$1 repairConfirmAddressBffFragment$onCreateView$1$1$1$1$3$1 = new RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$3$1(0, repairConfirmAddressBffFragment, RepairConfirmAddressBffFragment.class, "onModifyShippingAddressClicked", "onModifyShippingAddressClicked()V", 0);
                        composer.q(repairConfirmAddressBffFragment$onCreateView$1$1$1$1$3$1);
                        objX3 = repairConfirmAddressBffFragment$onCreateView$1$1$1$1$3$1;
                    }
                    KFunction kFunction2 = (KFunction) objX3;
                    boolean zY4 = composer.y(repairConfirmAddressBffFragment);
                    Object objX4 = composer.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$4$1 repairConfirmAddressBffFragment$onCreateView$1$1$1$1$4$1 = new RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$4$1(0, repairConfirmAddressBffFragment, RepairConfirmAddressBffFragment.class, "onModifyBillingAddressClicked", "onModifyBillingAddressClicked()V", 0);
                        composer.q(repairConfirmAddressBffFragment$onCreateView$1$1$1$1$4$1);
                        objX4 = repairConfirmAddressBffFragment$onCreateView$1$1$1$1$4$1;
                    }
                    Function0 function0 = (Function0) kFunction;
                    Function0 function1 = (Function0) kFunction2;
                    Function0 function2 = (Function0) ((KFunction) objX4);
                    boolean zY5 = composer.y(repairConfirmAddressBffFragment);
                    Object objX5 = composer.x();
                    Object obj9 = objX5;
                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                        final int i5 = z ? 1 : 0;
                        Function0 function3 = new Function0() { // from class: sr0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i5;
                                RepairConfirmAddressBffFragment repairConfirmAddressBffFragment2 = repairConfirmAddressBffFragment;
                                switch (i6) {
                                    case 0:
                                        RepairConfirmAddressBffFragment.Companion companion2 = RepairConfirmAddressBffFragment.M;
                                        repairConfirmAddressBffFragment2.S().S4();
                                        break;
                                    default:
                                        RepairConfirmAddressBffFragment.Companion companion3 = RepairConfirmAddressBffFragment.M;
                                        repairConfirmAddressBffFragment2.R();
                                        FragmentActivity fragmentActivityRequireActivity = repairConfirmAddressBffFragment2.requireActivity();
                                        CareServiceIdUiModel.Companion companion4 = CareServiceIdUiModel.f64059c;
                                        String strQ = repairConfirmAddressBffFragment2.Q();
                                        companion4.getClass();
                                        if (strQ == null) {
                                            strQ = CareServiceIdUiModel.d;
                                        }
                                        RepairRouter.j(fragmentActivityRequireActivity, strQ);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(function3);
                        obj9 = function3;
                    }
                    Function0 function4 = (Function0) obj9;
                    boolean zY6 = composer.y(repairConfirmAddressBffFragment);
                    Object objX6 = composer.x();
                    Object obj10 = objX6;
                    if (zY6 || objX6 == composer$Companion$Empty$1) {
                        Function0 function5 = new Function0() { // from class: sr0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i4;
                                RepairConfirmAddressBffFragment repairConfirmAddressBffFragment2 = repairConfirmAddressBffFragment;
                                switch (i6) {
                                    case 0:
                                        RepairConfirmAddressBffFragment.Companion companion2 = RepairConfirmAddressBffFragment.M;
                                        repairConfirmAddressBffFragment2.S().S4();
                                        break;
                                    default:
                                        RepairConfirmAddressBffFragment.Companion companion3 = RepairConfirmAddressBffFragment.M;
                                        repairConfirmAddressBffFragment2.R();
                                        FragmentActivity fragmentActivityRequireActivity = repairConfirmAddressBffFragment2.requireActivity();
                                        CareServiceIdUiModel.Companion companion4 = CareServiceIdUiModel.f64059c;
                                        String strQ = repairConfirmAddressBffFragment2.Q();
                                        companion4.getClass();
                                        if (strQ == null) {
                                            strQ = CareServiceIdUiModel.d;
                                        }
                                        RepairRouter.j(fragmentActivityRequireActivity, strQ);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(function5);
                        obj10 = function5;
                    }
                    Function0 function6 = (Function0) obj10;
                    boolean zY7 = composer.y(repairConfirmAddressBffFragment);
                    Object objX7 = composer.x();
                    Object obj11 = objX7;
                    if (zY7 || objX7 == composer$Companion$Empty$1) {
                        xo0 xo0Var = new xo0(repairConfirmAddressBffFragment, 8);
                        composer.q(xo0Var);
                        obj11 = xo0Var;
                    }
                    Function1 function7 = (Function1) obj11;
                    boolean zY8 = composer.y(repairConfirmAddressBffFragment) | composer.K(mutableState) | composer.d(i3);
                    Object objX8 = composer.x();
                    Object obj12 = objX8;
                    if (zY8 || objX8 == composer$Companion$Empty$1) {
                        zd zdVar = new zd(repairConfirmAddressBffFragment, i3, mutableState, 10);
                        composer.q(zdVar);
                        obj12 = zdVar;
                    }
                    RepairConfirmAddressBffComposableKt.a(repairBffViewModel, distantRepairAssessmentBffViewModelS, function0, function1, function2, function4, function6, function7, (Function1) obj12, composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 1:
                final RepairConfirmAddressFragment repairConfirmAddressFragment = (RepairConfirmAddressFragment) fragment;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                RepairConfirmAddressFragment.Companion companion2 = RepairConfirmAddressFragment.M;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker2 = (ContactUsTracker) composer2.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit2 = Unit.f71739a;
                    boolean zY9 = composer2.y(contactUsTracker2);
                    Object objX9 = composer2.x();
                    if (zY9 || objX9 == composer$Companion$Empty$1) {
                        obj4 = objX9;
                        RepairConfirmAddressFragment$onCreateView$1$1$1$1$1$1 repairConfirmAddressFragment$onCreateView$1$1$1$1$1$1 = new RepairConfirmAddressFragment$onCreateView$1$1$1$1$1$1(contactUsTracker2, null);
                        composer2.q(repairConfirmAddressFragment$onCreateView$1$1$1$1$1$1);
                        obj4 = repairConfirmAddressFragment$onCreateView$1$1$1$1$1$1;
                    }
                    EffectsKt.e(composer2, unit2, (Function2) obj4);
                    RepairViewModel repairViewModel = (RepairViewModel) repairConfirmAddressFragment.F.getF71699b();
                    DistantRepairAssessmentViewModel distantRepairAssessmentViewModelR = repairConfirmAddressFragment.R();
                    boolean zY10 = composer2.y(repairConfirmAddressFragment);
                    Object objX10 = composer2.x();
                    Object obj13 = objX10;
                    if (zY10 || objX10 == composer$Companion$Empty$1) {
                        RepairConfirmAddressFragment$onCreateView$1$1$1$1$2$1 repairConfirmAddressFragment$onCreateView$1$1$1$1$2$1 = new RepairConfirmAddressFragment$onCreateView$1$1$1$1$2$1(0, repairConfirmAddressFragment, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                        composer2.q(repairConfirmAddressFragment$onCreateView$1$1$1$1$2$1);
                        obj13 = repairConfirmAddressFragment$onCreateView$1$1$1$1$2$1;
                    }
                    Function0 function8 = (Function0) ((KFunction) obj13);
                    boolean zY11 = composer2.y(repairConfirmAddressFragment);
                    Object objX11 = composer2.x();
                    if (zY11 || objX11 == composer$Companion$Empty$1) {
                        RepairConfirmAddressFragment$onCreateView$1$1$1$1$3$1 repairConfirmAddressFragment$onCreateView$1$1$1$1$3$1 = new RepairConfirmAddressFragment$onCreateView$1$1$1$1$3$1(0, repairConfirmAddressFragment, RepairConfirmAddressFragment.class, "onModifyAddressClicked", "onModifyAddressClicked()V", 0);
                        composer2.q(repairConfirmAddressFragment$onCreateView$1$1$1$1$3$1);
                        objX11 = repairConfirmAddressFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function9 = (Function0) ((KFunction) objX11);
                    boolean zY12 = composer2.y(repairConfirmAddressFragment);
                    Object objX12 = composer2.x();
                    if (zY12 || objX12 == composer$Companion$Empty$1) {
                        RepairConfirmAddressFragment$onCreateView$1$1$1$1$4$1 repairConfirmAddressFragment$onCreateView$1$1$1$1$4$1 = new RepairConfirmAddressFragment$onCreateView$1$1$1$1$4$1(0, repairConfirmAddressFragment, RepairConfirmAddressFragment.class, "onModifyBillingAddressClicked", "onModifyBillingAddressClicked()V", 0);
                        composer2.q(repairConfirmAddressFragment$onCreateView$1$1$1$1$4$1);
                        objX12 = repairConfirmAddressFragment$onCreateView$1$1$1$1$4$1;
                    }
                    Function0 function10 = (Function0) ((KFunction) objX12);
                    boolean zY13 = composer2.y(repairConfirmAddressFragment);
                    Object objX13 = composer2.x();
                    Object obj14 = objX13;
                    if (zY13 || objX13 == composer$Companion$Empty$1) {
                        final int i6 = z ? 1 : 0;
                        Function0 function11 = new Function0() { // from class: wr0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i7 = i6;
                                RepairConfirmAddressFragment repairConfirmAddressFragment2 = repairConfirmAddressFragment;
                                switch (i7) {
                                    case 0:
                                        RepairConfirmAddressFragment.Companion companion3 = RepairConfirmAddressFragment.M;
                                        CareServiceDetailUiModel careServiceDetailUiModel = ((RepairsViewState) ((RepairViewModel) repairConfirmAddressFragment2.F.getF71699b()).getI().getValue()).f64018h;
                                        if (careServiceDetailUiModel != null) {
                                            repairConfirmAddressFragment2.R().L6(careServiceDetailUiModel);
                                        }
                                        break;
                                    default:
                                        RepairConfirmAddressFragment.Companion companion4 = RepairConfirmAddressFragment.M;
                                        repairConfirmAddressFragment2.Q();
                                        FragmentActivity fragmentActivityRequireActivity = repairConfirmAddressFragment2.requireActivity();
                                        CareServiceIdUiModel.Companion companion5 = CareServiceIdUiModel.f64059c;
                                        CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) repairConfirmAddressFragment2.K.getF71699b();
                                        String str = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
                                        companion5.getClass();
                                        if (str == null) {
                                            str = CareServiceIdUiModel.d;
                                        }
                                        RepairRouter.j(fragmentActivityRequireActivity, str);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(function11);
                        obj14 = function11;
                    }
                    Function0 function12 = (Function0) obj14;
                    boolean zY14 = composer2.y(repairConfirmAddressFragment);
                    Object objX14 = composer2.x();
                    Object obj15 = objX14;
                    if (zY14 || objX14 == composer$Companion$Empty$1) {
                        Function0 function13 = new Function0() { // from class: wr0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i7 = i4;
                                RepairConfirmAddressFragment repairConfirmAddressFragment2 = repairConfirmAddressFragment;
                                switch (i7) {
                                    case 0:
                                        RepairConfirmAddressFragment.Companion companion3 = RepairConfirmAddressFragment.M;
                                        CareServiceDetailUiModel careServiceDetailUiModel = ((RepairsViewState) ((RepairViewModel) repairConfirmAddressFragment2.F.getF71699b()).getI().getValue()).f64018h;
                                        if (careServiceDetailUiModel != null) {
                                            repairConfirmAddressFragment2.R().L6(careServiceDetailUiModel);
                                        }
                                        break;
                                    default:
                                        RepairConfirmAddressFragment.Companion companion4 = RepairConfirmAddressFragment.M;
                                        repairConfirmAddressFragment2.Q();
                                        FragmentActivity fragmentActivityRequireActivity = repairConfirmAddressFragment2.requireActivity();
                                        CareServiceIdUiModel.Companion companion5 = CareServiceIdUiModel.f64059c;
                                        CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) repairConfirmAddressFragment2.K.getF71699b();
                                        String str = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
                                        companion5.getClass();
                                        if (str == null) {
                                            str = CareServiceIdUiModel.d;
                                        }
                                        RepairRouter.j(fragmentActivityRequireActivity, str);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(function13);
                        obj15 = function13;
                    }
                    Function0 function14 = (Function0) obj15;
                    boolean zY15 = composer2.y(repairConfirmAddressFragment);
                    Object objX15 = composer2.x();
                    Object obj16 = objX15;
                    if (zY15 || objX15 == composer$Companion$Empty$1) {
                        xo0 xo0Var2 = new xo0(repairConfirmAddressFragment, 9);
                        composer2.q(xo0Var2);
                        obj16 = xo0Var2;
                    }
                    Function1 function15 = (Function1) obj16;
                    boolean zY16 = composer2.y(repairConfirmAddressFragment) | composer2.K(mutableState) | composer2.d(i3);
                    Object objX16 = composer2.x();
                    Object obj17 = objX16;
                    if (zY16 || objX16 == composer$Companion$Empty$1) {
                        zd zdVar2 = new zd(repairConfirmAddressFragment, i3, mutableState, 11);
                        composer2.q(zdVar2);
                        obj17 = zdVar2;
                    }
                    RepairConfirmAddressComposableKt.a(repairViewModel, distantRepairAssessmentViewModelR, function8, function9, function10, function12, function14, function15, (Function1) obj17, composer2, 0);
                } else {
                    composer2.D();
                }
                break;
            case 2:
                RepairDetailBffFragment repairDetailBffFragment = (RepairDetailBffFragment) fragment;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                RepairDetailBffFragment.Companion companion3 = RepairDetailBffFragment.P;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker3 = (ContactUsTracker) composer3.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit3 = Unit.f71739a;
                    boolean zY17 = composer3.y(contactUsTracker3);
                    Object objX17 = composer3.x();
                    if (zY17 || objX17 == composer$Companion$Empty$1) {
                        obj5 = objX17;
                        RepairDetailBffFragment$onCreateView$1$1$1$1$1$1 repairDetailBffFragment$onCreateView$1$1$1$1$1$1 = new RepairDetailBffFragment$onCreateView$1$1$1$1$1$1(contactUsTracker3, null);
                        composer3.q(repairDetailBffFragment$onCreateView$1$1$1$1$1$1);
                        obj5 = repairDetailBffFragment$onCreateView$1$1$1$1$1$1;
                    }
                    EffectsKt.e(composer3, unit3, (Function2) obj5);
                    RepairBffViewModel repairBffViewModelR = repairDetailBffFragment.R();
                    DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModelS2 = repairDetailBffFragment.S();
                    DatePickerViewModel datePickerViewModel = (DatePickerViewModel) repairDetailBffFragment.G.getF71699b();
                    CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) repairDetailBffFragment.M.getF71699b();
                    boolean zY18 = composer3.y(repairDetailBffFragment);
                    Object objX18 = composer3.x();
                    if (zY18 || objX18 == composer$Companion$Empty$1) {
                        RepairDetailBffFragment$onCreateView$1$1$1$1$2$1 repairDetailBffFragment$onCreateView$1$1$1$1$2$1 = new RepairDetailBffFragment$onCreateView$1$1$1$1$2$1(0, repairDetailBffFragment, RepairDetailBffFragment.class, "onRepairCancelled", "onRepairCancelled()V", 0);
                        composer3.q(repairDetailBffFragment$onCreateView$1$1$1$1$2$1);
                        objX18 = repairDetailBffFragment$onCreateView$1$1$1$1$2$1;
                    }
                    KFunction kFunction3 = (KFunction) objX18;
                    boolean zY19 = composer3.y(repairDetailBffFragment);
                    Object objX19 = composer3.x();
                    if (zY19 || objX19 == composer$Companion$Empty$1) {
                        RepairDetailBffFragment$onCreateView$1$1$1$1$3$1 repairDetailBffFragment$onCreateView$1$1$1$1$3$1 = new RepairDetailBffFragment$onCreateView$1$1$1$1$3$1(0, repairDetailBffFragment, RepairDetailBffFragment.class, "onRepairCancelled", "onRepairCancelled()V", 0);
                        composer3.q(repairDetailBffFragment$onCreateView$1$1$1$1$3$1);
                        objX19 = repairDetailBffFragment$onCreateView$1$1$1$1$3$1;
                    }
                    KFunction kFunction4 = (KFunction) objX19;
                    boolean zY20 = composer3.y(repairDetailBffFragment);
                    Object objX20 = composer3.x();
                    if (zY20 || objX20 == composer$Companion$Empty$1) {
                        RepairDetailBffFragment$onCreateView$1$1$1$1$4$1 repairDetailBffFragment$onCreateView$1$1$1$1$4$1 = new RepairDetailBffFragment$onCreateView$1$1$1$1$4$1(1, repairDetailBffFragment, RepairDetailBffFragment.class, "onModifyDelivery", "onModifyDelivery-7ixY91Q(Ljava/lang/String;)V", 0);
                        composer3.q(repairDetailBffFragment$onCreateView$1$1$1$1$4$1);
                        objX20 = repairDetailBffFragment$onCreateView$1$1$1$1$4$1;
                    }
                    KFunction kFunction5 = (KFunction) objX20;
                    boolean zY21 = composer3.y(repairDetailBffFragment);
                    Object objX21 = composer3.x();
                    if (zY21 || objX21 == composer$Companion$Empty$1) {
                        RepairDetailBffFragment$onCreateView$1$1$1$1$5$1 repairDetailBffFragment$onCreateView$1$1$1$1$5$1 = new RepairDetailBffFragment$onCreateView$1$1$1$1$5$1(1, repairDetailBffFragment, RepairDetailBffFragment.class, "onAcceptEstimateClick", "onAcceptEstimateClick-Bh2oOZo(Ljava/lang/String;)V", 0);
                        composer3.q(repairDetailBffFragment$onCreateView$1$1$1$1$5$1);
                        objX21 = repairDetailBffFragment$onCreateView$1$1$1$1$5$1;
                    }
                    KFunction kFunction6 = (KFunction) objX21;
                    boolean zY22 = composer3.y(repairDetailBffFragment);
                    Object objX22 = composer3.x();
                    if (zY22 || objX22 == composer$Companion$Empty$1) {
                        RepairDetailBffFragment$onCreateView$1$1$1$1$6$1 repairDetailBffFragment$onCreateView$1$1$1$1$6$1 = new RepairDetailBffFragment$onCreateView$1$1$1$1$6$1(1, repairDetailBffFragment, RepairDetailBffFragment.class, "onTrackMyShipmentClick", "onTrackMyShipmentClick(Ljava/lang/String;)V", 0);
                        composer3.q(repairDetailBffFragment$onCreateView$1$1$1$1$6$1);
                        objX22 = repairDetailBffFragment$onCreateView$1$1$1$1$6$1;
                    }
                    KFunction kFunction7 = (KFunction) objX22;
                    boolean zY23 = composer3.y(repairDetailBffFragment);
                    Object objX23 = composer3.x();
                    if (zY23 || objX23 == composer$Companion$Empty$1) {
                        RepairDetailBffFragment$onCreateView$1$1$1$1$7$1 repairDetailBffFragment$onCreateView$1$1$1$1$7$1 = new RepairDetailBffFragment$onCreateView$1$1$1$1$7$1(0, repairDetailBffFragment, RepairDetailBffFragment.class, "onConfirmAddressClick", "onConfirmAddressClick()V", 0);
                        composer3.q(repairDetailBffFragment$onCreateView$1$1$1$1$7$1);
                        objX23 = repairDetailBffFragment$onCreateView$1$1$1$1$7$1;
                    }
                    KFunction kFunction8 = (KFunction) objX23;
                    boolean zY24 = composer3.y(repairDetailBffFragment);
                    Object objX24 = composer3.x();
                    if (zY24 || objX24 == composer$Companion$Empty$1) {
                        RepairDetailBffFragment$onCreateView$1$1$1$1$8$1 repairDetailBffFragment$onCreateView$1$1$1$1$8$1 = new RepairDetailBffFragment$onCreateView$1$1$1$1$8$1(0, repairDetailBffFragment, RepairDetailBffFragment.class, "onCancelClick", "onCancelClick()V", 0);
                        composer3.q(repairDetailBffFragment$onCreateView$1$1$1$1$8$1);
                        objX24 = repairDetailBffFragment$onCreateView$1$1$1$1$8$1;
                    }
                    Function0 function16 = (Function0) kFunction3;
                    Function0 function17 = (Function0) kFunction4;
                    Function1 function18 = (Function1) kFunction5;
                    Function1 function19 = (Function1) kFunction6;
                    Function1 function20 = (Function1) kFunction7;
                    Function0 function21 = (Function0) kFunction8;
                    Function0 function22 = (Function0) ((KFunction) objX24);
                    boolean zY25 = composer3.y(repairDetailBffFragment) | composer3.K(mutableState) | composer3.d(i3);
                    Object objX25 = composer3.x();
                    Object obj18 = objX25;
                    if (zY25 || objX25 == composer$Companion$Empty$1) {
                        zd zdVar3 = new zd(repairDetailBffFragment, i3, mutableState, 12);
                        composer3.q(zdVar3);
                        obj18 = zdVar3;
                    }
                    RepairDetailBffComposableKt.a(repairBffViewModelR, distantRepairAssessmentBffViewModelS2, careServiceShortUiModel, function16, function17, function18, function19, function20, function21, function22, (Function1) obj18, datePickerViewModel, composer3, 0);
                } else {
                    composer3.D();
                }
                break;
            case 3:
                RepairDetailsFragment repairDetailsFragment = (RepairDetailsFragment) fragment;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                RepairDetailsFragment.Companion companion4 = RepairDetailsFragment.P;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker4 = (ContactUsTracker) composer4.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit4 = Unit.f71739a;
                    boolean zY26 = composer4.y(contactUsTracker4);
                    Object objX26 = composer4.x();
                    if (zY26 || objX26 == composer$Companion$Empty$1) {
                        obj6 = objX26;
                        RepairDetailsFragment$onCreateView$1$1$1$1$1$1 repairDetailsFragment$onCreateView$1$1$1$1$1$1 = new RepairDetailsFragment$onCreateView$1$1$1$1$1$1(contactUsTracker4, null);
                        composer4.q(repairDetailsFragment$onCreateView$1$1$1$1$1$1);
                        obj6 = repairDetailsFragment$onCreateView$1$1$1$1$1$1;
                    }
                    EffectsKt.e(composer4, unit4, (Function2) obj6);
                    RepairViewModel repairViewModelR = repairDetailsFragment.R();
                    DistantRepairAssessmentViewModel distantRepairAssessmentViewModelS = repairDetailsFragment.S();
                    DatePickerViewModel datePickerViewModel2 = (DatePickerViewModel) repairDetailsFragment.H.getF71699b();
                    CareServiceUiModel careServiceUiModel = (CareServiceUiModel) repairDetailsFragment.M.getF71699b();
                    CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) repairDetailsFragment.N.getF71699b();
                    String str = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
                    boolean zY27 = composer4.y(repairDetailsFragment);
                    Object objX27 = composer4.x();
                    if (zY27 || objX27 == composer$Companion$Empty$1) {
                        RepairDetailsFragment$onCreateView$1$1$1$1$2$1 repairDetailsFragment$onCreateView$1$1$1$1$2$1 = new RepairDetailsFragment$onCreateView$1$1$1$1$2$1(0, repairDetailsFragment, RepairDetailsFragment.class, "onRepairCancelled", "onRepairCancelled()V", 0);
                        composer4.q(repairDetailsFragment$onCreateView$1$1$1$1$2$1);
                        objX27 = repairDetailsFragment$onCreateView$1$1$1$1$2$1;
                    }
                    Function0 function23 = (Function0) ((KFunction) objX27);
                    boolean zY28 = composer4.y(repairDetailsFragment);
                    Object objX28 = composer4.x();
                    if (zY28 || objX28 == composer$Companion$Empty$1) {
                        RepairDetailsFragment$onCreateView$1$1$1$1$3$1 repairDetailsFragment$onCreateView$1$1$1$1$3$1 = new RepairDetailsFragment$onCreateView$1$1$1$1$3$1(0, repairDetailsFragment, RepairDetailsFragment.class, "onRepairCancelled", "onRepairCancelled()V", 0);
                        composer4.q(repairDetailsFragment$onCreateView$1$1$1$1$3$1);
                        objX28 = repairDetailsFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function24 = (Function0) ((KFunction) objX28);
                    boolean zY29 = composer4.y(repairDetailsFragment);
                    Object objX29 = composer4.x();
                    if (zY29 || objX29 == composer$Companion$Empty$1) {
                        RepairDetailsFragment$onCreateView$1$1$1$1$4$1 repairDetailsFragment$onCreateView$1$1$1$1$4$1 = new RepairDetailsFragment$onCreateView$1$1$1$1$4$1(1, repairDetailsFragment, RepairDetailsFragment.class, "onModifyDelivery", "onModifyDelivery(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)V", 0);
                        composer4.q(repairDetailsFragment$onCreateView$1$1$1$1$4$1);
                        objX29 = repairDetailsFragment$onCreateView$1$1$1$1$4$1;
                    }
                    Function1 function25 = (Function1) ((KFunction) objX29);
                    boolean zY30 = composer4.y(repairDetailsFragment);
                    Object objX30 = composer4.x();
                    if (zY30 || objX30 == composer$Companion$Empty$1) {
                        RepairDetailsFragment$onCreateView$1$1$1$1$5$1 repairDetailsFragment$onCreateView$1$1$1$1$5$1 = new RepairDetailsFragment$onCreateView$1$1$1$1$5$1(1, repairDetailsFragment, RepairDetailsFragment.class, "onAcceptEstimateClick", "onAcceptEstimateClick-Bh2oOZo(Ljava/lang/String;)V", 0);
                        composer4.q(repairDetailsFragment$onCreateView$1$1$1$1$5$1);
                        objX30 = repairDetailsFragment$onCreateView$1$1$1$1$5$1;
                    }
                    Function1 function26 = (Function1) ((KFunction) objX30);
                    boolean zY31 = composer4.y(repairDetailsFragment);
                    Object objX31 = composer4.x();
                    if (zY31 || objX31 == composer$Companion$Empty$1) {
                        RepairDetailsFragment$onCreateView$1$1$1$1$6$1 repairDetailsFragment$onCreateView$1$1$1$1$6$1 = new RepairDetailsFragment$onCreateView$1$1$1$1$6$1(1, repairDetailsFragment, RepairDetailsFragment.class, "onTrackMyShipmentClick", "onTrackMyShipmentClick(Ljava/lang/String;)V", 0);
                        composer4.q(repairDetailsFragment$onCreateView$1$1$1$1$6$1);
                        objX31 = repairDetailsFragment$onCreateView$1$1$1$1$6$1;
                    }
                    Function1 function27 = (Function1) ((KFunction) objX31);
                    boolean zY32 = composer4.y(repairDetailsFragment);
                    Object objX32 = composer4.x();
                    if (zY32 || objX32 == composer$Companion$Empty$1) {
                        RepairDetailsFragment$onCreateView$1$1$1$1$7$1 repairDetailsFragment$onCreateView$1$1$1$1$7$1 = new RepairDetailsFragment$onCreateView$1$1$1$1$7$1(0, repairDetailsFragment, RepairDetailsFragment.class, "onConfirmAddressClick", "onConfirmAddressClick()V", 0);
                        composer4.q(repairDetailsFragment$onCreateView$1$1$1$1$7$1);
                        objX32 = repairDetailsFragment$onCreateView$1$1$1$1$7$1;
                    }
                    Function0 function28 = (Function0) ((KFunction) objX32);
                    boolean zY33 = composer4.y(repairDetailsFragment);
                    Object objX33 = composer4.x();
                    if (zY33 || objX33 == composer$Companion$Empty$1) {
                        RepairDetailsFragment$onCreateView$1$1$1$1$8$1 repairDetailsFragment$onCreateView$1$1$1$1$8$1 = new RepairDetailsFragment$onCreateView$1$1$1$1$8$1(0, repairDetailsFragment, RepairDetailsFragment.class, "onCancelClick", "onCancelClick()V", 0);
                        composer4.q(repairDetailsFragment$onCreateView$1$1$1$1$8$1);
                        objX33 = repairDetailsFragment$onCreateView$1$1$1$1$8$1;
                    }
                    Function0 function29 = (Function0) ((KFunction) objX33);
                    boolean zY34 = composer4.y(repairDetailsFragment) | composer4.K(mutableState) | composer4.d(i3);
                    Object objX34 = composer4.x();
                    Object obj19 = objX34;
                    if (zY34 || objX34 == composer$Companion$Empty$1) {
                        zd zdVar4 = new zd(repairDetailsFragment, i3, mutableState, 13);
                        composer4.q(zdVar4);
                        obj19 = zdVar4;
                    }
                    RepairDetailComposableKt.a(repairViewModelR, distantRepairAssessmentViewModelS, datePickerViewModel2, careServiceUiModel, str, function23, function24, function25, function26, function27, function28, function29, (Function1) obj19, composer4, 0);
                } else {
                    composer4.D();
                }
                break;
            default:
                RepairPaymentFailedFragment repairPaymentFailedFragment = (RepairPaymentFailedFragment) fragment;
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                RepairPaymentFailedFragment.Companion companion5 = RepairPaymentFailedFragment.K;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker5 = (ContactUsTracker) composer5.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit5 = Unit.f71739a;
                    boolean zY35 = composer5.y(contactUsTracker5);
                    Object objX35 = composer5.x();
                    if (zY35 || objX35 == composer$Companion$Empty$1) {
                        obj7 = objX35;
                        RepairPaymentFailedFragment$onCreateView$1$1$1$1$1$1 repairPaymentFailedFragment$onCreateView$1$1$1$1$1$1 = new RepairPaymentFailedFragment$onCreateView$1$1$1$1$1$1(contactUsTracker5, null);
                        composer5.q(repairPaymentFailedFragment$onCreateView$1$1$1$1$1$1);
                        obj7 = repairPaymentFailedFragment$onCreateView$1$1$1$1$1$1;
                    }
                    EffectsKt.e(composer5, unit5, (Function2) obj7);
                    DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = (DistantRepairAssessmentViewModel) repairPaymentFailedFragment.F.getF71699b();
                    Bundle arguments = repairPaymentFailedFragment.getArguments();
                    if (arguments == null || (string = arguments.getString("FORMATTED_AMOUNT")) == null) {
                        string = "";
                    }
                    boolean zY36 = composer5.y(repairPaymentFailedFragment);
                    Object objX36 = composer5.x();
                    if (zY36 || objX36 == composer$Companion$Empty$1) {
                        RepairPaymentFailedFragment$onCreateView$1$1$1$1$2$1 repairPaymentFailedFragment$onCreateView$1$1$1$1$2$1 = new RepairPaymentFailedFragment$onCreateView$1$1$1$1$2$1(0, repairPaymentFailedFragment, RepairPaymentFailedFragment.class, "goToCareServices", "goToCareServices()V", 0);
                        composer5.q(repairPaymentFailedFragment$onCreateView$1$1$1$1$2$1);
                        objX36 = repairPaymentFailedFragment$onCreateView$1$1$1$1$2$1;
                    }
                    Function0 function30 = (Function0) ((KFunction) objX36);
                    boolean zY37 = composer5.y(repairPaymentFailedFragment);
                    Object objX37 = composer5.x();
                    if (zY37 || objX37 == composer$Companion$Empty$1) {
                        RepairPaymentFailedFragment$onCreateView$1$1$1$1$3$1 repairPaymentFailedFragment$onCreateView$1$1$1$1$3$1 = new RepairPaymentFailedFragment$onCreateView$1$1$1$1$3$1(0, repairPaymentFailedFragment, RepairPaymentFailedFragment.class, "goToCareServices", "goToCareServices()V", 0);
                        composer5.q(repairPaymentFailedFragment$onCreateView$1$1$1$1$3$1);
                        objX37 = repairPaymentFailedFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function31 = (Function0) ((KFunction) objX37);
                    boolean zY38 = composer5.y(repairPaymentFailedFragment) | composer5.K(mutableState) | composer5.d(i3);
                    Object objX38 = composer5.x();
                    Object obj20 = objX38;
                    if (zY38 || objX38 == composer$Companion$Empty$1) {
                        zd zdVar5 = new zd(repairPaymentFailedFragment, i3, mutableState, 14);
                        composer5.q(zdVar5);
                        obj20 = zdVar5;
                    }
                    RepairPaymentFailedComposableKt.b(distantRepairAssessmentViewModel, string, function30, function31, (Function1) obj20, composer5, 0);
                } else {
                    composer5.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

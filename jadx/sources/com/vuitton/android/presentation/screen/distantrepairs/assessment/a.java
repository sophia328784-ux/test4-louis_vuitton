package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.fragment.app.Fragment;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBffComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentComposableKt;
import defpackage.lk;
import defpackage.ss;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f56956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f56957c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Fragment f56958e;

    public /* synthetic */ a(Fragment fragment, float f2, float f3, int i2) {
        this.f56956b = i2;
        this.f56958e = fragment;
        this.f56957c = f2;
        this.d = f3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f56956b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        float f2 = this.d;
        float f3 = this.f56957c;
        Fragment fragment = this.f56958e;
        int i3 = 2;
        int i4 = 1;
        switch (i2) {
            case 0:
                DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment = (DistantRepairAssessmentBffFragment) fragment;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                DistantRepairAssessmentBffFragment.Companion companion = DistantRepairAssessmentBffFragment.N;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker = (ContactUsTracker) composer.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit = Unit.f71739a;
                    boolean zY = composer.y(contactUsTracker);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$1$1(contactUsTracker, null);
                        composer.q(objX);
                    }
                    EffectsKt.e(composer, unit, (Function2) objX);
                    DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModelO = distantRepairAssessmentBffFragment.O();
                    boolean zY2 = composer.y(distantRepairAssessmentBffFragment);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$2$1 distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$2$1 = new DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$2$1(0, distantRepairAssessmentBffFragment, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                        composer.q(distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$2$1);
                        objX2 = distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$2$1;
                    }
                    Function0 function0 = (Function0) ((KFunction) objX2);
                    boolean zY3 = composer.y(distantRepairAssessmentBffFragment);
                    Object objX3 = composer.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$3$1 distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$3$1 = new DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$3$1(0, distantRepairAssessmentBffFragment, DistantRepairAssessmentBffFragment.class, "goToCareService", "goToCareService()V", 0);
                        composer.q(distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$3$1);
                        objX3 = distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function1 = (Function0) ((KFunction) objX3);
                    boolean zY4 = composer.y(distantRepairAssessmentBffFragment);
                    Object objX4 = composer.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new ss(distantRepairAssessmentBffFragment, 4);
                        composer.q(objX4);
                    }
                    Function0 function2 = (Function0) objX4;
                    boolean zY5 = composer.y(distantRepairAssessmentBffFragment);
                    Object objX5 = composer.x();
                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$5$1 distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$5$1 = new DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$5$1(1, distantRepairAssessmentBffFragment, DistantRepairAssessmentBffFragment.class, "openAddressForm", "openAddressForm(Ljava/lang/String;)V", 0);
                        composer.q(distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$5$1);
                        objX5 = distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$5$1;
                    }
                    Function1 function3 = (Function1) ((KFunction) objX5);
                    boolean zY6 = composer.y(distantRepairAssessmentBffFragment);
                    Object objX6 = composer.x();
                    if (zY6 || objX6 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$6$1 distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$6$1 = new DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$6$1(0, distantRepairAssessmentBffFragment, DistantRepairAssessmentBffFragment.class, "onDeclineAssessment", "onDeclineAssessment()V", 0);
                        composer.q(distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$6$1);
                        objX6 = distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$6$1;
                    }
                    Function0 function4 = (Function0) ((KFunction) objX6);
                    boolean zY7 = composer.y(distantRepairAssessmentBffFragment);
                    Object objX7 = composer.x();
                    if (zY7 || objX7 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$7$1 distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$7$1 = new DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$7$1(0, distantRepairAssessmentBffFragment, DistantRepairAssessmentBffFragment.class, "openCancellationReasons", "openCancellationReasons()V", 0);
                        composer.q(distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$7$1);
                        objX7 = distantRepairAssessmentBffFragment$onCreateView$1$1$1$1$7$1;
                    }
                    Function0 function5 = (Function0) ((KFunction) objX7);
                    boolean zY8 = composer.y(distantRepairAssessmentBffFragment) | composer.c(f3) | composer.c(f2);
                    Object objX8 = composer.x();
                    if (zY8 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new lk(f3, f2, i4, distantRepairAssessmentBffFragment);
                        composer.q(objX8);
                    }
                    AssessmentBffComposableKt.a(distantRepairAssessmentBffViewModelO, function0, function1, function2, function3, function4, function5, (Function1) objX8, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                DistantRepairAssessmentFragment distantRepairAssessmentFragment = (DistantRepairAssessmentFragment) fragment;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                DistantRepairAssessmentFragment.Companion companion2 = DistantRepairAssessmentFragment.M;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker2 = (ContactUsTracker) composer2.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit2 = Unit.f71739a;
                    boolean zY9 = composer2.y(contactUsTracker2);
                    Object objX9 = composer2.x();
                    if (zY9 || objX9 == composer$Companion$Empty$1) {
                        objX9 = new DistantRepairAssessmentFragment$onCreateView$1$1$1$1$1$1(contactUsTracker2, null);
                        composer2.q(objX9);
                    }
                    EffectsKt.e(composer2, unit2, (Function2) objX9);
                    DistantRepairAssessmentViewModel distantRepairAssessmentViewModelO = distantRepairAssessmentFragment.O();
                    boolean zY10 = composer2.y(distantRepairAssessmentFragment);
                    Object objX10 = composer2.x();
                    if (zY10 || objX10 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentFragment$onCreateView$1$1$1$1$2$1 distantRepairAssessmentFragment$onCreateView$1$1$1$1$2$1 = new DistantRepairAssessmentFragment$onCreateView$1$1$1$1$2$1(0, distantRepairAssessmentFragment, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                        composer2.q(distantRepairAssessmentFragment$onCreateView$1$1$1$1$2$1);
                        objX10 = distantRepairAssessmentFragment$onCreateView$1$1$1$1$2$1;
                    }
                    Function0 function6 = (Function0) ((KFunction) objX10);
                    boolean zY11 = composer2.y(distantRepairAssessmentFragment);
                    Object objX11 = composer2.x();
                    if (zY11 || objX11 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentFragment$onCreateView$1$1$1$1$3$1 distantRepairAssessmentFragment$onCreateView$1$1$1$1$3$1 = new DistantRepairAssessmentFragment$onCreateView$1$1$1$1$3$1(0, distantRepairAssessmentFragment, DistantRepairAssessmentFragment.class, "goToCareService", "goToCareService()V", 0);
                        composer2.q(distantRepairAssessmentFragment$onCreateView$1$1$1$1$3$1);
                        objX11 = distantRepairAssessmentFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function7 = (Function0) ((KFunction) objX11);
                    boolean zY12 = composer2.y(distantRepairAssessmentFragment);
                    Object objX12 = composer2.x();
                    if (zY12 || objX12 == composer$Companion$Empty$1) {
                        objX12 = new ss(distantRepairAssessmentFragment, 5);
                        composer2.q(objX12);
                    }
                    Function0 function8 = (Function0) objX12;
                    boolean zY13 = composer2.y(distantRepairAssessmentFragment);
                    Object objX13 = composer2.x();
                    if (zY13 || objX13 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentFragment$onCreateView$1$1$1$1$5$1 distantRepairAssessmentFragment$onCreateView$1$1$1$1$5$1 = new DistantRepairAssessmentFragment$onCreateView$1$1$1$1$5$1(1, distantRepairAssessmentFragment, DistantRepairAssessmentFragment.class, "openAddressForm", "openAddressForm(Ljava/lang/String;)V", 0);
                        composer2.q(distantRepairAssessmentFragment$onCreateView$1$1$1$1$5$1);
                        objX13 = distantRepairAssessmentFragment$onCreateView$1$1$1$1$5$1;
                    }
                    Function1 function9 = (Function1) ((KFunction) objX13);
                    boolean zY14 = composer2.y(distantRepairAssessmentFragment);
                    Object objX14 = composer2.x();
                    if (zY14 || objX14 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentFragment$onCreateView$1$1$1$1$6$1 distantRepairAssessmentFragment$onCreateView$1$1$1$1$6$1 = new DistantRepairAssessmentFragment$onCreateView$1$1$1$1$6$1(0, distantRepairAssessmentFragment, DistantRepairAssessmentFragment.class, "onDeclineAssessment", "onDeclineAssessment()V", 0);
                        composer2.q(distantRepairAssessmentFragment$onCreateView$1$1$1$1$6$1);
                        objX14 = distantRepairAssessmentFragment$onCreateView$1$1$1$1$6$1;
                    }
                    Function0 function10 = (Function0) ((KFunction) objX14);
                    boolean zY15 = composer2.y(distantRepairAssessmentFragment);
                    Object objX15 = composer2.x();
                    if (zY15 || objX15 == composer$Companion$Empty$1) {
                        DistantRepairAssessmentFragment$onCreateView$1$1$1$1$7$1 distantRepairAssessmentFragment$onCreateView$1$1$1$1$7$1 = new DistantRepairAssessmentFragment$onCreateView$1$1$1$1$7$1(0, distantRepairAssessmentFragment, DistantRepairAssessmentFragment.class, "openCancellationReasons", "openCancellationReasons()V", 0);
                        composer2.q(distantRepairAssessmentFragment$onCreateView$1$1$1$1$7$1);
                        objX15 = distantRepairAssessmentFragment$onCreateView$1$1$1$1$7$1;
                    }
                    Function0 function11 = (Function0) ((KFunction) objX15);
                    boolean zY16 = composer2.y(distantRepairAssessmentFragment) | composer2.c(f3) | composer2.c(f2);
                    Object objX16 = composer2.x();
                    if (zY16 || objX16 == composer$Companion$Empty$1) {
                        objX16 = new lk(f3, f2, i3, distantRepairAssessmentFragment);
                        composer2.q(objX16);
                    }
                    AssessmentComposableKt.a(distantRepairAssessmentViewModelO, function6, function7, function8, function9, function10, function11, (Function1) objX16, composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

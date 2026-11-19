package com.vuitton.android.presentation.screen.distantrepairs.form;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.fragment.app.Fragment;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBffComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import defpackage.zd;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f57207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f57208c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Fragment f57209e;

    public /* synthetic */ a(Fragment fragment, MutableState mutableState, int i2, int i3) {
        this.f57207b = i3;
        this.f57209e = fragment;
        this.f57208c = mutableState;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f57207b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = this.d;
        MutableState mutableState = this.f57208c;
        Fragment fragment = this.f57209e;
        switch (i2) {
            case 0:
                DistantRepairFormBffFragment distantRepairFormBffFragment = (DistantRepairFormBffFragment) fragment;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                DistantRepairFormBffFragment.Companion companion = DistantRepairFormBffFragment.M;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker = (ContactUsTracker) composer.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit = Unit.f71739a;
                    boolean zY = composer.y(contactUsTracker);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new DistantRepairFormBffFragment$onCreateView$1$1$1$1$1$1(contactUsTracker, null);
                        composer.q(objX);
                    }
                    EffectsKt.e(composer, unit, (Function2) objX);
                    DistantRepairFormBffViewModel distantRepairFormBffViewModelO = distantRepairFormBffFragment.O();
                    DatePickerViewModel datePickerViewModel = (DatePickerViewModel) distantRepairFormBffFragment.G.getF71699b();
                    boolean zY2 = composer.y(distantRepairFormBffFragment);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        DistantRepairFormBffFragment$onCreateView$1$1$1$1$2$1 distantRepairFormBffFragment$onCreateView$1$1$1$1$2$1 = new DistantRepairFormBffFragment$onCreateView$1$1$1$1$2$1(0, distantRepairFormBffFragment, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                        composer.q(distantRepairFormBffFragment$onCreateView$1$1$1$1$2$1);
                        objX2 = distantRepairFormBffFragment$onCreateView$1$1$1$1$2$1;
                    }
                    Function0 function0 = (Function0) ((KFunction) objX2);
                    boolean zY3 = composer.y(distantRepairFormBffFragment);
                    Object objX3 = composer.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        DistantRepairFormBffFragment$onCreateView$1$1$1$1$3$1 distantRepairFormBffFragment$onCreateView$1$1$1$1$3$1 = new DistantRepairFormBffFragment$onCreateView$1$1$1$1$3$1(0, distantRepairFormBffFragment, DistantRepairFormBffFragment.class, "addToCalendar", "addToCalendar()V", 0);
                        composer.q(distantRepairFormBffFragment$onCreateView$1$1$1$1$3$1);
                        objX3 = distantRepairFormBffFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function1 = (Function0) ((KFunction) objX3);
                    boolean zY4 = composer.y(distantRepairFormBffFragment);
                    Object objX4 = composer.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        DistantRepairFormBffFragment$onCreateView$1$1$1$1$4$1 distantRepairFormBffFragment$onCreateView$1$1$1$1$4$1 = new DistantRepairFormBffFragment$onCreateView$1$1$1$1$4$1(0, distantRepairFormBffFragment, DistantRepairFormBffFragment.class, "goToCareService", "goToCareService()V", 0);
                        composer.q(distantRepairFormBffFragment$onCreateView$1$1$1$1$4$1);
                        objX4 = distantRepairFormBffFragment$onCreateView$1$1$1$1$4$1;
                    }
                    Function0 function2 = (Function0) ((KFunction) objX4);
                    boolean zY5 = composer.y(distantRepairFormBffFragment);
                    Object objX5 = composer.x();
                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                        DistantRepairFormBffFragment$onCreateView$1$1$1$1$5$1 distantRepairFormBffFragment$onCreateView$1$1$1$1$5$1 = new DistantRepairFormBffFragment$onCreateView$1$1$1$1$5$1(1, distantRepairFormBffFragment, DistantRepairFormBffFragment.class, "takePicture", "takePicture(I)V", 0);
                        composer.q(distantRepairFormBffFragment$onCreateView$1$1$1$1$5$1);
                        objX5 = distantRepairFormBffFragment$onCreateView$1$1$1$1$5$1;
                    }
                    Function1 function3 = (Function1) ((KFunction) objX5);
                    boolean zY6 = composer.y(distantRepairFormBffFragment) | composer.K(mutableState) | composer.d(i3);
                    Object objX6 = composer.x();
                    if (zY6 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new zd(distantRepairFormBffFragment, i3, mutableState, 3);
                        composer.q(objX6);
                    }
                    Function1 function4 = (Function1) objX6;
                    boolean zY7 = composer.y(distantRepairFormBffFragment);
                    Object objX7 = composer.x();
                    if (zY7 || objX7 == composer$Companion$Empty$1) {
                        DistantRepairFormBffFragment$onCreateView$1$1$1$1$7$1 distantRepairFormBffFragment$onCreateView$1$1$1$1$7$1 = new DistantRepairFormBffFragment$onCreateView$1$1$1$1$7$1(1, distantRepairFormBffFragment, DistantRepairFormBffFragment.class, "onUrlClicked", "onUrlClicked(Ljava/lang/String;)V", 0);
                        composer.q(distantRepairFormBffFragment$onCreateView$1$1$1$1$7$1);
                        objX7 = distantRepairFormBffFragment$onCreateView$1$1$1$1$7$1;
                    }
                    DistantRepairFormBffComposableKt.a(distantRepairFormBffViewModelO, datePickerViewModel, function0, function1, function2, function3, function4, (Function1) ((KFunction) objX7), composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                DistantRepairFormFragment distantRepairFormFragment = (DistantRepairFormFragment) fragment;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                DistantRepairFormFragment.Companion companion2 = DistantRepairFormFragment.M;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ContactUsTracker contactUsTracker2 = (ContactUsTracker) composer2.k(ContactUsTrackerEntryPointKt.f51125a);
                    Unit unit2 = Unit.f71739a;
                    boolean zY8 = composer2.y(contactUsTracker2);
                    Object objX8 = composer2.x();
                    if (zY8 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new DistantRepairFormFragment$onCreateView$1$1$1$1$1$1(contactUsTracker2, null);
                        composer2.q(objX8);
                    }
                    EffectsKt.e(composer2, unit2, (Function2) objX8);
                    DistantRepairFormViewModel distantRepairFormViewModelO = distantRepairFormFragment.O();
                    DatePickerViewModel datePickerViewModel2 = (DatePickerViewModel) distantRepairFormFragment.G.getF71699b();
                    boolean zY9 = composer2.y(distantRepairFormFragment);
                    Object objX9 = composer2.x();
                    if (zY9 || objX9 == composer$Companion$Empty$1) {
                        DistantRepairFormFragment$onCreateView$1$1$1$1$2$1 distantRepairFormFragment$onCreateView$1$1$1$1$2$1 = new DistantRepairFormFragment$onCreateView$1$1$1$1$2$1(0, distantRepairFormFragment, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                        composer2.q(distantRepairFormFragment$onCreateView$1$1$1$1$2$1);
                        objX9 = distantRepairFormFragment$onCreateView$1$1$1$1$2$1;
                    }
                    Function0 function5 = (Function0) ((KFunction) objX9);
                    boolean zY10 = composer2.y(distantRepairFormFragment);
                    Object objX10 = composer2.x();
                    if (zY10 || objX10 == composer$Companion$Empty$1) {
                        DistantRepairFormFragment$onCreateView$1$1$1$1$3$1 distantRepairFormFragment$onCreateView$1$1$1$1$3$1 = new DistantRepairFormFragment$onCreateView$1$1$1$1$3$1(0, distantRepairFormFragment, DistantRepairFormFragment.class, "addToCalendar", "addToCalendar()V", 0);
                        composer2.q(distantRepairFormFragment$onCreateView$1$1$1$1$3$1);
                        objX10 = distantRepairFormFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function6 = (Function0) ((KFunction) objX10);
                    boolean zY11 = composer2.y(distantRepairFormFragment);
                    Object objX11 = composer2.x();
                    if (zY11 || objX11 == composer$Companion$Empty$1) {
                        objX11 = new DistantRepairFormFragment$onCreateView$1$1$1$1$4$1(0, distantRepairFormFragment, DistantRepairFormFragment.class, "goToCareService", "goToCareService()V", 0);
                        composer2.q(objX11);
                    }
                    Function0 function7 = (Function0) ((KFunction) objX11);
                    boolean zY12 = composer2.y(distantRepairFormFragment);
                    Object objX12 = composer2.x();
                    if (zY12 || objX12 == composer$Companion$Empty$1) {
                        objX12 = new DistantRepairFormFragment$onCreateView$1$1$1$1$5$1(1, distantRepairFormFragment, DistantRepairFormFragment.class, "takePicture", "takePicture(I)V", 0);
                        composer2.q(objX12);
                    }
                    Function1 function8 = (Function1) ((KFunction) objX12);
                    boolean zY13 = composer2.y(distantRepairFormFragment) | composer2.K(mutableState) | composer2.d(i3);
                    Object objX13 = composer2.x();
                    if (zY13 || objX13 == composer$Companion$Empty$1) {
                        objX13 = new zd(distantRepairFormFragment, i3, mutableState, 4);
                        composer2.q(objX13);
                    }
                    Function1 function9 = (Function1) objX13;
                    boolean zY14 = composer2.y(distantRepairFormFragment);
                    Object objX14 = composer2.x();
                    if (zY14 || objX14 == composer$Companion$Empty$1) {
                        DistantRepairFormFragment$onCreateView$1$1$1$1$7$1 distantRepairFormFragment$onCreateView$1$1$1$1$7$1 = new DistantRepairFormFragment$onCreateView$1$1$1$1$7$1(1, distantRepairFormFragment, DistantRepairFormFragment.class, "onUrlClicked", "onUrlClicked(Ljava/lang/String;)V", 0);
                        composer2.q(distantRepairFormFragment$onCreateView$1$1$1$1$7$1);
                        objX14 = distantRepairFormFragment$onCreateView$1$1$1$1$7$1;
                    }
                    DistantRepairFormComposableKt.a(distantRepairFormViewModelO, datePickerViewModel2, function5, function6, function7, function8, function9, (Function1) ((KFunction) objX14), composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

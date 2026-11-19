package com.vuitton.android.presentation.screen.repairs.list;

import android.os.Bundle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment;
import com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment;
import com.vuitton.android.presentation.screen.repairs.list.RepairListFragment;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListComposableKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceProductUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import defpackage.lk;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f63902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f63903c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Fragment f63904e;

    public /* synthetic */ a(Fragment fragment, float f2, float f3, int i2) {
        this.f63902b = i2;
        this.f63904e = fragment;
        this.f63903c = f2;
        this.d = f3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f63902b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        float f2 = this.d;
        float f3 = this.f63903c;
        Fragment fragment = this.f63904e;
        final int i3 = 2;
        final int i4 = 0;
        final int i5 = 1;
        switch (i2) {
            case 0:
                final RepairListBffFragment repairListBffFragment = (RepairListBffFragment) fragment;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                RepairListBffFragment.Companion companion = RepairListBffFragment.L;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    RepairBffViewModel repairBffViewModelP = repairListBffFragment.P();
                    boolean zY = composer.y(repairListBffFragment);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new Function0() { // from class: ns0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i4;
                                RepairListBffFragment repairListBffFragment2 = repairListBffFragment;
                                switch (i6) {
                                    case 0:
                                        RepairListBffFragment.Companion companion2 = RepairListBffFragment.L;
                                        repairListBffFragment2.P().d(DistantRepairTrackingUiModel.RepairListHowToCreateClickedEvent.f57452a);
                                        String str = ((RepairsBffViewState) repairListBffFragment2.P().getD().getValue()).l.d;
                                        if (str != null) {
                                            RepairRouter repairRouterO = repairListBffFragment2.O();
                                            FragmentActivity fragmentActivityRequireActivity = repairListBffFragment2.requireActivity();
                                            if (fragmentActivityRequireActivity != null) {
                                                WebViewRouter.b(repairRouterO.f63494a, fragmentActivityRequireActivity, str, false, 120);
                                            }
                                        }
                                        return Unit.f71739a;
                                    case 1:
                                        RepairListBffFragment.Companion companion3 = RepairListBffFragment.L;
                                        repairListBffFragment2.O().d(repairListBffFragment2.requireActivity());
                                        return Unit.f71739a;
                                    default:
                                        RepairListBffFragment.Companion companion4 = RepairListBffFragment.L;
                                        String str2 = ((RepairsBffViewState) repairListBffFragment2.P().getD().getValue()).l.f64008i;
                                        repairListBffFragment2.P().d(new DistantRepairTrackingUiModel.DiscoverServicesCardClickEvent(str2 == null ? "" : str2));
                                        if (str2 != null) {
                                            ContributionLinkNavigator contributionLinkNavigator = repairListBffFragment2.I;
                                            if (contributionLinkNavigator == null) {
                                                Intrinsics.h("contributionLinkNavigator");
                                                throw null;
                                            }
                                            FragmentActivity fragmentActivityRequireActivity2 = repairListBffFragment2.requireActivity();
                                            fragmentActivityRequireActivity2.getClass();
                                            ContributionLinkNavigator.a(contributionLinkNavigator, fragmentActivityRequireActivity2, new ContributionLinkUiModel.ImmersiveArticle(str2), null, null, null, 16);
                                        }
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    boolean zY2 = composer.y(repairListBffFragment);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new Function0() { // from class: ns0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i5;
                                RepairListBffFragment repairListBffFragment2 = repairListBffFragment;
                                switch (i6) {
                                    case 0:
                                        RepairListBffFragment.Companion companion2 = RepairListBffFragment.L;
                                        repairListBffFragment2.P().d(DistantRepairTrackingUiModel.RepairListHowToCreateClickedEvent.f57452a);
                                        String str = ((RepairsBffViewState) repairListBffFragment2.P().getD().getValue()).l.d;
                                        if (str != null) {
                                            RepairRouter repairRouterO = repairListBffFragment2.O();
                                            FragmentActivity fragmentActivityRequireActivity = repairListBffFragment2.requireActivity();
                                            if (fragmentActivityRequireActivity != null) {
                                                WebViewRouter.b(repairRouterO.f63494a, fragmentActivityRequireActivity, str, false, 120);
                                            }
                                        }
                                        return Unit.f71739a;
                                    case 1:
                                        RepairListBffFragment.Companion companion3 = RepairListBffFragment.L;
                                        repairListBffFragment2.O().d(repairListBffFragment2.requireActivity());
                                        return Unit.f71739a;
                                    default:
                                        RepairListBffFragment.Companion companion4 = RepairListBffFragment.L;
                                        String str2 = ((RepairsBffViewState) repairListBffFragment2.P().getD().getValue()).l.f64008i;
                                        repairListBffFragment2.P().d(new DistantRepairTrackingUiModel.DiscoverServicesCardClickEvent(str2 == null ? "" : str2));
                                        if (str2 != null) {
                                            ContributionLinkNavigator contributionLinkNavigator = repairListBffFragment2.I;
                                            if (contributionLinkNavigator == null) {
                                                Intrinsics.h("contributionLinkNavigator");
                                                throw null;
                                            }
                                            FragmentActivity fragmentActivityRequireActivity2 = repairListBffFragment2.requireActivity();
                                            fragmentActivityRequireActivity2.getClass();
                                            ContributionLinkNavigator.a(contributionLinkNavigator, fragmentActivityRequireActivity2, new ContributionLinkUiModel.ImmersiveArticle(str2), null, null, null, 16);
                                        }
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer.q(objX2);
                    }
                    Function0 function1 = (Function0) objX2;
                    boolean zY3 = composer.y(repairListBffFragment);
                    Object objX3 = composer.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        RepairListBffFragment$onCreateView$1$1$1$1$3$1 repairListBffFragment$onCreateView$1$1$1$1$3$1 = new RepairListBffFragment$onCreateView$1$1$1$1$3$1(0, repairListBffFragment, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                        composer.q(repairListBffFragment$onCreateView$1$1$1$1$3$1);
                        objX3 = repairListBffFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function2 = (Function0) ((KFunction) objX3);
                    boolean zY4 = composer.y(repairListBffFragment);
                    Object objX4 = composer.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new Function1() { // from class: os0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                FragmentManager supportFragmentManager;
                                int i6 = i4;
                                RepairListBffFragment repairListBffFragment2 = repairListBffFragment;
                                switch (i6) {
                                    case 0:
                                        CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) obj3;
                                        RepairListBffFragment.Companion companion2 = RepairListBffFragment.L;
                                        careServiceShortUiModel.getClass();
                                        CareServiceProductUiModel careServiceProductUiModel = careServiceShortUiModel.f64068i;
                                        if (careServiceProductUiModel != null) {
                                            String str = careServiceProductUiModel.f64061b;
                                            SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str);
                                            if (str.length() <= 0) {
                                                skuIdUiModel = null;
                                            }
                                            String str2 = skuIdUiModel != null ? skuIdUiModel.f61764b : null;
                                            if (str2 != null) {
                                                repairListBffFragment2.P().d(new DistantRepairTrackingUiModel.RepairListItemClickedEvent(str2, careServiceShortUiModel.f64066f == CareServiceCategory.OnGoing, null));
                                            }
                                        }
                                        repairListBffFragment2.O();
                                        FragmentActivity fragmentActivityRequireActivity = repairListBffFragment2.requireActivity();
                                        if (fragmentActivityRequireActivity != null && (supportFragmentManager = fragmentActivityRequireActivity.getSupportFragmentManager()) != null) {
                                            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                                            fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                                            RepairDetailBffFragment.P.getClass();
                                            RepairDetailBffFragment repairDetailBffFragment = new RepairDetailBffFragment();
                                            Bundle bundle = new Bundle();
                                            bundle.putParcelable("CARE_SERVICE", careServiceShortUiModel);
                                            repairDetailBffFragment.setArguments(bundle);
                                            String str3 = RepairDetailBffFragment.Q;
                                            fragmentTransactionD.i(R.id.fragment_container, repairDetailBffFragment, str3, 1);
                                            fragmentTransactionD.d(str3);
                                            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivityRequireActivity);
                                            fragmentTransactionD.e();
                                        }
                                        break;
                                    default:
                                        String str4 = (String) obj3;
                                        RepairListBffFragment.Companion companion3 = RepairListBffFragment.L;
                                        str4.getClass();
                                        repairListBffFragment2.P().d(DistantRepairTrackingUiModel.RepairListTrackShipmentClickedEvent.f57457a);
                                        repairListBffFragment2.O();
                                        RepairRouter.k(repairListBffFragment2.requireActivity(), str4);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(objX4);
                    }
                    Function1 function3 = (Function1) objX4;
                    boolean zY5 = composer.y(repairListBffFragment);
                    Object objX5 = composer.x();
                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new Function1() { // from class: os0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                FragmentManager supportFragmentManager;
                                int i6 = i5;
                                RepairListBffFragment repairListBffFragment2 = repairListBffFragment;
                                switch (i6) {
                                    case 0:
                                        CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) obj3;
                                        RepairListBffFragment.Companion companion2 = RepairListBffFragment.L;
                                        careServiceShortUiModel.getClass();
                                        CareServiceProductUiModel careServiceProductUiModel = careServiceShortUiModel.f64068i;
                                        if (careServiceProductUiModel != null) {
                                            String str = careServiceProductUiModel.f64061b;
                                            SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str);
                                            if (str.length() <= 0) {
                                                skuIdUiModel = null;
                                            }
                                            String str2 = skuIdUiModel != null ? skuIdUiModel.f61764b : null;
                                            if (str2 != null) {
                                                repairListBffFragment2.P().d(new DistantRepairTrackingUiModel.RepairListItemClickedEvent(str2, careServiceShortUiModel.f64066f == CareServiceCategory.OnGoing, null));
                                            }
                                        }
                                        repairListBffFragment2.O();
                                        FragmentActivity fragmentActivityRequireActivity = repairListBffFragment2.requireActivity();
                                        if (fragmentActivityRequireActivity != null && (supportFragmentManager = fragmentActivityRequireActivity.getSupportFragmentManager()) != null) {
                                            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                                            fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                                            RepairDetailBffFragment.P.getClass();
                                            RepairDetailBffFragment repairDetailBffFragment = new RepairDetailBffFragment();
                                            Bundle bundle = new Bundle();
                                            bundle.putParcelable("CARE_SERVICE", careServiceShortUiModel);
                                            repairDetailBffFragment.setArguments(bundle);
                                            String str3 = RepairDetailBffFragment.Q;
                                            fragmentTransactionD.i(R.id.fragment_container, repairDetailBffFragment, str3, 1);
                                            fragmentTransactionD.d(str3);
                                            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivityRequireActivity);
                                            fragmentTransactionD.e();
                                        }
                                        break;
                                    default:
                                        String str4 = (String) obj3;
                                        RepairListBffFragment.Companion companion3 = RepairListBffFragment.L;
                                        str4.getClass();
                                        repairListBffFragment2.P().d(DistantRepairTrackingUiModel.RepairListTrackShipmentClickedEvent.f57457a);
                                        repairListBffFragment2.O();
                                        RepairRouter.k(repairListBffFragment2.requireActivity(), str4);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(objX5);
                    }
                    Function1 function4 = (Function1) objX5;
                    boolean zY6 = composer.y(repairListBffFragment);
                    Object objX6 = composer.x();
                    if (zY6 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new Function1<CareServiceIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreateView$1$1$1$1$6$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                String str = ((CareServiceIdUiModel) obj3).f64060b;
                                str.getClass();
                                RepairListBffFragment.Companion companion2 = RepairListBffFragment.L;
                                RepairListBffFragment repairListBffFragment2 = repairListBffFragment;
                                repairListBffFragment2.P().d(DistantRepairTrackingUiModel.RepairListAcceptEstimateClickedEvent.f57451a);
                                repairListBffFragment2.O().g(repairListBffFragment2.requireActivity(), str);
                                return Unit.f71739a;
                            }
                        };
                        composer.q(objX6);
                    }
                    Function1 function5 = (Function1) objX6;
                    boolean zY7 = composer.y(repairListBffFragment);
                    Object objX7 = composer.x();
                    if (zY7 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new Function1<CareServiceIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreateView$1$1$1$1$7$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                String str = ((CareServiceIdUiModel) obj3).f64060b;
                                str.getClass();
                                RepairListBffFragment repairListBffFragment2 = repairListBffFragment;
                                repairListBffFragment2.O().c(repairListBffFragment2.requireActivity(), str);
                                return Unit.f71739a;
                            }
                        };
                        composer.q(objX7);
                    }
                    Function1 function6 = (Function1) objX7;
                    boolean zY8 = composer.y(repairListBffFragment);
                    Object objX8 = composer.x();
                    if (zY8 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new Function0() { // from class: ns0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i3;
                                RepairListBffFragment repairListBffFragment2 = repairListBffFragment;
                                switch (i6) {
                                    case 0:
                                        RepairListBffFragment.Companion companion2 = RepairListBffFragment.L;
                                        repairListBffFragment2.P().d(DistantRepairTrackingUiModel.RepairListHowToCreateClickedEvent.f57452a);
                                        String str = ((RepairsBffViewState) repairListBffFragment2.P().getD().getValue()).l.d;
                                        if (str != null) {
                                            RepairRouter repairRouterO = repairListBffFragment2.O();
                                            FragmentActivity fragmentActivityRequireActivity = repairListBffFragment2.requireActivity();
                                            if (fragmentActivityRequireActivity != null) {
                                                WebViewRouter.b(repairRouterO.f63494a, fragmentActivityRequireActivity, str, false, 120);
                                            }
                                        }
                                        return Unit.f71739a;
                                    case 1:
                                        RepairListBffFragment.Companion companion3 = RepairListBffFragment.L;
                                        repairListBffFragment2.O().d(repairListBffFragment2.requireActivity());
                                        return Unit.f71739a;
                                    default:
                                        RepairListBffFragment.Companion companion4 = RepairListBffFragment.L;
                                        String str2 = ((RepairsBffViewState) repairListBffFragment2.P().getD().getValue()).l.f64008i;
                                        repairListBffFragment2.P().d(new DistantRepairTrackingUiModel.DiscoverServicesCardClickEvent(str2 == null ? "" : str2));
                                        if (str2 != null) {
                                            ContributionLinkNavigator contributionLinkNavigator = repairListBffFragment2.I;
                                            if (contributionLinkNavigator == null) {
                                                Intrinsics.h("contributionLinkNavigator");
                                                throw null;
                                            }
                                            FragmentActivity fragmentActivityRequireActivity2 = repairListBffFragment2.requireActivity();
                                            fragmentActivityRequireActivity2.getClass();
                                            ContributionLinkNavigator.a(contributionLinkNavigator, fragmentActivityRequireActivity2, new ContributionLinkUiModel.ImmersiveArticle(str2), null, null, null, 16);
                                        }
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer.q(objX8);
                    }
                    Function0 function7 = (Function0) objX8;
                    boolean zY9 = composer.y(repairListBffFragment) | composer.c(f3) | composer.c(f2);
                    Object objX9 = composer.x();
                    if (zY9 || objX9 == composer$Companion$Empty$1) {
                        objX9 = new lk(f3, f2, 4, repairListBffFragment);
                        composer.q(objX9);
                    }
                    RepairListBffComposableKt.a(repairBffViewModelP, function0, function1, function2, function3, function4, function5, function6, function7, (Function1) objX9, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                final RepairListFragment repairListFragment = (RepairListFragment) fragment;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                RepairListFragment.Companion companion2 = RepairListFragment.L;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    RepairViewModel repairViewModelP = repairListFragment.P();
                    boolean zY10 = composer2.y(repairListFragment);
                    Object objX10 = composer2.x();
                    if (zY10 || objX10 == composer$Companion$Empty$1) {
                        objX10 = new Function0() { // from class: vs0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i4;
                                RepairListFragment repairListFragment2 = repairListFragment;
                                switch (i6) {
                                    case 0:
                                        RepairListFragment.Companion companion3 = RepairListFragment.L;
                                        repairListFragment2.P().d(DistantRepairTrackingUiModel.RepairListHowToCreateClickedEvent.f57452a);
                                        String str = ((RepairsViewState) repairListFragment2.P().getI().getValue()).n.d;
                                        if (str != null) {
                                            RepairRouter repairRouterO = repairListFragment2.O();
                                            FragmentActivity fragmentActivityRequireActivity = repairListFragment2.requireActivity();
                                            if (fragmentActivityRequireActivity != null) {
                                                WebViewRouter.b(repairRouterO.f63494a, fragmentActivityRequireActivity, str, false, 120);
                                            }
                                        }
                                        return Unit.f71739a;
                                    case 1:
                                        RepairListFragment.Companion companion4 = RepairListFragment.L;
                                        repairListFragment2.O().d(repairListFragment2.requireActivity());
                                        return Unit.f71739a;
                                    default:
                                        RepairListFragment.Companion companion5 = RepairListFragment.L;
                                        String str2 = ((RepairsViewState) repairListFragment2.P().getI().getValue()).n.f64008i;
                                        repairListFragment2.P().d(new DistantRepairTrackingUiModel.DiscoverServicesCardClickEvent(str2 == null ? "" : str2));
                                        if (str2 != null) {
                                            ContributionLinkNavigator contributionLinkNavigator = repairListFragment2.I;
                                            if (contributionLinkNavigator == null) {
                                                Intrinsics.h("contributionLinkNavigator");
                                                throw null;
                                            }
                                            FragmentActivity fragmentActivityRequireActivity2 = repairListFragment2.requireActivity();
                                            fragmentActivityRequireActivity2.getClass();
                                            ContributionLinkNavigator.a(contributionLinkNavigator, fragmentActivityRequireActivity2, new ContributionLinkUiModel.ImmersiveArticle(str2), null, null, null, 16);
                                        }
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer2.q(objX10);
                    }
                    Function0 function8 = (Function0) objX10;
                    boolean zY11 = composer2.y(repairListFragment);
                    Object objX11 = composer2.x();
                    if (zY11 || objX11 == composer$Companion$Empty$1) {
                        objX11 = new Function0() { // from class: vs0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i5;
                                RepairListFragment repairListFragment2 = repairListFragment;
                                switch (i6) {
                                    case 0:
                                        RepairListFragment.Companion companion3 = RepairListFragment.L;
                                        repairListFragment2.P().d(DistantRepairTrackingUiModel.RepairListHowToCreateClickedEvent.f57452a);
                                        String str = ((RepairsViewState) repairListFragment2.P().getI().getValue()).n.d;
                                        if (str != null) {
                                            RepairRouter repairRouterO = repairListFragment2.O();
                                            FragmentActivity fragmentActivityRequireActivity = repairListFragment2.requireActivity();
                                            if (fragmentActivityRequireActivity != null) {
                                                WebViewRouter.b(repairRouterO.f63494a, fragmentActivityRequireActivity, str, false, 120);
                                            }
                                        }
                                        return Unit.f71739a;
                                    case 1:
                                        RepairListFragment.Companion companion4 = RepairListFragment.L;
                                        repairListFragment2.O().d(repairListFragment2.requireActivity());
                                        return Unit.f71739a;
                                    default:
                                        RepairListFragment.Companion companion5 = RepairListFragment.L;
                                        String str2 = ((RepairsViewState) repairListFragment2.P().getI().getValue()).n.f64008i;
                                        repairListFragment2.P().d(new DistantRepairTrackingUiModel.DiscoverServicesCardClickEvent(str2 == null ? "" : str2));
                                        if (str2 != null) {
                                            ContributionLinkNavigator contributionLinkNavigator = repairListFragment2.I;
                                            if (contributionLinkNavigator == null) {
                                                Intrinsics.h("contributionLinkNavigator");
                                                throw null;
                                            }
                                            FragmentActivity fragmentActivityRequireActivity2 = repairListFragment2.requireActivity();
                                            fragmentActivityRequireActivity2.getClass();
                                            ContributionLinkNavigator.a(contributionLinkNavigator, fragmentActivityRequireActivity2, new ContributionLinkUiModel.ImmersiveArticle(str2), null, null, null, 16);
                                        }
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer2.q(objX11);
                    }
                    Function0 function9 = (Function0) objX11;
                    boolean zY12 = composer2.y(repairListFragment);
                    Object objX12 = composer2.x();
                    if (zY12 || objX12 == composer$Companion$Empty$1) {
                        RepairListFragment$onCreateView$1$1$1$1$3$1 repairListFragment$onCreateView$1$1$1$1$3$1 = new RepairListFragment$onCreateView$1$1$1$1$3$1(0, repairListFragment, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                        composer2.q(repairListFragment$onCreateView$1$1$1$1$3$1);
                        objX12 = repairListFragment$onCreateView$1$1$1$1$3$1;
                    }
                    Function0 function10 = (Function0) ((KFunction) objX12);
                    boolean zY13 = composer2.y(repairListFragment);
                    Object objX13 = composer2.x();
                    if (zY13 || objX13 == composer$Companion$Empty$1) {
                        objX13 = new Function1() { // from class: ws0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                FragmentManager supportFragmentManager;
                                int i6 = i4;
                                RepairListFragment repairListFragment2 = repairListFragment;
                                switch (i6) {
                                    case 0:
                                        CareServiceUiModel careServiceUiModel = (CareServiceUiModel) obj3;
                                        RepairListFragment.Companion companion3 = RepairListFragment.L;
                                        careServiceUiModel.getClass();
                                        String str = careServiceUiModel.l;
                                        SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str);
                                        if (str.length() <= 0) {
                                            skuIdUiModel = null;
                                        }
                                        String str2 = skuIdUiModel != null ? skuIdUiModel.f61764b : null;
                                        if (str2 != null) {
                                            repairListFragment2.P().d(new DistantRepairTrackingUiModel.RepairListItemClickedEvent(str2, careServiceUiModel.q, null));
                                        }
                                        repairListFragment2.O();
                                        FragmentActivity fragmentActivityRequireActivity = repairListFragment2.requireActivity();
                                        if (fragmentActivityRequireActivity != null && (supportFragmentManager = fragmentActivityRequireActivity.getSupportFragmentManager()) != null) {
                                            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                                            fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                                            RepairDetailsFragment.P.getClass();
                                            RepairDetailsFragment repairDetailsFragment = new RepairDetailsFragment();
                                            Bundle bundle = new Bundle();
                                            bundle.putParcelable("CARE_SERVICE", careServiceUiModel);
                                            repairDetailsFragment.setArguments(bundle);
                                            String str3 = RepairDetailsFragment.Q;
                                            fragmentTransactionD.i(R.id.fragment_container, repairDetailsFragment, str3, 1);
                                            fragmentTransactionD.d(str3);
                                            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivityRequireActivity);
                                            fragmentTransactionD.e();
                                        }
                                        break;
                                    default:
                                        String str4 = (String) obj3;
                                        RepairListFragment.Companion companion4 = RepairListFragment.L;
                                        str4.getClass();
                                        repairListFragment2.P().d(DistantRepairTrackingUiModel.RepairListTrackShipmentClickedEvent.f57457a);
                                        String str5 = ((RepairsViewState) repairListFragment2.P().getI().getValue()).n.f64005e;
                                        if (str5 != null) {
                                            repairListFragment2.O();
                                            RepairRouter.k(repairListFragment2.requireActivity(), String.format(str5, Arrays.copyOf(new Object[]{str4}, 1)));
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX13);
                    }
                    Function1 function11 = (Function1) objX13;
                    boolean zY14 = composer2.y(repairListFragment);
                    Object objX14 = composer2.x();
                    if (zY14 || objX14 == composer$Companion$Empty$1) {
                        objX14 = new Function1() { // from class: ws0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                FragmentManager supportFragmentManager;
                                int i6 = i5;
                                RepairListFragment repairListFragment2 = repairListFragment;
                                switch (i6) {
                                    case 0:
                                        CareServiceUiModel careServiceUiModel = (CareServiceUiModel) obj3;
                                        RepairListFragment.Companion companion3 = RepairListFragment.L;
                                        careServiceUiModel.getClass();
                                        String str = careServiceUiModel.l;
                                        SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str);
                                        if (str.length() <= 0) {
                                            skuIdUiModel = null;
                                        }
                                        String str2 = skuIdUiModel != null ? skuIdUiModel.f61764b : null;
                                        if (str2 != null) {
                                            repairListFragment2.P().d(new DistantRepairTrackingUiModel.RepairListItemClickedEvent(str2, careServiceUiModel.q, null));
                                        }
                                        repairListFragment2.O();
                                        FragmentActivity fragmentActivityRequireActivity = repairListFragment2.requireActivity();
                                        if (fragmentActivityRequireActivity != null && (supportFragmentManager = fragmentActivityRequireActivity.getSupportFragmentManager()) != null) {
                                            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                                            fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                                            RepairDetailsFragment.P.getClass();
                                            RepairDetailsFragment repairDetailsFragment = new RepairDetailsFragment();
                                            Bundle bundle = new Bundle();
                                            bundle.putParcelable("CARE_SERVICE", careServiceUiModel);
                                            repairDetailsFragment.setArguments(bundle);
                                            String str3 = RepairDetailsFragment.Q;
                                            fragmentTransactionD.i(R.id.fragment_container, repairDetailsFragment, str3, 1);
                                            fragmentTransactionD.d(str3);
                                            FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivityRequireActivity);
                                            fragmentTransactionD.e();
                                        }
                                        break;
                                    default:
                                        String str4 = (String) obj3;
                                        RepairListFragment.Companion companion4 = RepairListFragment.L;
                                        str4.getClass();
                                        repairListFragment2.P().d(DistantRepairTrackingUiModel.RepairListTrackShipmentClickedEvent.f57457a);
                                        String str5 = ((RepairsViewState) repairListFragment2.P().getI().getValue()).n.f64005e;
                                        if (str5 != null) {
                                            repairListFragment2.O();
                                            RepairRouter.k(repairListFragment2.requireActivity(), String.format(str5, Arrays.copyOf(new Object[]{str4}, 1)));
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX14);
                    }
                    Function1 function12 = (Function1) objX14;
                    boolean zY15 = composer2.y(repairListFragment);
                    Object objX15 = composer2.x();
                    if (zY15 || objX15 == composer$Companion$Empty$1) {
                        objX15 = new Function1<CareServiceIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListFragment$onCreateView$1$1$1$1$6$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                String str = ((CareServiceIdUiModel) obj3).f64060b;
                                str.getClass();
                                RepairListFragment.Companion companion3 = RepairListFragment.L;
                                RepairListFragment repairListFragment2 = repairListFragment;
                                repairListFragment2.P().d(DistantRepairTrackingUiModel.RepairListAcceptEstimateClickedEvent.f57451a);
                                repairListFragment2.O().g(repairListFragment2.requireActivity(), str);
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX15);
                    }
                    Function1 function13 = (Function1) objX15;
                    boolean zY16 = composer2.y(repairListFragment);
                    Object objX16 = composer2.x();
                    if (zY16 || objX16 == composer$Companion$Empty$1) {
                        objX16 = new Function1<CareServiceIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListFragment$onCreateView$1$1$1$1$7$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                String str = ((CareServiceIdUiModel) obj3).f64060b;
                                str.getClass();
                                RepairListFragment repairListFragment2 = repairListFragment;
                                repairListFragment2.O().c(repairListFragment2.requireActivity(), str);
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX16);
                    }
                    Function1 function14 = (Function1) objX16;
                    boolean zY17 = composer2.y(repairListFragment);
                    Object objX17 = composer2.x();
                    if (zY17 || objX17 == composer$Companion$Empty$1) {
                        objX17 = new Function0() { // from class: vs0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i3;
                                RepairListFragment repairListFragment2 = repairListFragment;
                                switch (i6) {
                                    case 0:
                                        RepairListFragment.Companion companion3 = RepairListFragment.L;
                                        repairListFragment2.P().d(DistantRepairTrackingUiModel.RepairListHowToCreateClickedEvent.f57452a);
                                        String str = ((RepairsViewState) repairListFragment2.P().getI().getValue()).n.d;
                                        if (str != null) {
                                            RepairRouter repairRouterO = repairListFragment2.O();
                                            FragmentActivity fragmentActivityRequireActivity = repairListFragment2.requireActivity();
                                            if (fragmentActivityRequireActivity != null) {
                                                WebViewRouter.b(repairRouterO.f63494a, fragmentActivityRequireActivity, str, false, 120);
                                            }
                                        }
                                        return Unit.f71739a;
                                    case 1:
                                        RepairListFragment.Companion companion4 = RepairListFragment.L;
                                        repairListFragment2.O().d(repairListFragment2.requireActivity());
                                        return Unit.f71739a;
                                    default:
                                        RepairListFragment.Companion companion5 = RepairListFragment.L;
                                        String str2 = ((RepairsViewState) repairListFragment2.P().getI().getValue()).n.f64008i;
                                        repairListFragment2.P().d(new DistantRepairTrackingUiModel.DiscoverServicesCardClickEvent(str2 == null ? "" : str2));
                                        if (str2 != null) {
                                            ContributionLinkNavigator contributionLinkNavigator = repairListFragment2.I;
                                            if (contributionLinkNavigator == null) {
                                                Intrinsics.h("contributionLinkNavigator");
                                                throw null;
                                            }
                                            FragmentActivity fragmentActivityRequireActivity2 = repairListFragment2.requireActivity();
                                            fragmentActivityRequireActivity2.getClass();
                                            ContributionLinkNavigator.a(contributionLinkNavigator, fragmentActivityRequireActivity2, new ContributionLinkUiModel.ImmersiveArticle(str2), null, null, null, 16);
                                        }
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer2.q(objX17);
                    }
                    Function0 function15 = (Function0) objX17;
                    boolean zY18 = composer2.y(repairListFragment) | composer2.c(f3) | composer2.c(f2);
                    Object objX18 = composer2.x();
                    if (zY18 || objX18 == composer$Companion$Empty$1) {
                        objX18 = new lk(f3, f2, 5, repairListFragment);
                        composer2.q(objX18);
                    }
                    RepairListComposableKt.a(repairViewModelP, function8, function9, function10, function11, function12, function13, function14, function15, (Function1) objX18, composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

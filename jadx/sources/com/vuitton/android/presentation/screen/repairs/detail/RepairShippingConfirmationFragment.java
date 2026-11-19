package com.vuitton.android.presentation.screen.repairs.detail;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.distantrepairs.DistantRepairRouter;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ll0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class RepairShippingConfirmationFragment extends Hilt_RepairShippingConfirmationFragment {
    public static final Companion J = new Companion(null);
    public static final String K = "RepairShippingConfirmationFragment";
    public final ViewModelLazy F;
    public DistantRepairRouter G;
    public LVEventSender H;
    public final Lazy I = LazyKt.b(new Function0<CareServiceIdUiModel>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairShippingConfirmationFragment$careServiceId$2
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            Parcelable parcelable;
            Bundle bundleRequireArguments = this.f63765b.requireArguments();
            bundleRequireArguments.getClass();
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) bundleRequireArguments.getParcelable("KEY_CARE_SERVICE_ID", CareServiceIdUiModel.class);
            } else {
                Parcelable parcelable2 = bundleRequireArguments.getParcelable("KEY_CARE_SERVICE_ID");
                if (!(parcelable2 instanceof CareServiceIdUiModel)) {
                    parcelable2 = null;
                }
                parcelable = (CareServiceIdUiModel) parcelable2;
            }
            CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) parcelable;
            String str = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
            if (str != null) {
                return new CareServiceIdUiModel(str);
            }
            return null;
        }
    });

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment$Companion;", "", "", "KEY_CARE_SERVICE_ID", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public RepairShippingConfirmationFragment() {
        final Function0 function0 = null;
        this.F = new ViewModelLazy(Reflection.f71922a.b(DistantRepairAssessmentViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairShippingConfirmationFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairShippingConfirmationFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairShippingConfirmationFragment$special$$inlined$activityViewModels$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.requireActivity().getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static final void O(RepairShippingConfirmationFragment repairShippingConfirmationFragment) {
        repairShippingConfirmationFragment.getClass();
        BuildersKt.c(LifecycleOwnerKt.a(repairShippingConfirmationFragment), null, null, new RepairShippingConfirmationFragment$goToCareServices$1(repairShippingConfirmationFragment, null), 3);
        if (repairShippingConfirmationFragment.G != null) {
            DistantRepairRouter.b(repairShippingConfirmationFragment.requireActivity());
        } else {
            Intrinsics.h("distantRepairRouter");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
        SystemIcons.f43533b.getClass();
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, SystemIcons.f43534c, 7, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        composeView.setContent(new ComposableLambdaImpl(1997069960, true, new ll0(this, 11)));
        return composeView;
    }
}

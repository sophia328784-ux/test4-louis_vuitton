package com.vuitton.android.presentation.screen.repairs.detail;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ln0;
import defpackage.vr0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000e²\u0006\f\u0010\r\u001a\u00020\f8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "", "topPadding", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class RepairConfirmAddressFragment extends Hilt_RepairConfirmAddressFragment {
    public static final Companion M = new Companion(null);
    public static final String N = "RepairConfirmAddressFragment";
    public final ViewModelLazy F;
    public final ViewModelLazy G;
    public RepairRouter H;
    public ContactUsNavigator I;
    public ChatAttachable J;
    public final Lazy K;
    public final ActivityResultLauncher L;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$Companion;", "", "", "KEY_SELECTED_ADDRESS_REQUEST", "Ljava/lang/String;", "KEY_SELECTED_ADDRESS_BUNDLE", "CARE_SERVICE_PAYMENT_FAILED", "CARE_SERVICE_PAYMENT_SUCCESS", "CARE_SERVICE_PAYMENT_CANCEL", "KEY_CARE_SERVICE_ID", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public RepairConfirmAddressFragment() {
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function0 = null;
        this.F = new ViewModelLazy(reflectionFactory.b(RepairViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment$special$$inlined$activityViewModels$default$2
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
        this.G = new ViewModelLazy(reflectionFactory.b(DistantRepairAssessmentViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment$special$$inlined$activityViewModels$default$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment$special$$inlined$activityViewModels$default$6
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment$special$$inlined$activityViewModels$default$5
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
        this.K = LazyKt.b(new Function0<CareServiceIdUiModel>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment$careServiceId$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Parcelable parcelable;
                Bundle bundleRequireArguments = this.f63678b.requireArguments();
                bundleRequireArguments.getClass();
                if (Build.VERSION.SDK_INT >= 33) {
                    parcelable = (Parcelable) bundleRequireArguments.getParcelable("CARE_SERVICE_ID", CareServiceIdUiModel.class);
                } else {
                    Parcelable parcelable2 = bundleRequireArguments.getParcelable("CARE_SERVICE_ID");
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
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ln0(this, 6));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.L = activityResultLauncherRegisterForActivityResult;
    }

    public static Unit O(RepairConfirmAddressFragment repairConfirmAddressFragment, String str, Bundle bundle) {
        Parcelable parcelable;
        str.getClass();
        bundle.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundle.getParcelable("SELECTED_ADDRESS_BUNDLE", AddressUiModel.class);
        } else {
            Parcelable parcelable2 = bundle.getParcelable("SELECTED_ADDRESS_BUNDLE");
            if (!(parcelable2 instanceof AddressUiModel)) {
                parcelable2 = null;
            }
            parcelable = (AddressUiModel) parcelable2;
        }
        AddressUiModel addressUiModel = (AddressUiModel) parcelable;
        if (addressUiModel != null) {
            repairConfirmAddressFragment.R().A0(null, addressUiModel);
        }
        return Unit.f71739a;
    }

    public static Unit P(RepairConfirmAddressFragment repairConfirmAddressFragment, String str, Bundle bundle) {
        Parcelable parcelable;
        str.getClass();
        bundle.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundle.getParcelable("SELECTED_ADDRESS_BUNDLE", AddressUiModel.class);
        } else {
            Parcelable parcelable2 = bundle.getParcelable("SELECTED_ADDRESS_BUNDLE");
            if (!(parcelable2 instanceof AddressUiModel)) {
                parcelable2 = null;
            }
            parcelable = (AddressUiModel) parcelable2;
        }
        AddressUiModel addressUiModel = (AddressUiModel) parcelable;
        if (addressUiModel != null) {
            repairConfirmAddressFragment.R().A0(addressUiModel, null);
        }
        return Unit.f71739a;
    }

    public final RepairRouter Q() {
        RepairRouter repairRouter = this.H;
        if (repairRouter != null) {
            return repairRouter;
        }
        Intrinsics.h("repairRouter");
        throw null;
    }

    public final DistantRepairAssessmentViewModel R() {
        return (DistantRepairAssessmentViewModel) this.G.getF71699b();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        SystemIcons.f43533b.getClass();
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, SystemIcons.f43534c, 7, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
        composeView.setContent(new ComposableLambdaImpl(-2020194882, true, new vr0(this, 0)));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        Context context = getContext();
        if (context != null) {
            View view = getView();
            ContextExtKt.d(context, view != null ? view.getWindowToken() : null);
        }
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.repairs.detail.Hilt_RepairConfirmAddressFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        RepairViewModel repairViewModel = (RepairViewModel) this.F.getF71699b();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) this.K.getF71699b();
        String str = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
        companion.getClass();
        if (str == null) {
            str = CareServiceIdUiModel.d;
        }
        repairViewModel.T0(str);
        R().b6(null);
    }
}

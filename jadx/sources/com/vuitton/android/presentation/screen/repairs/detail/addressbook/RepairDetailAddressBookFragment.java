package com.vuitton.android.presentation.screen.repairs.detail.addressbook;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ll0;
import defpackage.xn0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class RepairDetailAddressBookFragment extends Hilt_RepairDetailAddressBookFragment {
    public static final Companion L = new Companion(null);
    public static final String M = "RepairDetailAddressBookFragment";
    public final ViewModelLazy F;
    public RepairRouter G;
    public LVEventSender H;
    public final Lazy I;
    public final Lazy J;
    public final ActivityResultLauncher K;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment$Companion;", "", "", "KEY_PREVIOUS_SELECTED_ADDRESS", "Ljava/lang/String;", "REPAIR_TRANSACTION_ID", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public RepairDetailAddressBookFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function0.mo47invoke();
            }
        });
        final Function0 function1 = null;
        this.F = new ViewModelLazy(Reflection.f71922a.b(DistantRepairAssessmentViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? this.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
        this.I = LazyKt.b(new Function0<CareServiceTransactionIdUiModel>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment$repairTransactionId$2
            /* JADX WARN: Code duplicated, block: B:14:0x002c  */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                String str;
                Parcelable parcelable;
                Bundle arguments = this.f63776b.getArguments();
                if (arguments == null) {
                    str = null;
                } else {
                    if (Build.VERSION.SDK_INT >= 33) {
                        parcelable = (Parcelable) arguments.getParcelable("REPAIR_TRANSACTION_ID", CareServiceTransactionIdUiModel.class);
                    } else {
                        Parcelable parcelable2 = arguments.getParcelable("REPAIR_TRANSACTION_ID");
                        if (!(parcelable2 instanceof CareServiceTransactionIdUiModel)) {
                            parcelable2 = null;
                        }
                        parcelable = (CareServiceTransactionIdUiModel) parcelable2;
                    }
                    CareServiceTransactionIdUiModel careServiceTransactionIdUiModel = (CareServiceTransactionIdUiModel) parcelable;
                    if (careServiceTransactionIdUiModel != null) {
                        str = careServiceTransactionIdUiModel.f64072b;
                    } else {
                        str = null;
                    }
                }
                if (str != null) {
                    return new CareServiceTransactionIdUiModel(str);
                }
                return null;
            }
        });
        this.J = LazyKt.b(new xn0(this, 12));
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.vuitton.android.presentation.screen.repairs.detail.addressbook.a
            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                RepairDetailAddressBookFragment repairDetailAddressBookFragment = this.f63782b;
                ViewModelLazy viewModelLazy = repairDetailAddressBookFragment.F;
                ActivityResult activityResult = (ActivityResult) obj;
                RepairDetailAddressBookFragment.Companion companion = RepairDetailAddressBookFragment.L;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    ((DistantRepairAssessmentViewModel) viewModelLazy.getF71699b()).b6(((DistantRepairAssessmentViewModel) viewModelLazy.getF71699b()).z1());
                    BuildersKt.c(LifecycleOwnerKt.a(repairDetailAddressBookFragment), null, null, new RepairDetailAddressBookFragment$onCrudAddressSuccess$1(repairDetailAddressBookFragment, null), 3);
                }
            }
        });
        activityResultLauncherRegisterForActivityResult.getClass();
        this.K = activityResultLauncherRegisterForActivityResult;
    }

    public static AddressUiModel O(RepairDetailAddressBookFragment repairDetailAddressBookFragment) {
        Parcelable parcelable;
        Bundle arguments = repairDetailAddressBookFragment.getArguments();
        if (arguments == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) arguments.getParcelable("PREVIOUS_SELECTED_ADDRESS", AddressUiModel.class);
        } else {
            Parcelable parcelable2 = arguments.getParcelable("PREVIOUS_SELECTED_ADDRESS");
            parcelable = (AddressUiModel) (parcelable2 instanceof AddressUiModel ? parcelable2 : null);
        }
        return (AddressUiModel) parcelable;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
        composeView.setContent(new ComposableLambdaImpl(-2067569533, true, new ll0(this, 8)));
        return composeView;
    }

    @Override // com.vuitton.android.presentation.screen.repairs.detail.addressbook.Hilt_RepairDetailAddressBookFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = (DistantRepairAssessmentViewModel) this.F.getF71699b();
        AddressUiModel addressUiModel = (AddressUiModel) this.J.getF71699b();
        distantRepairAssessmentViewModel.b6(addressUiModel != null ? addressUiModel.f52673b : null);
    }
}

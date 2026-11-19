package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
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
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.screen.distantrepairs.DistantRepairRouter;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.xt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class DistantRepairAssessmentFragment extends Hilt_DistantRepairAssessmentFragment {
    public static final Companion M = new Companion(null);
    public static final String N = "DistantRepairAssessmentFragment";
    public final ViewModelLazy F;
    public DistantRepairRouter G;
    public RepairRouter H;
    public ContactUsNavigator I;
    public ChatAttachable J;
    public final ActivityResultLauncher K;
    public final ActivityResultLauncher L;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$Companion;", "", "", "CARESERVICE_ID", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public DistantRepairAssessmentFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment$special$$inlined$viewModels$default$2
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
        this.F = new ViewModelLazy(Reflection.f71922a.b(DistantRepairAssessmentViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment$special$$inlined$viewModels$default$4
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
        final int i2 = 0;
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: wt

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DistantRepairAssessmentFragment f80939c;

            {
                this.f80939c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                int i3 = i2;
                DistantRepairAssessmentFragment distantRepairAssessmentFragment = this.f80939c;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i3) {
                    case 0:
                        DistantRepairAssessmentFragment.Companion companion = DistantRepairAssessmentFragment.M;
                        activityResult.getClass();
                        if (activityResult.f731b == -1) {
                            distantRepairAssessmentFragment.O().b6(null);
                        }
                        break;
                    default:
                        DistantRepairAssessmentFragment.Companion companion2 = DistantRepairAssessmentFragment.M;
                        activityResult.getClass();
                        Intent intent = activityResult.f732c;
                        if ((intent != null ? intent.getStringExtra("SELECTED_CANCELLATION_REASON_ID") : null) != null) {
                            distantRepairAssessmentFragment.O().K0(intent != null ? intent.getStringExtra("SELECTED_CANCELLATION_REASON_ID") : null);
                        }
                        break;
                }
            }
        });
        activityResultLauncherRegisterForActivityResult.getClass();
        this.K = activityResultLauncherRegisterForActivityResult;
        final int i3 = 1;
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult2 = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: wt

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DistantRepairAssessmentFragment f80939c;

            {
                this.f80939c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                int i4 = i3;
                DistantRepairAssessmentFragment distantRepairAssessmentFragment = this.f80939c;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i4) {
                    case 0:
                        DistantRepairAssessmentFragment.Companion companion = DistantRepairAssessmentFragment.M;
                        activityResult.getClass();
                        if (activityResult.f731b == -1) {
                            distantRepairAssessmentFragment.O().b6(null);
                        }
                        break;
                    default:
                        DistantRepairAssessmentFragment.Companion companion2 = DistantRepairAssessmentFragment.M;
                        activityResult.getClass();
                        Intent intent = activityResult.f732c;
                        if ((intent != null ? intent.getStringExtra("SELECTED_CANCELLATION_REASON_ID") : null) != null) {
                            distantRepairAssessmentFragment.O().K0(intent != null ? intent.getStringExtra("SELECTED_CANCELLATION_REASON_ID") : null);
                        }
                        break;
                }
            }
        });
        activityResultLauncherRegisterForActivityResult2.getClass();
        this.L = activityResultLauncherRegisterForActivityResult2;
    }

    public final DistantRepairAssessmentViewModel O() {
        return (DistantRepairAssessmentViewModel) this.F.getF71699b();
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
        composeView.setContent(new ComposableLambdaImpl(1871034468, true, new xt(this, 0)));
        return composeView;
    }
}

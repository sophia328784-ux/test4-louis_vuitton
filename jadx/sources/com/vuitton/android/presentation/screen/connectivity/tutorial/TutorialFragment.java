package com.vuitton.android.presentation.screen.connectivity.tutorial;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentConnectivityTutorialBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.views.divider.SimpleHorizontalDivider;
import com.vuitton.foundation.model.domain.model.connectivity.common.Tutorial;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.es0;
import defpackage.f31;
import defpackage.hv0;
import defpackage.p11;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class TutorialFragment extends Hilt_TutorialFragment {
    public final FragmentViewBindingDelegate F;
    public final ViewModelLazy G;
    public final Lazy H;
    public static final /* synthetic */ KProperty[] J = {Reflection.f71922a.h(new PropertyReference1Impl(TutorialFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;", 0))};
    public static final Companion I = new Companion(null);
    public static final String K = "TutorialFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;", "", "", "KEY_TUTORIAL_TYPE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56657a;

        static {
            int[] iArr = new int[TutorialType.values().length];
            try {
                iArr[TutorialType.EARPHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TutorialType.HORIZON_SPEAKER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TutorialType.WATCH_V3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f56657a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<Result<? extends List<? extends Tutorial>>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Object obj2 = ((Result) obj).f71708b;
            TutorialFragment tutorialFragment = (TutorialFragment) this.receiver;
            Companion companion = TutorialFragment.I;
            tutorialFragment.getClass();
            Result.Companion companion2 = Result.INSTANCE;
            boolean z = obj2 instanceof Result.Failure;
            if (z) {
                FragmentActivity activity = tutorialFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new f31(tutorialFragment, 2));
                }
            } else {
                if (z) {
                    obj2 = null;
                }
                List list = (List) obj2;
                if (list != null) {
                    RecyclerView.Adapter adapter = ((FragmentConnectivityTutorialBinding) tutorialFragment.F.c(tutorialFragment, TutorialFragment.J[0])).f51236c.getAdapter();
                    TutorialAdapter tutorialAdapter = adapter instanceof TutorialAdapter ? (TutorialAdapter) adapter : null;
                    if (tutorialAdapter != null) {
                        ArrayList arrayList = tutorialAdapter.f56653e;
                        arrayList.clear();
                        arrayList.addAll(list);
                        tutorialAdapter.notifyDataSetChanged();
                    }
                }
            }
            return Unit.f71739a;
        }
    }

    public TutorialFragment() {
        super(R.layout.fragment_connectivity_tutorial);
        this.F = FragmentExtKt.d(this, TutorialFragment$binding$2.f56658b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment$special$$inlined$viewModels$default$2
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
        this.G = new ViewModelLazy(Reflection.f71922a.b(TutorialViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment$special$$inlined$viewModels$default$4
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
        this.H = LazyKt.b(new hv0(this, 23));
    }

    public static TutorialType O(TutorialFragment tutorialFragment) {
        Object serializable;
        Bundle arguments = tutorialFragment.getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializable = arguments.getSerializable("TUTORIAL_TYPE", TutorialType.class);
            } else {
                Object serializable2 = arguments.getSerializable("TUTORIAL_TYPE");
                if (!(serializable2 instanceof TutorialType)) {
                    serializable2 = null;
                }
                serializable = (TutorialType) serializable2;
            }
            TutorialType tutorialType = (TutorialType) serializable;
            if (tutorialType != null) {
                return tutorialType;
            }
        }
        return TutorialType.EARPHONE;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.tutorial.Hilt_TutorialFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        FragmentConnectivityTutorialBinding fragmentConnectivityTutorialBinding = (FragmentConnectivityTutorialBinding) this.F.c(this, J[0]);
        FragmentExtKt.a(this, fragmentConnectivityTutorialBinding.f51235b.f51464c.f51465b, null, 6);
        AppCompatTextView appCompatTextView = fragmentConnectivityTutorialBinding.f51235b.f51464c.f51466c;
        appCompatTextView.setText(getString(R.string.luggage_tutorial));
        appCompatTextView.setAccessibilityHeading(true);
        RecyclerView recyclerView = fragmentConnectivityTutorialBinding.f51236c;
        Lazy lazy = this.H;
        recyclerView.setAdapter(new TutorialAdapter((TutorialType) lazy.getF71699b(), new es0(this, recyclerView, 21), new p11(this, 11)));
        recyclerView.addItemDecoration(new SimpleHorizontalDivider(ContextCompat.getColor(requireContext(), R.color.westargrey70)));
        ViewModelLazy viewModelLazy = this.G;
        ((TutorialViewModel) viewModelLazy.getF71699b()).U2((TutorialType) lazy.getF71699b());
        ((TutorialViewModel) viewModelLazy.getF71699b()).getF56668e().observe(getViewLifecycleOwner(), new TutorialFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass2(1, this, TutorialFragment.class, "observeTutorialList", "observeTutorialList(Ljava/lang/Object;)V", 0)));
        int i2 = WhenMappings.f56657a[((TutorialType) lazy.getF71699b()).ordinal()];
        if (i2 == 1) {
            ((TutorialViewModel) viewModelLazy.getF71699b()).Pb(EarphoneTrackingUiModel.TutorialScreen.f55982a);
        } else {
            if (i2 == 2 || i2 == 3) {
                return;
            }
            v40.g();
        }
    }
}

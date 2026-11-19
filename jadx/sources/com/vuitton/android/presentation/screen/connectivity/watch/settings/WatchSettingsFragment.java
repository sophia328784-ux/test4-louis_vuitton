package com.vuitton.android.presentation.screen.connectivity.watch.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchSettingsBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.WatchTutorialsActivity;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.c61;
import defpackage.e61;
import defpackage.f61;
import defpackage.hv0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchSettingsFragment extends Hilt_WatchSettingsFragment implements WatchSettingsView {
    public final FragmentViewBindingDelegate F;
    public final ViewModelLazy G;
    public final Lazy H;
    public WatchActivityRouter I;
    public static final /* synthetic */ KProperty[] K = {Reflection.f71922a.h(new PropertyReference1Impl(WatchSettingsFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;", 0))};
    public static final Companion J = new Companion(null);
    public static final String L = "WatchSettingsFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;", "", "", "TAG", "Ljava/lang/String;", "KEY_WATCH", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WatchSettingsFragment() {
        super(R.layout.fragment_watch_settings);
        this.F = FragmentExtKt.d(this, WatchSettingsFragment$binding$2.f56755b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment$special$$inlined$viewModels$default$2
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
        this.G = new ViewModelLazy(Reflection.f71922a.b(WatchSettingsViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment$special$$inlined$viewModels$default$4
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
        this.H = LazyKt.b(new hv0(this, 27));
    }

    public static WatchUiModel O(WatchSettingsFragment watchSettingsFragment) {
        Parcelable parcelable;
        Bundle arguments = watchSettingsFragment.getArguments();
        if (arguments == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) arguments.getParcelable("WATCH", WatchUiModel.class);
        } else {
            Parcelable parcelable2 = arguments.getParcelable("WATCH");
            parcelable = (WatchUiModel) (parcelable2 instanceof WatchUiModel ? parcelable2 : null);
        }
        return (WatchUiModel) parcelable;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsView
    public final void E(Throwable th) {
        th.getClass();
        P().f51371e.f51459b.setVisibility(8);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new f61(this, 1));
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsView
    public final void G() {
        FragmentWatchSettingsBinding fragmentWatchSettingsBindingP = P();
        fragmentWatchSettingsBindingP.f51371e.f51459b.setVisibility(8);
        fragmentWatchSettingsBindingP.f51376k.setText(fragmentWatchSettingsBindingP.l.getText());
        S();
    }

    public final FragmentWatchSettingsBinding P() {
        return (FragmentWatchSettingsBinding) this.F.c(this, K[0]);
    }

    public final WatchSettingsViewModel Q() {
        return (WatchSettingsViewModel) this.G.getF71699b();
    }

    public final WatchUiModel R() {
        return (WatchUiModel) this.H.getF71699b();
    }

    public final void S() {
        FragmentWatchSettingsBinding fragmentWatchSettingsBindingP = P();
        fragmentWatchSettingsBindingP.f51376k.setVisibility(0);
        EditText editText = fragmentWatchSettingsBindingP.l;
        editText.setVisibility(8);
        Context context = getContext();
        if (context != null) {
            Object systemService = context.getSystemService("input_method");
            systemService.getClass();
            ((InputMethodManager) systemService).showSoftInput(editText, 1);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsView
    public final void j(Throwable th) {
        FragmentWatchSettingsBinding fragmentWatchSettingsBindingP = P();
        fragmentWatchSettingsBindingP.f51371e.f51459b.setVisibility(8);
        fragmentWatchSettingsBindingP.l.setText(fragmentWatchSettingsBindingP.f51376k.getText());
        S();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new f61(this, 0));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WatchSettingsViewModel watchSettingsViewModelQ = Q();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        watchSettingsViewModelQ.yc(viewLifecycleOwner, this);
        Q().g.a(WatchTrackingUiModelKt.a(WatchTrackingUiModel.WatchSettingsPageScreen.f56749a));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        WatchSettingsViewModel watchSettingsViewModelQ = Q();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        watchSettingsViewModelQ.Ac(viewLifecycleOwner);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.settings.Hilt_WatchSettingsFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String str;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        ToolbarTitleBinding toolbarTitleBinding = P().m.f51464c;
        FragmentExtKt.a(this, toolbarTitleBinding.f51465b, null, 6);
        AppCompatTextView appCompatTextView = toolbarTitleBinding.f51466c;
        appCompatTextView.setText(getString(R.string.p12_settings_title));
        final int i2 = 1;
        appCompatTextView.setAccessibilityHeading(true);
        FragmentWatchSettingsBinding fragmentWatchSettingsBindingP = P();
        fragmentWatchSettingsBindingP.d.setAccessibilityHeading(true);
        fragmentWatchSettingsBindingP.n.setAccessibilityHeading(true);
        fragmentWatchSettingsBindingP.g.setAccessibilityHeading(true);
        final FragmentWatchSettingsBinding fragmentWatchSettingsBindingP2 = P();
        TextView textView = fragmentWatchSettingsBindingP2.f51376k;
        WatchUiModel watchUiModelR = R();
        textView.setText(watchUiModelR != null ? watchUiModelR.f56705f : null);
        ViewExtKt.d(fragmentWatchSettingsBindingP2.f51369b, new e61(fragmentWatchSettingsBindingP2, this));
        fragmentWatchSettingsBindingP2.l.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.settings.a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                String str2;
                WatchSettingsFragment.Companion companion = WatchSettingsFragment.J;
                if (i3 != 6) {
                    return false;
                }
                fragmentWatchSettingsBindingP2.f51371e.f51459b.setVisibility(0);
                WatchSettingsFragment watchSettingsFragment = this;
                WatchUiModel watchUiModelR2 = watchSettingsFragment.R();
                if (watchUiModelR2 == null || (str2 = watchUiModelR2.f56702b) == null) {
                    return true;
                }
                WatchSettingsViewModel watchSettingsViewModelQ = watchSettingsFragment.Q();
                String string = textView2.getText().toString();
                string.getClass();
                BuildersKt.c(ViewModelKt.a(watchSettingsViewModelQ), null, null, new WatchSettingsViewModel$renameWatch$1(watchSettingsViewModelQ, str2, string, null), 3);
                return true;
            }
        });
        WatchUiModel watchUiModelR2 = R();
        final int i3 = 0;
        if (watchUiModelR2 != null) {
            Q().f56768i.observe(getViewLifecycleOwner(), new WatchSettingsFragment$sam$androidx_lifecycle_Observer$0(new c61(this, watchUiModelR2, 0)));
            WatchSettingsViewModel watchSettingsViewModelQ = Q();
            CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(watchSettingsViewModelQ);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            BuildersKt.c(closeableCoroutineScopeA, DefaultIoScheduler.f75161b, null, new WatchSettingsViewModel$getProfile$1(watchSettingsViewModelQ, null), 2);
        }
        TextView textView2 = fragmentWatchSettingsBindingP.f51373h;
        WatchUiModel watchUiModelR3 = R();
        if (watchUiModelR3 == null || (str = watchUiModelR3.g) == null) {
            str = null;
        }
        textView2.setText(str);
        TextView textView3 = fragmentWatchSettingsBindingP.f51372f;
        WatchUiModel watchUiModelR4 = R();
        textView3.setText(watchUiModelR4 != null ? watchUiModelR4.d : null);
        ViewExtKt.d(fragmentWatchSettingsBindingP.o, new Function1(this) { // from class: d61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchSettingsFragment f68459c;

            {
                this.f68459c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                WatchSettingsFragment watchSettingsFragment = this.f68459c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        WatchSettingsFragment.Companion companion = WatchSettingsFragment.J;
                        view2.getClass();
                        FragmentActivity activity = watchSettingsFragment.getActivity();
                        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
                        if (appCompatActivity != null) {
                            if (watchSettingsFragment.I == null) {
                                Intrinsics.h("watchActivityRouter");
                                throw null;
                            }
                            WatchTutorialsActivity.q.getClass();
                            appCompatActivity.startActivity(new Intent(appCompatActivity, (Class<?>) WatchTutorialsActivity.class));
                        }
                        return Unit.f71739a;
                    default:
                        WatchSettingsFragment.Companion companion2 = WatchSettingsFragment.J;
                        view2.getClass();
                        FragmentActivity activity2 = watchSettingsFragment.getActivity();
                        AppCompatActivity appCompatActivity2 = activity2 instanceof AppCompatActivity ? (AppCompatActivity) activity2 : null;
                        if (appCompatActivity2 != null) {
                            if (watchSettingsFragment.I == null) {
                                Intrinsics.h("watchActivityRouter");
                                throw null;
                            }
                            FaqActivity.Companion companion3 = FaqActivity.t;
                            FaqType faqType = FaqType.WATCH_FAQ;
                            companion3.getClass();
                            appCompatActivity2.startActivity(FaqActivity.Companion.a(appCompatActivity2, faqType));
                        }
                        return Unit.f71739a;
                }
            }
        });
        ViewExtKt.d(fragmentWatchSettingsBindingP.f51375j, new Function1(this) { // from class: d61

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WatchSettingsFragment f68459c;

            {
                this.f68459c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i2;
                WatchSettingsFragment watchSettingsFragment = this.f68459c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        WatchSettingsFragment.Companion companion = WatchSettingsFragment.J;
                        view2.getClass();
                        FragmentActivity activity = watchSettingsFragment.getActivity();
                        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
                        if (appCompatActivity != null) {
                            if (watchSettingsFragment.I == null) {
                                Intrinsics.h("watchActivityRouter");
                                throw null;
                            }
                            WatchTutorialsActivity.q.getClass();
                            appCompatActivity.startActivity(new Intent(appCompatActivity, (Class<?>) WatchTutorialsActivity.class));
                        }
                        return Unit.f71739a;
                    default:
                        WatchSettingsFragment.Companion companion2 = WatchSettingsFragment.J;
                        view2.getClass();
                        FragmentActivity activity2 = watchSettingsFragment.getActivity();
                        AppCompatActivity appCompatActivity2 = activity2 instanceof AppCompatActivity ? (AppCompatActivity) activity2 : null;
                        if (appCompatActivity2 != null) {
                            if (watchSettingsFragment.I == null) {
                                Intrinsics.h("watchActivityRouter");
                                throw null;
                            }
                            FaqActivity.Companion companion3 = FaqActivity.t;
                            FaqType faqType = FaqType.WATCH_FAQ;
                            companion3.getClass();
                            appCompatActivity2.startActivity(FaqActivity.Companion.a(appCompatActivity2, faqType));
                        }
                        return Unit.f71739a;
                }
            }
        });
        ViewExtKt.d(fragmentWatchSettingsBindingP.f51374i, new e61(this, fragmentWatchSettingsBindingP));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsView
    public final void x() {
        FragmentManager supportFragmentManager;
        Q().g.a(WatchTrackingUiModelKt.a(WatchTrackingUiModel.UnpairSuccessEvent.f56745a));
        P().f51371e.f51459b.setVisibility(8);
        FragmentActivity activity = getActivity();
        if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
            supportFragmentManager.V();
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            targetFragment.onActivityResult(getTargetRequestCode(), -1, null);
        }
    }
}

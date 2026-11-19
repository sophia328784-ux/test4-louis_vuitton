package com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchTutorialCategoriesBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.watch.models.WatchTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.WatchTutorialRouter;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.c61;
import defpackage.f31;
import defpackage.r81;
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
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WatchTutorialCategoriesFragment extends Hilt_WatchTutorialCategoriesFragment {
    public final FragmentViewBindingDelegate F;
    public final ViewModelLazy G;
    public WatchTutorialRouter H;
    public static final /* synthetic */ KProperty[] J = {Reflection.f71922a.h(new PropertyReference1Impl(WatchTutorialCategoriesFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchTutorialCategoriesBinding;", 0))};
    public static final Companion I = new Companion(null);
    public static final String K = "WatchTutorialCategoriesFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<Result<? extends List<? extends WatchTutorialCategoryUi>>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Object obj2 = ((Result) obj).f71708b;
            WatchTutorialCategoriesFragment watchTutorialCategoriesFragment = (WatchTutorialCategoriesFragment) this.receiver;
            Companion companion = WatchTutorialCategoriesFragment.I;
            watchTutorialCategoriesFragment.getClass();
            Result.Companion companion2 = Result.INSTANCE;
            boolean z = obj2 instanceof Result.Failure;
            if (z) {
                FragmentActivity activity = watchTutorialCategoriesFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new f31(watchTutorialCategoriesFragment, 7));
                }
            } else {
                if (z) {
                    obj2 = null;
                }
                List<WatchTutorialCategoryUi> list = (List) obj2;
                watchTutorialCategoriesFragment.O().f51377b.removeAllViews();
                if (list != null) {
                    for (WatchTutorialCategoryUi watchTutorialCategoryUi : list) {
                        View viewInflate = LayoutInflater.from(watchTutorialCategoriesFragment.getContext()).inflate(R.layout.item_tutorial_category, (ViewGroup) watchTutorialCategoriesFragment.O().f51377b, false);
                        int i2 = R.id.category_icon;
                        ImageView imageView = (ImageView) ViewBindings.a(R.id.category_icon, viewInflate);
                        if (imageView != null) {
                            i2 = R.id.category_subtitle;
                            TextView textView = (TextView) ViewBindings.a(R.id.category_subtitle, viewInflate);
                            if (textView != null) {
                                i2 = R.id.category_title;
                                TextView textView2 = (TextView) ViewBindings.a(R.id.category_title, viewInflate);
                                if (textView2 != null) {
                                    FrameLayout frameLayout = (FrameLayout) viewInflate;
                                    View view = watchTutorialCategoriesFragment.getView();
                                    String str = watchTutorialCategoryUi.f56800b;
                                    String str2 = watchTutorialCategoryUi.d;
                                    textView2.setText(str);
                                    textView.setText(watchTutorialCategoryUi.f56801c);
                                    if (str2.length() > 0) {
                                        XmlUiKt.a(imageView, str2, 0, 0, 126);
                                    }
                                    ViewExtKt.d(view, new c61(watchTutorialCategoriesFragment, watchTutorialCategoryUi, 2));
                                    watchTutorialCategoriesFragment.O().f51377b.addView(frameLayout);
                                }
                            }
                        }
                        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                        return null;
                    }
                }
            }
            return Unit.f71739a;
        }
    }

    public WatchTutorialCategoriesFragment() {
        super(R.layout.fragment_watch_tutorial_categories);
        this.F = FragmentExtKt.d(this, WatchTutorialCategoriesFragment$binding$2.f56786b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$2
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
        this.G = new ViewModelLazy(Reflection.f71922a.b(WatchTutorialCategoriesViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$4
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
    }

    public final FragmentWatchTutorialCategoriesBinding O() {
        return (FragmentWatchTutorialCategoriesBinding) this.F.c(this, J[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((WatchTutorialCategoriesViewModel) this.G.getF71699b()).D(WatchTrackingUiModel.WatchTutorialCategoriesPageScreen.f56750a);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.Hilt_WatchTutorialCategoriesFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        FragmentWatchTutorialCategoriesBinding fragmentWatchTutorialCategoriesBindingO = O();
        FragmentExtKt.a(this, fragmentWatchTutorialCategoriesBindingO.f51378c.f51464c.f51465b, null, 6);
        ToolbarTitleBinding toolbarTitleBinding = fragmentWatchTutorialCategoriesBindingO.f51378c.f51464c;
        toolbarTitleBinding.f51466c.setText(R.string.p12_tutorial_title);
        toolbarTitleBinding.f51466c.setAccessibilityHeading(true);
        ViewModelLazy viewModelLazy = this.G;
        ((WatchTutorialCategoriesViewModel) viewModelLazy.getF71699b()).Ya();
        ((WatchTutorialCategoriesViewModel) viewModelLazy.getF71699b()).getD().observe(getViewLifecycleOwner(), new WatchTutorialCategoriesFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass2(1, this, WatchTutorialCategoriesFragment.class, "handleWatchTutorialCategoriesResult", "handleWatchTutorialCategoriesResult(Ljava/lang/Object;)V", 0)));
    }
}

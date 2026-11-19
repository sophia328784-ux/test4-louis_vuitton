package com.sightcall.mediacapture.presenter.views.multimedia;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.button.MaterialButton;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.mediacapture.R;
import com.sightcall.mediacapture.databinding.FragmentMultiMediaBinding;
import com.sightcall.mediacapture.presenter.MediaCaptureLifecycleObserver;
import com.sightcall.mediacapture.presenter.MediaCaptureViewModel;
import com.sightcall.mediacapture.presenter.Source;
import com.sightcall.mediacapture.presenter.views.camera.CameraFragment;
import com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment;
import defpackage.md;
import defpackage.tb0;
import defpackage.x60;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006\u001a"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "binding", "Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;", "observer", "Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;", "viewModel", "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "getViewModel", "()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "Args", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MultiMediaFragment extends Fragment {
    private FragmentMultiMediaBinding binding;
    private MediaCaptureLifecycleObserver observer;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Source.values().length];
            try {
                iArr[Source.Camera.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Source.GalleryPhoto.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Source.GalleryVideo.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MultiMediaFragment() {
        final x60 x60Var = new x60(this, 6);
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStoreOwner mo47invoke() {
                return (ViewModelStoreOwner) x60Var.mo47invoke();
            }
        });
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.f71922a.b(MediaCaptureViewModel.class), new Function0<ViewModelStore>() { // from class: com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStore mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelProvider.Factory mo47invoke() {
                ViewModelProvider.Factory f13588e;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                if (hasDefaultViewModelProviderFactory != null && (f13588e = hasDefaultViewModelProviderFactory.getF13588e()) != null) {
                    return f13588e;
                }
                ViewModelProvider.Factory f13588e2 = this.getF13588e();
                f13588e2.getClass();
                return f13588e2;
            }
        }, new Function0<CreationExtras>() { // from class: com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final CreationExtras mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                if (function1 != null && (creationExtras = (CreationExtras) function1.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
    }

    private final MediaCaptureViewModel getViewModel() {
        return (MediaCaptureViewModel) this.viewModel.getF71699b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m67xf64d23e6(MultiMediaFragment multiMediaFragment, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$1(multiMediaFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m68x1be12ce7(MultiMediaFragment multiMediaFragment, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$2(multiMediaFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$0(MultiMediaFragment multiMediaFragment, Uri uri) {
        if (uri != null) {
            multiMediaFragment.getViewModel().onMediaSelected(uri);
        }
        return Unit.f71739a;
    }

    private static final void onViewCreated$lambda$1(MultiMediaFragment multiMediaFragment, View view) {
        MediaCaptureLifecycleObserver mediaCaptureLifecycleObserver = multiMediaFragment.observer;
        if (mediaCaptureLifecycleObserver != null) {
            mediaCaptureLifecycleObserver.selectPhoto();
        } else {
            Intrinsics.h("observer");
            throw null;
        }
    }

    private static final void onViewCreated$lambda$2(MultiMediaFragment multiMediaFragment, View view) {
        MediaCaptureLifecycleObserver mediaCaptureLifecycleObserver = multiMediaFragment.observer;
        if (mediaCaptureLifecycleObserver != null) {
            mediaCaptureLifecycleObserver.selectVideo();
        } else {
            Intrinsics.h("observer");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        inflater.getClass();
        FragmentMultiMediaBinding fragmentMultiMediaBindingInflate = FragmentMultiMediaBinding.inflate(inflater);
        fragmentMultiMediaBindingInflate.getClass();
        this.binding = fragmentMultiMediaBindingInflate;
        this.observer = new MediaCaptureLifecycleObserver(requireActivity().getActivityResultRegistry(), new tb0(this, 6));
        Lifecycle f13561b = getD();
        MediaCaptureLifecycleObserver mediaCaptureLifecycleObserver = this.observer;
        if (mediaCaptureLifecycleObserver == null) {
            Intrinsics.h("observer");
            throw null;
        }
        f13561b.a(mediaCaptureLifecycleObserver);
        FragmentMultiMediaBinding fragmentMultiMediaBinding = this.binding;
        if (fragmentMultiMediaBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        ConstraintLayout constraintLayoutM61getRoot = fragmentMultiMediaBinding.getRoot();
        constraintLayoutM61getRoot.getClass();
        return constraintLayoutM61getRoot;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        Iterator<T> it = Args.INSTANCE.deserialize(getArguments()).getSources().iterator();
        while (true) {
            final int i2 = 1;
            final int i3 = 0;
            if (!it.hasNext()) {
                FragmentMultiMediaBinding fragmentMultiMediaBinding = this.binding;
                if (fragmentMultiMediaBinding == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                fragmentMultiMediaBinding.photoLibrary.setOnClickListener(new View.OnClickListener(this) { // from class: ld0

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ MultiMediaFragment f75999c;

                    {
                        this.f75999c = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i4 = i3;
                        MultiMediaFragment multiMediaFragment = this.f75999c;
                        switch (i4) {
                            case 0:
                                MultiMediaFragment.m67xf64d23e6(multiMediaFragment, view2);
                                break;
                            default:
                                MultiMediaFragment.m68x1be12ce7(multiMediaFragment, view2);
                                break;
                        }
                    }
                });
                FragmentMultiMediaBinding fragmentMultiMediaBinding2 = this.binding;
                if (fragmentMultiMediaBinding2 == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                fragmentMultiMediaBinding2.videoLibrary.setOnClickListener(new View.OnClickListener(this) { // from class: ld0

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ MultiMediaFragment f75999c;

                    {
                        this.f75999c = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i4 = i2;
                        MultiMediaFragment multiMediaFragment = this.f75999c;
                        switch (i4) {
                            case 0:
                                MultiMediaFragment.m67xf64d23e6(multiMediaFragment, view2);
                                break;
                            default:
                                MultiMediaFragment.m68x1be12ce7(multiMediaFragment, view2);
                                break;
                        }
                    }
                });
                FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
                return;
            }
            int i4 = WhenMappings.$EnumSwitchMapping$0[((Source) it.next()).ordinal()];
            if (i4 == 1) {
                FragmentTransaction fragmentTransactionD = getParentFragmentManager().d();
                fragmentTransactionD.m(R.id.main, new CameraFragment(), null);
                fragmentTransactionD.e();
            } else if (i4 == 2) {
                FragmentMultiMediaBinding fragmentMultiMediaBinding3 = this.binding;
                if (fragmentMultiMediaBinding3 == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                MaterialButton materialButton = fragmentMultiMediaBinding3.photoLibrary;
                materialButton.getClass();
                materialButton.setVisibility(0);
            } else {
                if (i4 != 3) {
                    NoWhenBranchMatchedException noWhenBranchMatchedException = new NoWhenBranchMatchedException();
                    FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
                    throw noWhenBranchMatchedException;
                }
                FragmentMultiMediaBinding fragmentMultiMediaBinding4 = this.binding;
                if (fragmentMultiMediaBinding4 == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                MaterialButton materialButton2 = fragmentMultiMediaBinding4.videoLibrary;
                materialButton2.getClass();
                materialButton2.setVisibility(0);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\t\u001a\u00020\nR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;", "", "sources", "", "Lcom/sightcall/mediacapture/presenter/Source;", "<init>", "(Ljava/util/List;)V", "getSources", "()Ljava/util/List;", "newInstance", "Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;", "Companion", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Args {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final String MULTI_MEDIA_MODS = "com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment.MULTI_MEDIA_MODS";
        private final List<Source> sources;

        /* JADX WARN: Multi-variable type inference failed */
        public Args(List<? extends Source> list) {
            list.getClass();
            this.sources = list;
        }

        public final List<Source> getSources() {
            return this.sources;
        }

        public final MultiMediaFragment newInstance() {
            MultiMediaFragment multiMediaFragment = new MultiMediaFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList(MULTI_MEDIA_MODS, new ArrayList<>(this.sources));
            multiMediaFragment.setArguments(bundle);
            return multiMediaFragment;
        }

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args$Companion;", "", "<init>", "()V", "MULTI_MEDIA_MODS", "", "deserialize", "Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;", "bundle", "Landroid/os/Bundle;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Args deserialize(Bundle bundle) {
                if (bundle == null) {
                    md.n("An argument must be provided, use MultiMediaFragment.Args");
                    return null;
                }
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(Args.MULTI_MEDIA_MODS);
                if (parcelableArrayList != null) {
                    return new Args(parcelableArrayList);
                }
                md.n("A mod list must be provided, use MultiMediaFragment.Args");
                return null;
            }

            private Companion() {
            }
        }
    }
}

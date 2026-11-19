package com.sightcall.mediacapture.presenter;

import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.mediacapture.R;
import com.sightcall.mediacapture.databinding.FragmentMediaCaptureBinding;
import com.sightcall.mediacapture.di.InjectorKt;
import com.sightcall.mediacapture.domain.entities.Media;
import com.sightcall.mediacapture.presenter.item.MediaCaptureError;
import com.sightcall.mediacapture.presenter.item.MediaCaptureParameters;
import com.sightcall.mediacapture.presenter.views.camera.CameraFragment;
import com.sightcall.mediacapture.presenter.views.preview.PreviewFragment;
import com.sightcall.pratik.KeyEvent;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.extensions.ViewExtensionsKt;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.permission.PermissionExtensionsKt;
import defpackage.mc0;
import defpackage.md;
import defpackage.nc0;
import defpackage.tb0;
import defpackage.tr;
import defpackage.v40;
import defpackage.w20;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 <2\u00020\u0001:\u0003;<=B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J$\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u001b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\"\u001a\u00020\u0017H\u0016J\b\u0010#\u001a\u00020\u0017H\u0002J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0002J\u0017\u0010'\u001a\u0004\u0018\u00010\u00172\u0006\u0010(\u001a\u00020)H\u0002¢\u0006\u0002\u0010*J(\u0010+\u001a\u00020\u00172\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020/0-2\n\u00100\u001a\u000601j\u0002`2H\u0002J\u0010\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u000205H\u0002J\u0010\u00106\u001a\u00020\u00172\u0006\u00104\u001a\u000207H\u0002J\u0010\u00108\u001a\u00020\u00172\u0006\u0010(\u001a\u000209H\u0002J\b\u0010:\u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u00020\t8\u0000@\u0000X\u0081.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "mediaCaptureParameters", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;", "observer", "Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;", "viewModelFactory", "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;", "getViewModelFactory$lib_release", "()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;", "setViewModelFactory$lib_release", "(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;)V", "viewModel", "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "getViewModel", "()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", "view", "onResume", "showSourceSelectionDialog", "handleSelection", "option", "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$SelectionOption;", "onEvent", MvelScriptManager.VAR_EVENT, "Lcom/sightcall/mediacapture/presenter/Event;", "(Lcom/sightcall/mediacapture/presenter/Event;)Lkotlin/Unit;", "displayBackupError", "result", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/domain/entities/Media;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onStateChange", "state", "Lcom/sightcall/mediacapture/presenter/MediaCaptureState;", "onSelectedStateChange", "Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;", "onPreview", "Lcom/sightcall/mediacapture/presenter/Event$OnPreview;", "onCancel", "SelectionOption", "Companion", "Args", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MediaCaptureFragment extends Fragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static Function1<? super Result<Media, MediaCaptureError>, Unit> resultListener;
    private FragmentMediaCaptureBinding binding;
    private MediaCaptureParameters mediaCaptureParameters;
    private MediaCaptureLifecycleObserver observer;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @Inject
    public MediaCaptureViewModel.Factory viewModelFactory;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$SelectionOption;", "", "<init>", "(Ljava/lang/String;I)V", "CAMERA", "GALLERY", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public enum SelectionOption {
        CAMERA,
        GALLERY;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<SelectionOption> getEntries() {
            return $ENTRIES;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectionOption.values().length];
            try {
                iArr[SelectionOption.CAMERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionOption.GALLERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MediaCaptureFragment() {
        nc0 nc0Var = new nc0(this, 1);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.sightcall.mediacapture.presenter.MediaCaptureFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Fragment mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.sightcall.mediacapture.presenter.MediaCaptureFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStoreOwner mo47invoke() {
                return (ViewModelStoreOwner) function0.mo47invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = new ViewModelLazy(Reflection.f71922a.b(MediaCaptureViewModel.class), new Function0<ViewModelStore>() { // from class: com.sightcall.mediacapture.presenter.MediaCaptureFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStore mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, nc0Var, new Function0<CreationExtras>() { // from class: com.sightcall.mediacapture.presenter.MediaCaptureFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final CreationExtras mo47invoke() {
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

    private final void displayBackupError(Result<Media, MediaCaptureError> result, Exception error) {
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
        builder.f(R.string.media_backup_fail_title);
        String strH = tr.h(getString(R.string.media_backup_fail_message), "\n\n", error.getMessage());
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.g = strH;
        String string = getString(android.R.string.ok);
        mc0 mc0Var = new mc0(result, 0);
        alertParams.f801h = string;
        alertParams.f802i = mc0Var;
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.getClass();
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayBackupError$lambda$0(Result result, DialogInterface dialogInterface, int i2) {
        Function1<? super Result<Media, MediaCaptureError>, Unit> function1 = resultListener;
        if (function1 != null) {
            function1.invoke(result);
        }
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
    }

    private final MediaCaptureViewModel getViewModel() {
        return (MediaCaptureViewModel) this.viewModel.getF71699b();
    }

    private final void handleSelection(SelectionOption option) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[option.ordinal()];
        if (i2 == 1) {
            getViewModel().requestCameraPermissions();
            return;
        }
        if (i2 != 2) {
            v40.g();
            return;
        }
        MediaCaptureParameters mediaCaptureParameters = this.mediaCaptureParameters;
        if (mediaCaptureParameters == null) {
            Intrinsics.h("mediaCaptureParameters");
            throw null;
        }
        if (mediaCaptureParameters.isGalleryImageAllowed()) {
            getViewModel().openPhotoGallery();
            return;
        }
        MediaCaptureParameters mediaCaptureParameters2 = this.mediaCaptureParameters;
        if (mediaCaptureParameters2 == null) {
            Intrinsics.h("mediaCaptureParameters");
            throw null;
        }
        if (mediaCaptureParameters2.isGalleryVideoAllowed()) {
            getViewModel().openVideoGallery();
        }
    }

    private final void onCancel() {
        getChildFragmentManager().V();
        MediaCaptureState value = getViewModel().getState().getValue();
        if (value != null) {
            onStateChange(value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$0(MediaCaptureFragment mediaCaptureFragment, List list, String str) {
        list.getClass();
        mediaCaptureFragment.getViewModel().onRequestPermissionsResult(list);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$1(MediaCaptureFragment mediaCaptureFragment, Uri uri) {
        if (uri != null) {
            mediaCaptureFragment.getViewModel().onMediaSelected(uri);
        } else {
            mediaCaptureFragment.getViewModel().onBackPressed();
        }
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Unit onEvent(Event event) {
        if (event instanceof Event.OnRequestPermissions) {
            PermissionExtensionsKt.requestPermissions$default(this, ((Event.OnRequestPermissions) event).getPermissions(), (String) null, 2, (Object) null);
            return Unit.f71739a;
        }
        if (event instanceof Event.OnPreview) {
            onPreview((Event.OnPreview) event);
            return Unit.f71739a;
        }
        if (Intrinsics.c(event, Event.OnCancel.INSTANCE)) {
            onCancel();
            return Unit.f71739a;
        }
        if (event instanceof Event.OnBackupFailed) {
            Event.OnBackupFailed onBackupFailed = (Event.OnBackupFailed) event;
            displayBackupError(onBackupFailed.getResult(), onBackupFailed.getError());
            return Unit.f71739a;
        }
        if (!(event instanceof Event.OnResult)) {
            v40.g();
            return null;
        }
        Function1<? super Result<Media, MediaCaptureError>, Unit> function1 = resultListener;
        if (function1 == null) {
            return null;
        }
        function1.invoke(((Event.OnResult) event).getResult());
        return Unit.f71739a;
    }

    private final void onPreview(Event.OnPreview event) {
        FragmentManager childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        FragmentTransaction fragmentTransactionD = childFragmentManager.d();
        fragmentTransactionD.p = true;
        fragmentTransactionD.m(R.id.container, new PreviewFragment.Args(event.getMedia()).newInstance(), null);
        fragmentTransactionD.d(null);
        fragmentTransactionD.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onResume$lambda$0(MediaCaptureFragment mediaCaptureFragment) {
        mediaCaptureFragment.getViewModel().onBackPressed();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSelectedStateChange(SelectedCaptureState state) {
        if (state instanceof SelectedCaptureState.CameraOnly) {
            getViewModel().requestCameraPermissions();
            return;
        }
        if (state instanceof SelectedCaptureState.GalleryPhotoOnly) {
            getViewModel().openPhotoGallery();
            return;
        }
        if (state instanceof SelectedCaptureState.GalleryVideoOnly) {
            getViewModel().openVideoGallery();
        } else if (state instanceof SelectedCaptureState.Selector) {
            showSourceSelectionDialog();
        } else {
            v40.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onStateChange(MediaCaptureState state) {
        if (state instanceof MediaCaptureState.CameraOnly) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            childFragmentManager.getClass();
            FragmentTransaction fragmentTransactionD = childFragmentManager.d();
            fragmentTransactionD.m(R.id.container, new CameraFragment(), null);
            fragmentTransactionD.d(null);
            fragmentTransactionD.e();
            return;
        }
        if (state instanceof MediaCaptureState.GalleryPhotoOnly) {
            MediaCaptureLifecycleObserver mediaCaptureLifecycleObserver = this.observer;
            if (mediaCaptureLifecycleObserver != null) {
                mediaCaptureLifecycleObserver.selectPhoto();
                return;
            } else {
                Intrinsics.h("observer");
                throw null;
            }
        }
        if (!(state instanceof MediaCaptureState.GalleryVideoOnly)) {
            v40.g();
            return;
        }
        MediaCaptureLifecycleObserver mediaCaptureLifecycleObserver2 = this.observer;
        if (mediaCaptureLifecycleObserver2 != null) {
            mediaCaptureLifecycleObserver2.selectVideo();
        } else {
            Intrinsics.h("observer");
            throw null;
        }
    }

    private final void showSourceSelectionDialog() {
        new AlertDialog.Builder(requireContext()).setTitle(getString(R.string.select_source)).b(new String[]{getString(R.string.media_mod_camera), getString(R.string.media_mod_gallery)}, new mc0(this, 1)).a().g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSourceSelectionDialog$lambda$0(MediaCaptureFragment mediaCaptureFragment, DialogInterface dialogInterface, int i2) {
        if (i2 == 0) {
            mediaCaptureFragment.handleSelection(SelectionOption.CAMERA);
        } else if (i2 == 1) {
            mediaCaptureFragment.handleSelection(SelectionOption.GALLERY);
        }
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider.Factory viewModel_delegate$lambda$0(MediaCaptureFragment mediaCaptureFragment) {
        MediaCaptureViewModel.Factory viewModelFactory$lib_release = mediaCaptureFragment.getViewModelFactory$lib_release();
        MediaCaptureParameters mediaCaptureParameters = mediaCaptureFragment.mediaCaptureParameters;
        if (mediaCaptureParameters != null) {
            viewModelFactory$lib_release.setMediaCaptureParameters(mediaCaptureParameters);
            return viewModelFactory$lib_release;
        }
        Intrinsics.h("mediaCaptureParameters");
        throw null;
    }

    public final MediaCaptureViewModel.Factory getViewModelFactory$lib_release() {
        MediaCaptureViewModel.Factory factory = this.viewModelFactory;
        if (factory != null) {
            return factory;
        }
        Intrinsics.h("viewModelFactory");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        InjectorKt.inject(this);
        this.mediaCaptureParameters = Args.INSTANCE.deserialize(getArguments()).getMediaCaptureParameters();
        PermissionExtensionsKt.registerForPermissions(this, new w20(this, 10));
        Logger logger = Logger.INSTANCE;
        MediaCaptureParameters mediaCaptureParameters = this.mediaCaptureParameters;
        if (mediaCaptureParameters == null) {
            Intrinsics.h("mediaCaptureParameters");
            throw null;
        }
        Objects.toString(mediaCaptureParameters);
        logger.getTag();
        this.observer = new MediaCaptureLifecycleObserver(requireActivity().getActivityResultRegistry(), new tb0(this, 5));
        Lifecycle lifecycle = getF13561b();
        MediaCaptureLifecycleObserver mediaCaptureLifecycleObserver = this.observer;
        if (mediaCaptureLifecycleObserver != null) {
            lifecycle.a(mediaCaptureLifecycleObserver);
        } else {
            Intrinsics.h("observer");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        inflater.getClass();
        FragmentMediaCaptureBinding fragmentMediaCaptureBindingInflate = FragmentMediaCaptureBinding.inflate(inflater);
        fragmentMediaCaptureBindingInflate.getClass();
        this.binding = fragmentMediaCaptureBindingInflate;
        if (fragmentMediaCaptureBindingInflate == null) {
            Intrinsics.h("binding");
            throw null;
        }
        FrameLayout frameLayoutM60getRoot = fragmentMediaCaptureBindingInflate.getRoot();
        frameLayoutM60getRoot.getClass();
        return frameLayoutM60getRoot;
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
        FragmentMediaCaptureBinding fragmentMediaCaptureBinding = this.binding;
        if (fragmentMediaCaptureBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        FrameLayout frameLayoutM60getRoot = fragmentMediaCaptureBinding.getRoot();
        frameLayoutM60getRoot.getClass();
        ViewExtensionsKt.setOnKeyListeners(frameLayoutM60getRoot, MapsKt.h(new Pair(KeyEvent.BackButton.INSTANCE, new nc0(this, 0))));
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        getViewModel().getEvent().observe(getViewLifecycleOwner(), new MediaCaptureFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass1(this)));
        getViewModel().getState().observe(getViewLifecycleOwner(), new MediaCaptureFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass2(this)));
        getViewModel().getSelectedCaptureState().observe(getViewLifecycleOwner(), new MediaCaptureFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass3(this)));
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    public final void setViewModelFactory$lib_release(MediaCaptureViewModel.Factory factory) {
        factory.getClass();
        this.viewModelFactory = factory;
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;", "", "mediaCaptureParameters", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;", "<init>", "(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V", "getMediaCaptureParameters", "()Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;", "newInstance", "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;", "Companion", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Args {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final String MEDIA_CONFIG = "com.sightcall.mediacapture.presenter.MediaCaptureFragment.MEDIA_CONFIG";
        private final MediaCaptureParameters mediaCaptureParameters;

        public Args(MediaCaptureParameters mediaCaptureParameters) {
            mediaCaptureParameters.getClass();
            this.mediaCaptureParameters = mediaCaptureParameters;
        }

        public final MediaCaptureParameters getMediaCaptureParameters() {
            return this.mediaCaptureParameters;
        }

        public final MediaCaptureFragment newInstance() {
            MediaCaptureFragment mediaCaptureFragment = new MediaCaptureFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(MEDIA_CONFIG, this.mediaCaptureParameters);
            mediaCaptureFragment.setArguments(bundle);
            return mediaCaptureFragment;
        }

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args$Companion;", "", "<init>", "()V", "MEDIA_CONFIG", "", "deserialize", "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Args;", "bundle", "Landroid/os/Bundle;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Args deserialize(Bundle bundle) {
                if (bundle == null) {
                    md.n("An argument must be provided, use MediaCaptureFragment.Args");
                    return null;
                }
                MediaCaptureParameters mediaCaptureParameters = (MediaCaptureParameters) bundle.getParcelable(Args.MEDIA_CONFIG);
                if (mediaCaptureParameters != null) {
                    return new Args(mediaCaptureParameters);
                }
                md.n("A mediaConfig must be provided, use MediaCaptureFragment.Args");
                return null;
            }

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R4\u0010\u0004\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Companion;", "", "<init>", "()V", "resultListener", "Lkotlin/Function1;", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/domain/entities/Media;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "", "getResultListener", "()Lkotlin/jvm/functions/Function1;", "setResultListener", "(Lkotlin/jvm/functions/Function1;)V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Function1<Result<Media, MediaCaptureError>, Unit> getResultListener() {
            return MediaCaptureFragment.resultListener;
        }

        public final void setResultListener(Function1<? super Result<Media, MediaCaptureError>, Unit> function1) {
            MediaCaptureFragment.resultListener = function1;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.MediaCaptureFragment$onViewCreated$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass1 extends AdaptedFunctionReference implements Function1<Event, Unit> {
        public AnonymousClass1(Object obj) {
            super(1, obj, MediaCaptureFragment.class, "onEvent", "onEvent(Lcom/sightcall/mediacapture/presenter/Event;)Lkotlin/Unit;", 8);
        }

        public final void invoke(Event event) {
            event.getClass();
            ((MediaCaptureFragment) this.receiver).onEvent(event);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Event) obj);
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.MediaCaptureFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<MediaCaptureState, Unit> {
        public AnonymousClass2(Object obj) {
            super(1, obj, MediaCaptureFragment.class, "onStateChange", "onStateChange(Lcom/sightcall/mediacapture/presenter/MediaCaptureState;)V", 0);
        }

        public final void invoke(MediaCaptureState mediaCaptureState) {
            mediaCaptureState.getClass();
            ((MediaCaptureFragment) this.receiver).onStateChange(mediaCaptureState);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((MediaCaptureState) obj);
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.MediaCaptureFragment$onViewCreated$3, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<SelectedCaptureState, Unit> {
        public AnonymousClass3(Object obj) {
            super(1, obj, MediaCaptureFragment.class, "onSelectedStateChange", "onSelectedStateChange(Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;)V", 0);
        }

        public final void invoke(SelectedCaptureState selectedCaptureState) {
            selectedCaptureState.getClass();
            ((MediaCaptureFragment) this.receiver).onSelectedStateChange(selectedCaptureState);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((SelectedCaptureState) obj);
            return Unit.f71739a;
        }
    }
}

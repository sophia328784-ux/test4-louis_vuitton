package com.sightcall.mediacapture.presenter.views.preview;

import android.content.Context;
import android.database.Cursor;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.VideoView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
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
import com.sightcall.mediacapture.databinding.FragmentPreviewBinding;
import com.sightcall.mediacapture.domain.entities.Media;
import com.sightcall.mediacapture.domain.entities.MediaType;
import com.sightcall.mediacapture.presenter.MediaCaptureViewModel;
import com.sightcall.mediacapture.presenter.PreviewState;
import com.sightcall.mediacapture.presenter.mappers.MappersKt;
import com.sightcall.mediacapture.presenter.views.preview.PreviewFragment;
import com.sightcall.pratik.extensions.ImageViewExtensionsKt;
import com.sightcall.pratik.misc.DoNothingKt;
import defpackage.hn0;
import defpackage.ie0;
import defpackage.ip0;
import defpackage.je0;
import defpackage.jp0;
import defpackage.kp0;
import defpackage.l90;
import defpackage.md;
import defpackage.v40;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u00017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010 \u001a\u00020\u001eH\u0016J\u0017\u0010!\u001a\u00020\u001e2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002¢\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020'H\u0002J\b\u0010(\u001a\u00020\u001eH\u0002J\b\u00101\u001a\u00020\u001eH\u0002J\b\u00102\u001a\u00020\u001eH\u0002J\b\u00103\u001a\u00020\u001eH\u0002J\b\u00104\u001a\u00020\u001eH\u0002J\b\u00105\u001a\u000206H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010.\u001a\u00020,2\u0006\u0010-\u001a\u00020,@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b/\u00100¨\u00068"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModel", "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "getViewModel", "()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "media", "Lcom/sightcall/mediacapture/domain/entities/Media;", "getMedia", "()Lcom/sightcall/mediacapture/domain/entities/Media;", "media$delegate", "binding", "Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;", "progressLayout", "Landroidx/constraintlayout/widget/ConstraintLayout;", "getProgressLayout", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onDestroy", "displayDurationLimitAlert", "maxDuration", "", "(Ljava/lang/Integer;)V", "onPreviewState", "previewState", "Lcom/sightcall/mediacapture/presenter/PreviewState;", "prepareForImage", "scheduledExecutorService", "Ljava/util/concurrent/ScheduledExecutorService;", "wasPlaying", "", "value", "isPlaying", "setPlaying", "(Z)V", "prepareForVideo", "updateTimeUI", "play", "pause", "getVideoUri", "Landroid/net/Uri;", "Args", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PreviewFragment extends Fragment {
    private FragmentPreviewBinding binding;
    private boolean isPlaying;

    /* JADX INFO: renamed from: media$delegate, reason: from kotlin metadata */
    private final Lazy media;
    private ScheduledExecutorService scheduledExecutorService;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    private boolean wasPlaying;

    public PreviewFragment() {
        final jp0 jp0Var = new jp0(this, 0);
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.sightcall.mediacapture.presenter.views.preview.PreviewFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStoreOwner mo47invoke() {
                return (ViewModelStoreOwner) jp0Var.mo47invoke();
            }
        });
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.f71922a.b(MediaCaptureViewModel.class), new Function0<ViewModelStore>() { // from class: com.sightcall.mediacapture.presenter.views.preview.PreviewFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStore mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13583b();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.sightcall.mediacapture.presenter.views.preview.PreviewFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelProvider.Factory mo47invoke() {
                ViewModelProvider.Factory f13584c;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                if (hasDefaultViewModelProviderFactory != null && (f13584c = hasDefaultViewModelProviderFactory.getF13584c()) != null) {
                    return f13584c;
                }
                ViewModelProvider.Factory f13584c2 = this.getF13584c();
                f13584c2.getClass();
                return f13584c2;
            }
        }, new Function0<CreationExtras>() { // from class: com.sightcall.mediacapture.presenter.views.preview.PreviewFragment$special$$inlined$viewModels$default$3
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
        this.media = LazyKt.b(new jp0(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _set_isPlaying_$lambda$0(PreviewFragment previewFragment) {
        LifecycleOwner viewLifecycleOwner = previewFragment.getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        BuildersKt.c(LifecycleOwnerKt.a(viewLifecycleOwner), null, null, new PreviewFragment$isPlaying$1$1(previewFragment, null), 3);
    }

    private final void displayDurationLimitAlert(Integer maxDuration) {
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
        builder.f(R.string.media_max_duration_exceeded_title);
        builder.f810a.g = getString(R.string.media_max_duration_exceeded_message, String.valueOf(maxDuration != null ? MappersKt.toHumanReadableDuration(maxDuration.intValue()) : null));
        builder.setPositiveButton(android.R.string.ok, new ip0(0));
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.getClass();
        alertDialogCreate.show();
    }

    private final Media getMedia() {
        return (Media) this.media.getF71699b();
    }

    private final ConstraintLayout getProgressLayout() {
        FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        ConstraintLayout constraintLayout = fragmentPreviewBinding.progressLayout;
        constraintLayout.getClass();
        return constraintLayout;
    }

    private final Uri getVideoUri() {
        Cursor cursorQuery = requireContext().getContentResolver().query(getMedia().getUri(), new String[]{"_data"}, null, null, null);
        Uri uri = getMedia().getUri();
        if (cursorQuery != null) {
            cursorQuery.moveToFirst();
            uri = Uri.parse(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")));
            uri.getClass();
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return uri;
    }

    private final MediaCaptureViewModel getViewModel() {
        return (MediaCaptureViewModel) this.viewModel.getF71699b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m69xf64d23e6(PreviewFragment previewFragment, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$0$0(previewFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m70x1be12ce7(PreviewFragment previewFragment, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$0$1(previewFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$1$prepareForVideo$--V, reason: not valid java name */
    public static /* synthetic */ void m71instrumented$1$prepareForVideo$V(PreviewFragment previewFragment, View view) {
        Callback.n(view);
        try {
            prepareForVideo$lambda$0$1(previewFragment, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Media media_delegate$lambda$0(PreviewFragment previewFragment) {
        return Args.INSTANCE.deserialize(previewFragment.getArguments()).getMedia();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPreviewState(PreviewState previewState) {
        if (previewState instanceof PreviewState.Idle) {
            getProgressLayout().setVisibility(8);
            FragmentPreviewBinding fragmentPreviewBinding = this.binding;
            if (fragmentPreviewBinding == null) {
                Intrinsics.h("binding");
                throw null;
            }
            fragmentPreviewBinding.send.setEnabled(true);
            FragmentPreviewBinding fragmentPreviewBinding2 = this.binding;
            if (fragmentPreviewBinding2 != null) {
                fragmentPreviewBinding2.cancel.setEnabled(true);
                return;
            } else {
                Intrinsics.h("binding");
                throw null;
            }
        }
        if (!(previewState instanceof PreviewState.Loading)) {
            if (previewState instanceof PreviewState.Finished) {
                DoNothingKt.doNothing();
                return;
            } else {
                v40.g();
                return;
            }
        }
        getProgressLayout().setVisibility(0);
        FragmentPreviewBinding fragmentPreviewBinding3 = this.binding;
        if (fragmentPreviewBinding3 == null) {
            Intrinsics.h("binding");
            throw null;
        }
        fragmentPreviewBinding3.send.setEnabled(false);
        FragmentPreviewBinding fragmentPreviewBinding4 = this.binding;
        if (fragmentPreviewBinding4 != null) {
            fragmentPreviewBinding4.cancel.setEnabled(false);
        } else {
            Intrinsics.h("binding");
            throw null;
        }
    }

    private static final void onViewCreated$lambda$0$0(PreviewFragment previewFragment, View view) {
        MediaCaptureViewModel viewModel = previewFragment.getViewModel();
        Media media = previewFragment.getMedia();
        Context contextRequireContext = previewFragment.requireContext();
        contextRequireContext.getClass();
        if (!viewModel.validateMediaDuration(media, contextRequireContext)) {
            previewFragment.displayDurationLimitAlert(previewFragment.getViewModel().getMaxDuration());
            return;
        }
        MediaCaptureViewModel viewModel2 = previewFragment.getViewModel();
        Media media2 = previewFragment.getMedia();
        Context contextRequireContext2 = previewFragment.requireContext();
        contextRequireContext2.getClass();
        viewModel2.send(media2, contextRequireContext2);
    }

    private static final void onViewCreated$lambda$0$1(PreviewFragment previewFragment, View view) {
        previewFragment.getViewModel().cancel();
    }

    private final void pause() {
        FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        fragmentPreviewBinding.videoView.pause();
        setPlaying(false);
    }

    private final void play() {
        FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        if (fragmentPreviewBinding.videoView.getCurrentPosition() == fragmentPreviewBinding.videoView.getDuration()) {
            fragmentPreviewBinding.videoView.seekTo(0);
        }
        fragmentPreviewBinding.videoView.start();
        setPlaying(true);
    }

    private final void prepareForImage() {
        FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        AppCompatImageView appCompatImageView = fragmentPreviewBinding.preview;
        appCompatImageView.getClass();
        appCompatImageView.setVisibility(0);
        AppCompatImageView appCompatImageView2 = fragmentPreviewBinding.preview;
        appCompatImageView2.getClass();
        ImageViewExtensionsKt.load$default(appCompatImageView2, getMedia().getUri(), new jp0(this, 2), null, 4, null);
        VideoView videoView = fragmentPreviewBinding.videoView;
        videoView.getClass();
        videoView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit prepareForImage$lambda$0$0(PreviewFragment previewFragment) {
        previewFragment.startPostponedEnterTransition();
        return Unit.f71739a;
    }

    private final void prepareForVideo() {
        final FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        try {
            AppCompatImageView appCompatImageView = fragmentPreviewBinding.preview;
            appCompatImageView.getClass();
            appCompatImageView.setVisibility(8);
            int i2 = 2;
            fragmentPreviewBinding.timeSlider.setOnTouchListener(new l90(this, fragmentPreviewBinding, i2));
            fragmentPreviewBinding.mainAction.setOnClickListener(new kp0(this, i2));
            fragmentPreviewBinding.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: lp0
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer) {
                    PreviewFragment.prepareForVideo$lambda$0$2(fragmentPreviewBinding, this, mediaPlayer);
                }
            });
            int i3 = 1;
            fragmentPreviewBinding.videoView.setOnErrorListener(new je0(this, i3));
            fragmentPreviewBinding.videoView.setOnCompletionListener(new ie0(this, i3));
            fragmentPreviewBinding.videoView.setVideoURI(getVideoUri());
            startPostponedEnterTransition();
        } catch (Exception unused) {
            prepareForImage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean prepareForVideo$lambda$0$0(PreviewFragment previewFragment, FragmentPreviewBinding fragmentPreviewBinding, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            previewFragment.pause();
        } else if (motionEvent.getAction() == 1 && previewFragment.wasPlaying) {
            previewFragment.play();
        }
        VideoView videoView = fragmentPreviewBinding.videoView;
        videoView.seekTo((int) (fragmentPreviewBinding.timeSlider.getValue() * videoView.getDuration()));
        previewFragment.updateTimeUI();
        return false;
    }

    private static final void prepareForVideo$lambda$0$1(PreviewFragment previewFragment, View view) {
        if (previewFragment.isPlaying) {
            previewFragment.pause();
        } else {
            previewFragment.play();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareForVideo$lambda$0$2(FragmentPreviewBinding fragmentPreviewBinding, PreviewFragment previewFragment, MediaPlayer mediaPlayer) {
        ConstraintLayout constraintLayout = fragmentPreviewBinding.timelineLayout;
        constraintLayout.getClass();
        constraintLayout.setVisibility(0);
        MaterialButton materialButton = fragmentPreviewBinding.mainAction;
        materialButton.getClass();
        materialButton.setVisibility(0);
        fragmentPreviewBinding.videoView.seekTo(0);
        previewFragment.updateTimeUI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean prepareForVideo$lambda$0$3(PreviewFragment previewFragment, MediaPlayer mediaPlayer, int i2, int i3) {
        previewFragment.setPlaying(false);
        previewFragment.updateTimeUI();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareForVideo$lambda$0$4(PreviewFragment previewFragment, MediaPlayer mediaPlayer) {
        previewFragment.setPlaying(false);
        previewFragment.updateTimeUI();
    }

    private final void setPlaying(boolean z) {
        this.wasPlaying = this.isPlaying;
        this.isPlaying = z;
        FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (!z) {
            if (fragmentPreviewBinding == null) {
                Intrinsics.h("binding");
                throw null;
            }
            fragmentPreviewBinding.mainAction.setIconResource(R.drawable.ic_play_arrow);
            ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
            }
            this.scheduledExecutorService = null;
            return;
        }
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        fragmentPreviewBinding.mainAction.setIconResource(R.drawable.ic_pause);
        if (this.scheduledExecutorService == null) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
            this.scheduledExecutorService = scheduledThreadPoolExecutor;
            scheduledThreadPoolExecutor.scheduleWithFixedDelay(new hn0(this, 8), 100L, 100L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTimeUI() {
        FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        if (fragmentPreviewBinding.videoView.getDuration() <= 0) {
            fragmentPreviewBinding.currentTime.setText("--:--");
            fragmentPreviewBinding.remainingTime.setText("--:--");
            fragmentPreviewBinding.timeSlider.setValue(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        } else {
            int currentPosition = fragmentPreviewBinding.videoView.getCurrentPosition();
            fragmentPreviewBinding.currentTime.setText(MappersKt.toTime(currentPosition));
            fragmentPreviewBinding.remainingTime.setText(MappersKt.toTime(fragmentPreviewBinding.videoView.getDuration() - currentPosition));
            fragmentPreviewBinding.timeSlider.setValue(currentPosition / fragmentPreviewBinding.videoView.getDuration());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelStoreOwner viewModel_delegate$lambda$0(PreviewFragment previewFragment) {
        Fragment fragmentRequireParentFragment = previewFragment.requireParentFragment();
        fragmentRequireParentFragment.getClass();
        return fragmentRequireParentFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        inflater.getClass();
        postponeEnterTransition();
        FragmentPreviewBinding fragmentPreviewBindingInflate = FragmentPreviewBinding.inflate(getLayoutInflater());
        fragmentPreviewBindingInflate.getClass();
        this.binding = fragmentPreviewBindingInflate;
        if (getMedia().getType() == MediaType.Photo) {
            prepareForImage();
        } else {
            prepareForVideo();
        }
        FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        ConstraintLayout constraintLayoutM62getRoot = fragmentPreviewBinding.getRoot();
        constraintLayoutM62getRoot.getClass();
        return constraintLayoutM62getRoot;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
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
        getViewModel().getPreviewState().observe(getViewLifecycleOwner(), new PreviewFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass1(this)));
        FragmentPreviewBinding fragmentPreviewBinding = this.binding;
        if (fragmentPreviewBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        fragmentPreviewBinding.send.setOnClickListener(new kp0(this, 0));
        fragmentPreviewBinding.cancel.setOnClickListener(new kp0(this, 1));
        MediaCaptureViewModel viewModel = getViewModel();
        Media media = getMedia();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        if (!viewModel.validateMediaDuration(media, contextRequireContext)) {
            displayDurationLimitAlert(getViewModel().getMaxDuration());
        }
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;", "", "media", "Lcom/sightcall/mediacapture/domain/entities/Media;", "<init>", "(Lcom/sightcall/mediacapture/domain/entities/Media;)V", "getMedia", "()Lcom/sightcall/mediacapture/domain/entities/Media;", "newInstance", "Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;", "Companion", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Args {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final String MEDIA = "com.sightcall.mediacapture.presenter.views.preview.PreviewFragment.MEDIA";
        private final Media media;

        public Args(Media media) {
            media.getClass();
            this.media = media;
        }

        public final Media getMedia() {
            return this.media;
        }

        public final PreviewFragment newInstance() {
            PreviewFragment previewFragment = new PreviewFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(MEDIA, this.media);
            previewFragment.setArguments(bundle);
            return previewFragment;
        }

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args$Companion;", "", "<init>", "()V", "MEDIA", "", "deserialize", "Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;", "bundle", "Landroid/os/Bundle;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Args deserialize(Bundle bundle) {
                if (bundle == null) {
                    md.n("An argument must be provided, use PreviewFragment.Args");
                    return null;
                }
                Media media = (Media) bundle.getParcelable(Args.MEDIA);
                if (media != null) {
                    return new Args(media);
                }
                md.n("A file must be provided, use PreviewFragment.Args");
                return null;
            }

            private Companion() {
            }
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.views.preview.PreviewFragment$onViewCreated$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<PreviewState, Unit> {
        public AnonymousClass1(Object obj) {
            super(1, obj, PreviewFragment.class, "onPreviewState", "onPreviewState(Lcom/sightcall/mediacapture/presenter/PreviewState;)V", 0);
        }

        public final void invoke(PreviewState previewState) {
            previewState.getClass();
            ((PreviewFragment) this.receiver).onPreviewState(previewState);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((PreviewState) obj);
            return Unit.f71739a;
        }
    }
}

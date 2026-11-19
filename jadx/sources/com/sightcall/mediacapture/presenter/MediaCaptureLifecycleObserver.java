package com.sightcall.mediacapture.presenter;

import android.net.Uri;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.PickVisualMediaRequestKt;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fw;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "registry", "Landroidx/activity/result/ActivityResultRegistry;", "selectedUri", "Lkotlin/Function1;", "Landroid/net/Uri;", "", "<init>", "(Landroidx/activity/result/ActivityResultRegistry;Lkotlin/jvm/functions/Function1;)V", "pickMedia", "Landroidx/activity/result/ActivityResultLauncher;", "Landroidx/activity/result/PickVisualMediaRequest;", "onCreate", "owner", "Landroidx/lifecycle/LifecycleOwner;", "selectPhoto", "selectVideo", "selectVideoAndPhoto", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MediaCaptureLifecycleObserver implements DefaultLifecycleObserver {
    private ActivityResultLauncher<PickVisualMediaRequest> pickMedia;
    private final ActivityResultRegistry registry;
    private final Function1<Uri, Unit> selectedUri;

    /* JADX WARN: Multi-variable type inference failed */
    public MediaCaptureLifecycleObserver(ActivityResultRegistry activityResultRegistry, Function1<? super Uri, Unit> function1) {
        activityResultRegistry.getClass();
        function1.getClass();
        this.registry = activityResultRegistry;
        this.selectedUri = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(MediaCaptureLifecycleObserver mediaCaptureLifecycleObserver, Uri uri) {
        mediaCaptureLifecycleObserver.selectedUri.invoke(uri);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(LifecycleOwner owner) {
        owner.getClass();
        this.pickMedia = this.registry.d(ConfigurationName.KEY, owner, new ActivityResultContracts$PickVisualMedia(), new fw(this, 22));
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onPause(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    public final void selectPhoto() {
        ActivityResultLauncher<PickVisualMediaRequest> activityResultLauncher = this.pickMedia;
        if (activityResultLauncher != null) {
            activityResultLauncher.a(PickVisualMediaRequestKt.a(ActivityResultContracts$PickVisualMedia.ImageOnly.f772a));
        } else {
            Intrinsics.h("pickMedia");
            throw null;
        }
    }

    public final void selectVideo() {
        ActivityResultLauncher<PickVisualMediaRequest> activityResultLauncher = this.pickMedia;
        if (activityResultLauncher != null) {
            activityResultLauncher.a(PickVisualMediaRequestKt.a(ActivityResultContracts$PickVisualMedia.VideoOnly.f774a));
        } else {
            Intrinsics.h("pickMedia");
            throw null;
        }
    }

    public final void selectVideoAndPhoto() {
        ActivityResultLauncher<PickVisualMediaRequest> activityResultLauncher = this.pickMedia;
        if (activityResultLauncher != null) {
            activityResultLauncher.a(PickVisualMediaRequestKt.a(ActivityResultContracts$PickVisualMedia.ImageAndVideo.f771a));
        } else {
            Intrinsics.h("pickMedia");
            throw null;
        }
    }
}

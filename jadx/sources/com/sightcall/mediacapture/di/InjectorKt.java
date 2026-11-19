package com.sightcall.mediacapture.di;

import com.sightcall.core.InitSightcallKt;
import com.sightcall.getmedia.di.MediaComponentKt;
import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\b\u0010\u0006\u001a\u00020\u0002H\u0002\u001a\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0000\"\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000b"}, d2 = {"mediaCaptureComponentReference", "Ljava/lang/ref/WeakReference;", "Lcom/sightcall/mediacapture/di/MediaCaptureComponent;", "mediaCaptureComponent", "getMediaCaptureComponent", "()Lcom/sightcall/mediacapture/di/MediaCaptureComponent;", "newMediaCaptureComponentInstance", "inject", "", "mediaCaptureFragment", "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;", "lib_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class InjectorKt {
    private static WeakReference<MediaCaptureComponent> mediaCaptureComponentReference = new WeakReference<>(null);

    private static final MediaCaptureComponent getMediaCaptureComponent() {
        MediaCaptureComponent mediaCaptureComponent = mediaCaptureComponentReference.get();
        if (mediaCaptureComponent != null) {
            return mediaCaptureComponent;
        }
        MediaCaptureComponent mediaCaptureComponentNewMediaCaptureComponentInstance = newMediaCaptureComponentInstance();
        mediaCaptureComponentReference = new WeakReference<>(mediaCaptureComponentNewMediaCaptureComponentInstance);
        return mediaCaptureComponentNewMediaCaptureComponentInstance;
    }

    public static final void inject(MediaCaptureFragment mediaCaptureFragment) {
        mediaCaptureFragment.getClass();
        getMediaCaptureComponent().inject(mediaCaptureFragment);
    }

    private static final MediaCaptureComponent newMediaCaptureComponentInstance() {
        MediaCaptureComponent mediaCaptureComponentBuild = DaggerMediaCaptureComponent.builder().sightCallComponent(InitSightcallKt.getSightCallComponent()).mediaComponent(MediaComponentKt.getMediaComponent()).build();
        mediaCaptureComponentBuild.getClass();
        return mediaCaptureComponentBuild;
    }
}

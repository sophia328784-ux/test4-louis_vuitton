package com.sightcall.mediacapture;

import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import com.sightcall.mediacapture.presenter.item.MediaCaptureParameters;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005¨\u0006\b"}, d2 = {"Lcom/sightcall/mediacapture/StartMediaCapture;", "", "<init>", "()V", "forCameraPhoto", "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;", "forGalleryPhoto", "forGalleryVideo", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StartMediaCapture {
    public static final StartMediaCapture INSTANCE = new StartMediaCapture();

    private StartMediaCapture() {
    }

    public final MediaCaptureFragment forCameraPhoto() {
        return new MediaCaptureFragment.Args(new MediaCaptureParameters(true, false, false, true, null, null, null, false, null, null, null, null)).newInstance();
    }

    public final MediaCaptureFragment forGalleryPhoto() {
        return new MediaCaptureFragment.Args(new MediaCaptureParameters(false, false, true, false, null, null, null, false, null, null, null, null)).newInstance();
    }

    public final MediaCaptureFragment forGalleryVideo() {
        return new MediaCaptureFragment.Args(new MediaCaptureParameters(false, true, false, false, null, null, null, false, null, null, null, null)).newInstance();
    }
}

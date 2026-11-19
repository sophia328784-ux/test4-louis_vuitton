package androidx.camera.video.internal.config;

import androidx.camera.core.impl.EncoderProfilesProxy;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioMimeInfo extends MimeInfo {

    public static abstract class Builder extends MimeInfo.Builder<Builder> {
    }

    public abstract EncoderProfilesProxy.AudioProfileProxy c();
}

package androidx.camera.video.internal;

import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class VideoValidatedEncoderProfilesProxy implements EncoderProfilesProxy {
    public static VideoValidatedEncoderProfilesProxy e(EncoderProfilesProxy encoderProfilesProxy) {
        int iA = encoderProfilesProxy.a();
        int iC = encoderProfilesProxy.c();
        List listD = encoderProfilesProxy.d();
        List listB = encoderProfilesProxy.b();
        Preconditions.b(!listB.isEmpty(), "Should contain at least one VideoProfile.");
        return new AutoValue_VideoValidatedEncoderProfilesProxy(iA, iC, Collections.unmodifiableList(new ArrayList(listD)), Collections.unmodifiableList(new ArrayList(listB)), !listD.isEmpty() ? (EncoderProfilesProxy.AudioProfileProxy) listD.get(0) : null, (EncoderProfilesProxy.VideoProfileProxy) listB.get(0));
    }

    public abstract EncoderProfilesProxy.AudioProfileProxy f();

    public abstract EncoderProfilesProxy.VideoProfileProxy g();
}

package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import defpackage.tr;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class EncoderInfoImpl implements EncoderInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f3066a;

    public EncoderInfoImpl(MediaCodecInfo mediaCodecInfo, String str) throws InvalidConfigException {
        try {
            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
            Objects.requireNonNull(capabilitiesForType);
            this.f3066a = capabilitiesForType;
        } catch (RuntimeException e2) {
            throw new InvalidConfigException(tr.g("Unable to get CodecCapabilities for mime: ", str), e2);
        }
    }
}

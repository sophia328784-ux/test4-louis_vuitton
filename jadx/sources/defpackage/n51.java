package defpackage;

import androidx.camera.core.Logger;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.camera.video.internal.utils.CodecUtil;
import androidx.camera.video.internal.workaround.VideoEncoderInfoWrapper;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n51 implements VideoEncoderInfo.Finder {
    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo.Finder
    public final VideoEncoderInfo find(String str) {
        try {
            return VideoEncoderInfoWrapper.k(new VideoEncoderInfoImpl(CodecUtil.a(str), str), null);
        } catch (InvalidConfigException unused) {
            Logger.c(5, "VideoEncoderInfoImpl");
            return null;
        }
    }
}

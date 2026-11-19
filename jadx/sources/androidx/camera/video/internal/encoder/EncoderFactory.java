package androidx.camera.video.internal.encoder;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface EncoderFactory {
    EncoderImpl c(Executor executor, EncoderConfig encoderConfig, int i2);
}

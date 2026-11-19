package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.util.Range;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import defpackage.ct0;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3081c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f3080b = i2;
        this.f3081c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        EncoderCallback encoderCallback;
        Executor executor;
        switch (this.f3080b) {
            case 0:
                EncoderImpl encoderImpl = (EncoderImpl) this.f3081c;
                encoderImpl.n.remove((EncoderImpl.AnonymousClass2) this.d);
                return;
            case 1:
                Executor executor2 = (Executor) this.f3081c;
                EncoderImpl.MediaCodecCallback mediaCodecCallback = (EncoderImpl.MediaCodecCallback) this.d;
                Range range = EncoderImpl.H;
                Objects.requireNonNull(mediaCodecCallback);
                executor2.execute(new b(mediaCodecCallback, 2));
                return;
            case 2:
                EncoderImpl.ByteBufferInput byteBufferInput = (EncoderImpl.ByteBufferInput) this.f3081c;
                Observable.Observer observer = (Observable.Observer) this.d;
                LinkedHashMap linkedHashMap = byteBufferInput.f3047a;
                observer.getClass();
                linkedHashMap.remove(observer);
                return;
            case 3:
                EncoderImpl.MediaCodecCallback mediaCodecCallback2 = (EncoderImpl.MediaCodecCallback) this.f3081c;
                MediaCodec.CodecException codecException = (MediaCodec.CodecException) this.d;
                EncoderImpl encoderImpl2 = EncoderImpl.this;
                switch (encoderImpl2.w.ordinal()) {
                    case 0:
                    case 7:
                    case 8:
                        return;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        encoderImpl2.h(1, codecException.getMessage(), codecException);
                        return;
                    default:
                        ct0.o(encoderImpl2.w, "Unknown state: ");
                        return;
                }
            case 4:
                EncoderImpl.MediaCodecCallback mediaCodecCallback3 = (EncoderImpl.MediaCodecCallback) this.f3081c;
                MediaFormat mediaFormat = (MediaFormat) this.d;
                boolean z = mediaCodecCallback3.f3057j;
                EncoderImpl encoderImpl3 = EncoderImpl.this;
                int i2 = 5;
                if (z) {
                    Logger.c(5, encoderImpl3.f3033a);
                    return;
                }
                switch (encoderImpl3.w.ordinal()) {
                    case 0:
                    case 7:
                    case 8:
                        return;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        EncoderImpl encoderImpl4 = EncoderImpl.this;
                        if (encoderImpl4.f3035c && encoderImpl4.i()) {
                            mediaFormat.setInteger("time-lapse-enable", 1);
                            mediaFormat.setInteger("time-lapse-fps", ((AutoValue_VideoEncoderConfig) ((VideoEncoderConfig) EncoderImpl.this.d)).g);
                        }
                        synchronized (EncoderImpl.this.f3034b) {
                            EncoderImpl encoderImpl5 = EncoderImpl.this;
                            encoderCallback = encoderImpl5.u;
                            executor = encoderImpl5.v;
                            break;
                        }
                        try {
                            executor.execute(new a(encoderCallback, mediaFormat, i2));
                            return;
                        } catch (RejectedExecutionException unused) {
                            Logger.b(EncoderImpl.this.f3033a);
                            return;
                        }
                    default:
                        ct0.o(EncoderImpl.this.w, "Unknown state: ");
                        return;
                }
            case 5:
                EncoderCallback encoderCallback2 = (EncoderCallback) this.f3081c;
                MediaFormat mediaFormat2 = (MediaFormat) this.d;
                int i3 = EncoderImpl.MediaCodecCallback.m;
                encoderCallback2.c(new f(mediaFormat2, 2));
                return;
            default:
                EncoderCallback encoderCallback3 = (EncoderCallback) this.f3081c;
                EncodedDataImpl encodedDataImpl = (EncodedDataImpl) this.d;
                int i4 = EncoderImpl.MediaCodecCallback.m;
                encoderCallback3.b(encodedDataImpl);
                return;
        }
    }
}

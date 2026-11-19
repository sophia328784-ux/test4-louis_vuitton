package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import defpackage.ct0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3083c;

    public /* synthetic */ b(Object obj, int i2) {
        this.f3082b = i2;
        this.f3083c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f3082b;
        Object obj = this.f3083c;
        switch (i2) {
            case 0:
                final EncoderImpl encoderImpl = (EncoderImpl) obj;
                Logger.c(3, encoderImpl.f3033a);
                Futures.a(encoderImpl.g(), new FutureCallback<InputBuffer>() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.1
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onFailure(Throwable th) {
                        EncoderImpl.this.h(0, "Unable to acquire InputBuffer.", th);
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onSuccess(Object obj2) {
                        InputBuffer inputBuffer = (InputBuffer) obj2;
                        EncoderImpl encoderImpl2 = EncoderImpl.this;
                        inputBuffer.b(((AnonymousClass3) encoderImpl2.r).b());
                        inputBuffer.c();
                        inputBuffer.a();
                        Futures.a(inputBuffer.d(), new FutureCallback<Void>() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.1.1
                            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                            public final void onFailure(Throwable th) {
                                boolean z = th instanceof MediaCodec.CodecException;
                                EncoderImpl encoderImpl3 = EncoderImpl.this;
                                if (!z) {
                                    encoderImpl3.h(0, th.getMessage(), th);
                                } else {
                                    MediaCodec.CodecException codecException = (MediaCodec.CodecException) th;
                                    encoderImpl3.h(1, codecException.getMessage(), codecException);
                                }
                            }

                            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                            public final /* bridge */ /* synthetic */ void onSuccess(Object obj3) {
                            }
                        }, encoderImpl2.f3039i);
                    }
                }, encoderImpl.f3039i);
                break;
            case 1:
                EncoderImpl encoderImpl2 = (EncoderImpl) obj;
                switch (encoderImpl2.w.ordinal()) {
                    case 0:
                    case 1:
                    case 2:
                    case 7:
                        encoderImpl2.l();
                        break;
                    case 3:
                    case 4:
                    case 5:
                        encoderImpl2.o(EncoderImpl.InternalState.PENDING_RELEASE);
                        break;
                    case 6:
                    case 8:
                        break;
                    default:
                        ct0.o(encoderImpl2.w, "Unknown state: ");
                        break;
                }
                break;
            default:
                ((EncoderImpl.MediaCodecCallback) obj).a();
                break;
        }
    }
}

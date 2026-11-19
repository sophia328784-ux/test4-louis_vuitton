package androidx.camera.video.internal.encoder;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.StopCodecAfterSurfaceRemovalCrashMediaServerQuirk;
import defpackage.iw;
import defpackage.jr;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3087c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3088e;

    public /* synthetic */ d(Object obj, Object obj2, Object obj3, int i2) {
        this.f3086b = i2;
        this.f3087c = obj;
        this.d = obj2;
        this.f3088e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3086b) {
            case 0:
                EncoderImpl encoderImpl = (EncoderImpl) this.f3087c;
                ArrayList arrayList = (ArrayList) this.d;
                Runnable runnable = (Runnable) this.f3088e;
                if (encoderImpl.w != EncoderImpl.InternalState.ERROR) {
                    if (!arrayList.isEmpty()) {
                        Logger.c(3, encoderImpl.f3033a);
                    }
                    if ((encoderImpl.g instanceof EncoderImpl.SurfaceInput) && !encoderImpl.E && DeviceQuirks.f2947a.b(StopCodecAfterSurfaceRemovalCrashMediaServerQuirk.class) == null) {
                        boolean z = encoderImpl.t;
                        String str = encoderImpl.f3033a;
                        if (z) {
                            Logger.c(3, str);
                            encoderImpl.f3037f.stop();
                        } else {
                            Logger.c(3, str);
                            encoderImpl.f3037f.flush();
                        }
                        encoderImpl.D = true;
                    } else {
                        Logger.c(3, encoderImpl.f3033a);
                        encoderImpl.f3037f.stop();
                    }
                }
                runnable.run();
                EncoderImpl.InternalState internalState = encoderImpl.w;
                if (internalState != EncoderImpl.InternalState.PENDING_RELEASE) {
                    if (!encoderImpl.D) {
                        encoderImpl.n();
                    }
                    encoderImpl.o(EncoderImpl.InternalState.CONFIGURED);
                    if (internalState == EncoderImpl.InternalState.PENDING_START || internalState == EncoderImpl.InternalState.PENDING_START_PAUSED) {
                        encoderImpl.start();
                        if (internalState == EncoderImpl.InternalState.PENDING_START_PAUSED) {
                            encoderImpl.pause();
                        }
                    }
                } else {
                    encoderImpl.l();
                }
                break;
            case 1:
                EncoderImpl.ByteBufferInput byteBufferInput = (EncoderImpl.ByteBufferInput) this.f3087c;
                Observable.Observer observer = (Observable.Observer) this.d;
                Executor executor = (Executor) this.f3088e;
                LinkedHashMap linkedHashMap = byteBufferInput.f3047a;
                observer.getClass();
                executor.getClass();
                linkedHashMap.put(observer, executor);
                executor.execute(new jr(observer, byteBufferInput.f3048b, 14));
                break;
            default:
                EncoderImpl.MediaCodecCallback mediaCodecCallback = (EncoderImpl.MediaCodecCallback) this.f3087c;
                Executor executor2 = (Executor) this.d;
                EncoderCallback encoderCallback = (EncoderCallback) this.f3088e;
                EncoderImpl encoderImpl2 = EncoderImpl.this;
                if (encoderImpl2.w != EncoderImpl.InternalState.ERROR) {
                    try {
                        Objects.requireNonNull(encoderCallback);
                        executor2.execute(new iw(encoderCallback, 1));
                    } catch (RejectedExecutionException unused) {
                        Logger.b(encoderImpl2.f3033a);
                    }
                    break;
                }
                break;
        }
    }
}

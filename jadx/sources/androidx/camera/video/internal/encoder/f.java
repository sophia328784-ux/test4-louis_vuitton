package androidx.camera.video.internal.encoder;

import android.media.MediaFormat;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.BufferProvider;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements CallbackToFutureAdapter.Resolver, OutputConfig {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3092c;

    public /* synthetic */ f(Object obj, int i2) {
        this.f3091b = i2;
        this.f3092c = obj;
    }

    public MediaFormat a() {
        MediaFormat mediaFormat = (MediaFormat) this.f3092c;
        int i2 = EncoderImpl.MediaCodecCallback.m;
        return mediaFormat;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(final CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f3091b;
        final EncoderImpl.ByteBufferInput byteBufferInput = (EncoderImpl.ByteBufferInput) this.f3092c;
        switch (i2) {
            case 0:
                final int i3 = 1;
                byteBufferInput.d.f3039i.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i4 = i3;
                        CallbackToFutureAdapter.Completer completer2 = completer;
                        final EncoderImpl.ByteBufferInput byteBufferInput2 = byteBufferInput;
                        switch (i4) {
                            case 0:
                                EncoderImpl encoderImpl = byteBufferInput2.d;
                                BufferProvider.State state = byteBufferInput2.f3048b;
                                if (state == BufferProvider.State.ACTIVE) {
                                    final ListenableFuture listenableFutureG = encoderImpl.g();
                                    Futures.i(completer2, listenableFutureG);
                                    final int i5 = 0;
                                    completer2.a(new Runnable() { // from class: androidx.camera.video.internal.encoder.h
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i6 = i5;
                                            ListenableFuture listenableFuture = listenableFutureG;
                                            EncoderImpl.ByteBufferInput byteBufferInput3 = byteBufferInput2;
                                            switch (i6) {
                                                case 0:
                                                    if (!listenableFuture.cancel(true)) {
                                                        Preconditions.f(null, listenableFuture.isDone());
                                                        try {
                                                            ((InputBuffer) listenableFuture.get()).cancel();
                                                        } catch (InterruptedException | CancellationException | ExecutionException e2) {
                                                            String str = byteBufferInput3.d.f3033a;
                                                            e2.toString();
                                                            Logger.c(5, str);
                                                            return;
                                                        }
                                                    }
                                                    break;
                                                default:
                                                    byteBufferInput3.f3049c.remove(listenableFuture);
                                                    break;
                                            }
                                        }
                                    }, CameraXExecutors.a());
                                    byteBufferInput2.f3049c.add(listenableFutureG);
                                    final int i6 = 1;
                                    listenableFutureG.addListener(new Runnable() { // from class: androidx.camera.video.internal.encoder.h
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i7 = i6;
                                            ListenableFuture listenableFuture = listenableFutureG;
                                            EncoderImpl.ByteBufferInput byteBufferInput3 = byteBufferInput2;
                                            switch (i7) {
                                                case 0:
                                                    if (!listenableFuture.cancel(true)) {
                                                        Preconditions.f(null, listenableFuture.isDone());
                                                        try {
                                                            ((InputBuffer) listenableFuture.get()).cancel();
                                                        } catch (InterruptedException | CancellationException | ExecutionException e2) {
                                                            String str = byteBufferInput3.d.f3033a;
                                                            e2.toString();
                                                            Logger.c(5, str);
                                                            return;
                                                        }
                                                    }
                                                    break;
                                                default:
                                                    byteBufferInput3.f3049c.remove(listenableFuture);
                                                    break;
                                            }
                                        }
                                    }, encoderImpl.f3039i);
                                } else if (state != BufferProvider.State.INACTIVE) {
                                    completer2.d(new IllegalStateException("Unknown state: " + byteBufferInput2.f3048b));
                                } else {
                                    completer2.d(new IllegalStateException("BufferProvider is not active."));
                                }
                                break;
                            default:
                                completer2.b(byteBufferInput2.f3048b);
                                break;
                        }
                    }
                });
                return "fetchData";
            default:
                final int i4 = 0;
                byteBufferInput.d.f3039i.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i5 = i4;
                        CallbackToFutureAdapter.Completer completer2 = completer;
                        final EncoderImpl.ByteBufferInput byteBufferInput2 = byteBufferInput;
                        switch (i5) {
                            case 0:
                                EncoderImpl encoderImpl = byteBufferInput2.d;
                                BufferProvider.State state = byteBufferInput2.f3048b;
                                if (state == BufferProvider.State.ACTIVE) {
                                    final ListenableFuture listenableFutureG = encoderImpl.g();
                                    Futures.i(completer2, listenableFutureG);
                                    final int i6 = 0;
                                    completer2.a(new Runnable() { // from class: androidx.camera.video.internal.encoder.h
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i7 = i6;
                                            ListenableFuture listenableFuture = listenableFutureG;
                                            EncoderImpl.ByteBufferInput byteBufferInput3 = byteBufferInput2;
                                            switch (i7) {
                                                case 0:
                                                    if (!listenableFuture.cancel(true)) {
                                                        Preconditions.f(null, listenableFuture.isDone());
                                                        try {
                                                            ((InputBuffer) listenableFuture.get()).cancel();
                                                        } catch (InterruptedException | CancellationException | ExecutionException e2) {
                                                            String str = byteBufferInput3.d.f3033a;
                                                            e2.toString();
                                                            Logger.c(5, str);
                                                            return;
                                                        }
                                                    }
                                                    break;
                                                default:
                                                    byteBufferInput3.f3049c.remove(listenableFuture);
                                                    break;
                                            }
                                        }
                                    }, CameraXExecutors.a());
                                    byteBufferInput2.f3049c.add(listenableFutureG);
                                    final int i7 = 1;
                                    listenableFutureG.addListener(new Runnable() { // from class: androidx.camera.video.internal.encoder.h
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i8 = i7;
                                            ListenableFuture listenableFuture = listenableFutureG;
                                            EncoderImpl.ByteBufferInput byteBufferInput3 = byteBufferInput2;
                                            switch (i8) {
                                                case 0:
                                                    if (!listenableFuture.cancel(true)) {
                                                        Preconditions.f(null, listenableFuture.isDone());
                                                        try {
                                                            ((InputBuffer) listenableFuture.get()).cancel();
                                                        } catch (InterruptedException | CancellationException | ExecutionException e2) {
                                                            String str = byteBufferInput3.d.f3033a;
                                                            e2.toString();
                                                            Logger.c(5, str);
                                                            return;
                                                        }
                                                    }
                                                    break;
                                                default:
                                                    byteBufferInput3.f3049c.remove(listenableFuture);
                                                    break;
                                            }
                                        }
                                    }, encoderImpl.f3039i);
                                } else if (state != BufferProvider.State.INACTIVE) {
                                    completer2.d(new IllegalStateException("Unknown state: " + byteBufferInput2.f3048b));
                                } else {
                                    completer2.d(new IllegalStateException("BufferProvider is not active."));
                                }
                                break;
                            default:
                                completer2.b(byteBufferInput2.f3048b);
                                break;
                        }
                    }
                });
                return "acquireBuffer";
        }
    }
}

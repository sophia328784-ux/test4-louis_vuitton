package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.md;
import defpackage.rh;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
abstract class InputBufferImpl implements InputBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f3067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteBuffer f3069c;
    public final ListenableFuture d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CallbackToFutureAdapter.Completer f3070e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f3071f = new AtomicBoolean(false);
    public long g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3072h = false;

    public InputBufferImpl(MediaCodec mediaCodec, int i2) {
        mediaCodec.getClass();
        this.f3067a = mediaCodec;
        Preconditions.d(i2);
        this.f3068b = i2;
        this.f3069c = mediaCodec.getInputBuffer(i2);
        AtomicReference atomicReference = new AtomicReference();
        this.d = CallbackToFutureAdapter.a(new rh(atomicReference, 5));
        CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) atomicReference.get();
        completer.getClass();
        this.f3070e = completer;
    }

    @Override // androidx.camera.video.internal.encoder.InputBuffer
    public final ByteBuffer N() {
        if (!this.f3071f.get()) {
            return this.f3069c;
        }
        md.k("The buffer is submitted or canceled.");
        return null;
    }

    @Override // androidx.camera.video.internal.encoder.InputBuffer
    public final boolean a() {
        CallbackToFutureAdapter.Completer completer = this.f3070e;
        ByteBuffer byteBuffer = this.f3069c;
        if (this.f3071f.getAndSet(true)) {
            return false;
        }
        try {
            this.f3067a.queueInputBuffer(this.f3068b, byteBuffer.position(), byteBuffer.limit(), this.g, this.f3072h ? 4 : 0);
            completer.b(null);
            return true;
        } catch (IllegalStateException e2) {
            completer.d(e2);
            return false;
        }
    }

    @Override // androidx.camera.video.internal.encoder.InputBuffer
    public final void c() {
        if (this.f3071f.get()) {
            md.k("The buffer is submitted or canceled.");
        } else {
            this.f3072h = true;
        }
    }

    @Override // androidx.camera.video.internal.encoder.InputBuffer
    public final boolean cancel() {
        CallbackToFutureAdapter.Completer completer = this.f3070e;
        if (this.f3071f.getAndSet(true)) {
            return false;
        }
        try {
            this.f3067a.queueInputBuffer(this.f3068b, 0, 0, 0L, 0);
            completer.b(null);
        } catch (IllegalStateException e2) {
            completer.d(e2);
        }
        return true;
    }

    @Override // androidx.camera.video.internal.encoder.InputBuffer
    public final ListenableFuture d() {
        return Futures.h(this.d);
    }
}

package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.md;
import defpackage.rh;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class EncodedDataImpl implements EncodedData {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaCodec f3027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaCodec.BufferInfo f3028c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ByteBuffer f3029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ListenableFuture f3030f;
    public final CallbackToFutureAdapter.Completer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f3031h = new AtomicBoolean(false);

    public EncodedDataImpl(MediaCodec mediaCodec, int i2, MediaCodec.BufferInfo bufferInfo) {
        mediaCodec.getClass();
        this.f3027b = mediaCodec;
        this.d = i2;
        this.f3029e = mediaCodec.getOutputBuffer(i2);
        this.f3028c = bufferInfo;
        AtomicReference atomicReference = new AtomicReference();
        this.f3030f = CallbackToFutureAdapter.a(new rh(atomicReference, 2));
        CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) atomicReference.get();
        completer.getClass();
        this.g = completer;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final ByteBuffer N() {
        if (this.f3031h.get()) {
            md.k("encoded data is closed.");
            return null;
        }
        MediaCodec.BufferInfo bufferInfo = this.f3028c;
        int i2 = bufferInfo.offset;
        ByteBuffer byteBuffer = this.f3029e;
        byteBuffer.position(i2);
        byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
        return byteBuffer;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final MediaCodec.BufferInfo Y() {
        return this.f3028c;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final boolean c0() {
        return (this.f3028c.flags & 1) != 0;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        CallbackToFutureAdapter.Completer completer = this.g;
        if (this.f3031h.getAndSet(true)) {
            return;
        }
        try {
            this.f3027b.releaseOutputBuffer(this.d, false);
            completer.b(null);
        } catch (IllegalStateException e2) {
            completer.d(e2);
        }
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final long size() {
        return this.f3028c.size;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final long y0() {
        return this.f3028c.presentationTimeUs;
    }
}

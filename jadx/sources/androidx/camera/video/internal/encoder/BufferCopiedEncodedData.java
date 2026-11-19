package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.rh;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class BufferCopiedEncodedData implements EncodedData {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteBuffer f3024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaCodec.BufferInfo f3025c;
    public final ListenableFuture d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CallbackToFutureAdapter.Completer f3026e;

    public BufferCopiedEncodedData(EncodedData encodedData) {
        MediaCodec.BufferInfo bufferInfoY = encodedData.Y();
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        bufferInfo.set(0, bufferInfoY.size, bufferInfoY.presentationTimeUs, bufferInfoY.flags);
        this.f3025c = bufferInfo;
        ByteBuffer byteBufferN = encodedData.N();
        MediaCodec.BufferInfo bufferInfoY2 = encodedData.Y();
        byteBufferN.position(bufferInfoY2.offset);
        byteBufferN.limit(bufferInfoY2.offset + bufferInfoY2.size);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bufferInfoY2.size);
        byteBufferAllocate.order(byteBufferN.order());
        byteBufferAllocate.put(byteBufferN);
        byteBufferAllocate.flip();
        this.f3024b = byteBufferAllocate;
        AtomicReference atomicReference = new AtomicReference();
        this.d = CallbackToFutureAdapter.a(new rh(atomicReference, 0));
        CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) atomicReference.get();
        completer.getClass();
        this.f3026e = completer;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final ByteBuffer N() {
        return this.f3024b;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final MediaCodec.BufferInfo Y() {
        return this.f3025c;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final boolean c0() {
        return (this.f3025c.flags & 1) != 0;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f3026e.b(null);
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final long size() {
        return this.f3025c.size;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public final long y0() {
        return this.f3025c.presentationTimeUs;
    }
}

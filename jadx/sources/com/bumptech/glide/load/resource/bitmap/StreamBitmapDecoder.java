package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.ExceptionPassthroughInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
public class StreamBitmapDecoder implements ResourceDecoder<InputStream, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Downsampler f24811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayPool f24812b;

    public static class UntrustedCallbacks implements Downsampler.DecodeCallbacks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RecyclableBufferedInputStream f24813a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ExceptionPassthroughInputStream f24814b;

        public UntrustedCallbacks(RecyclableBufferedInputStream recyclableBufferedInputStream, ExceptionPassthroughInputStream exceptionPassthroughInputStream) {
            this.f24813a = recyclableBufferedInputStream;
            this.f24814b = exceptionPassthroughInputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void a(Bitmap bitmap, BitmapPool bitmapPool) throws IOException {
            IOException iOException = this.f24814b.f24982c;
            if (iOException != null) {
                if (bitmap == null) {
                    throw iOException;
                }
                bitmapPool.d(bitmap);
                throw iOException;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void b() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f24813a;
            synchronized (recyclableBufferedInputStream) {
                recyclableBufferedInputStream.d = recyclableBufferedInputStream.f24805b.length;
            }
        }
    }

    public StreamBitmapDecoder(Downsampler downsampler, ArrayPool arrayPool) {
        this.f24811a = downsampler;
        this.f24812b = arrayPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        this.f24811a.getClass();
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i2, int i3, Options options) {
        boolean z;
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        ExceptionPassthroughInputStream exceptionPassthroughInputStream;
        InputStream inputStream = (InputStream) obj;
        if (inputStream instanceof RecyclableBufferedInputStream) {
            recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
            z = false;
        } else {
            z = true;
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, this.f24812b);
        }
        ArrayDeque arrayDeque = ExceptionPassthroughInputStream.d;
        synchronized (arrayDeque) {
            exceptionPassthroughInputStream = (ExceptionPassthroughInputStream) arrayDeque.poll();
        }
        if (exceptionPassthroughInputStream == null) {
            exceptionPassthroughInputStream = new ExceptionPassthroughInputStream();
        }
        ExceptionPassthroughInputStream exceptionPassthroughInputStream2 = exceptionPassthroughInputStream;
        exceptionPassthroughInputStream2.f24981b = recyclableBufferedInputStream;
        MarkEnforcingInputStream markEnforcingInputStream = new MarkEnforcingInputStream(exceptionPassthroughInputStream2);
        UntrustedCallbacks untrustedCallbacks = new UntrustedCallbacks(recyclableBufferedInputStream, exceptionPassthroughInputStream2);
        try {
            Downsampler downsampler = this.f24811a;
            BitmapResource bitmapResourceA = downsampler.a(new ImageReader.InputStreamImageReader(markEnforcingInputStream, downsampler.d, downsampler.f24780c), i2, i3, options, untrustedCallbacks);
            exceptionPassthroughInputStream2.f24982c = null;
            exceptionPassthroughInputStream2.f24981b = null;
            synchronized (arrayDeque) {
                arrayDeque.offer(exceptionPassthroughInputStream2);
            }
            return bitmapResourceA;
        } finally {
            exceptionPassthroughInputStream2.f24982c = null;
            exceptionPassthroughInputStream2.f24981b = null;
            ArrayDeque arrayDeque2 = ExceptionPassthroughInputStream.d;
            synchronized (arrayDeque2) {
                arrayDeque2.offer(exceptionPassthroughInputStream2);
                if (z) {
                    recyclableBufferedInputStream.release();
                }
            }
        }
    }
}

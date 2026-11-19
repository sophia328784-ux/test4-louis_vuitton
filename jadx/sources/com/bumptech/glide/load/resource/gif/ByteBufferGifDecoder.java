package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.util.LogTime;
import defpackage.r81;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ByteBufferGifDecoder implements ResourceDecoder<ByteBuffer, GifDrawable> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final GifDecoderFactory f24837f = new GifDecoderFactory();
    public static final GifHeaderParserPool g = new GifHeaderParserPool();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f24838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f24839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GifHeaderParserPool f24840c;
    public final GifDecoderFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GifBitmapProvider f24841e;

    public static class GifDecoderFactory {
    }

    public static class GifHeaderParserPool {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayDeque f24842a = new ArrayDeque(0);

        public final synchronized void a(GifHeaderParser gifHeaderParser) {
            gifHeaderParser.f24367b = null;
            gifHeaderParser.f24368c = null;
            this.f24842a.offer(gifHeaderParser);
        }
    }

    public ByteBufferGifDecoder(Context context) {
        this(context, Glide.a(context).d.a().b(), Glide.a(context).f24276b, Glide.a(context).f24278e);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        return !((Boolean) options.c(GifOptions.f24870b)).booleanValue() && ImageHeaderParserUtils.g(this.f24839b, (ByteBuffer) obj) == ImageHeaderParser.ImageType.GIF;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i2, int i3, Options options) {
        GifHeaderParser gifHeaderParser;
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        GifHeaderParserPool gifHeaderParserPool = this.f24840c;
        synchronized (gifHeaderParserPool) {
            try {
                GifHeaderParser gifHeaderParser2 = (GifHeaderParser) gifHeaderParserPool.f24842a.poll();
                if (gifHeaderParser2 == null) {
                    gifHeaderParser2 = new GifHeaderParser();
                }
                gifHeaderParser = gifHeaderParser2;
                gifHeaderParser.f24367b = null;
                Arrays.fill(gifHeaderParser.f24366a, (byte) 0);
                gifHeaderParser.f24368c = new GifHeader();
                gifHeaderParser.d = 0;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                gifHeaderParser.f24367b = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                gifHeaderParser.f24367b.order(ByteOrder.LITTLE_ENDIAN);
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            return c(byteBuffer, i2, i3, gifHeaderParser, options);
        } finally {
            this.f24840c.a(gifHeaderParser);
        }
    }

    public final GifDrawableResource c(ByteBuffer byteBuffer, int i2, int i3, GifHeaderParser gifHeaderParser, Options options) {
        boolean zIsLoggable;
        Bitmap.Config config;
        int i4 = LogTime.f24987a;
        SystemClock.elapsedRealtimeNanos();
        try {
            GifHeader gifHeaderB = gifHeaderParser.b();
            if (gifHeaderB.f24359c > 0 && gifHeaderB.f24358b == 0) {
                Bitmap.Config config2 = options.c(GifOptions.f24869a) == DecodeFormat.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int iMin = Math.min(gifHeaderB.g / i3, gifHeaderB.f24361f / i2);
                int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
                Log.isLoggable("BufferGifDecoder", 2);
                GifDecoderFactory gifDecoderFactory = this.d;
                GifBitmapProvider gifBitmapProvider = this.f24841e;
                gifDecoderFactory.getClass();
                StandardGifDecoder standardGifDecoder = new StandardGifDecoder(gifBitmapProvider, gifHeaderB, byteBuffer, iMax);
                Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
                if (config2 == config3 || config2 == (config = Bitmap.Config.RGB_565)) {
                    standardGifDecoder.t = config2;
                } else {
                    r81.f("Unsupported format: ", config2, ", must be one of ", config3, " or ", config);
                }
                standardGifDecoder.b();
                Bitmap bitmapA = standardGifDecoder.a();
                if (bitmapA != null) {
                    return new GifDrawableResource(new GifDrawable(this.f24838a, standardGifDecoder, UnitTransformation.f24747b, i2, i3, bitmapA));
                }
                if (zIsLoggable) {
                    return null;
                }
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                SystemClock.elapsedRealtimeNanos();
            }
        }
    }

    public ByteBufferGifDecoder(Context context, List<ImageHeaderParser> list, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.f24838a = context.getApplicationContext();
        this.f24839b = list;
        this.d = f24837f;
        this.f24841e = new GifBitmapProvider(bitmapPool, arrayPool);
        this.f24840c = g;
    }
}

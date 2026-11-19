package com.bumptech.glide.load.resource.drawable;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.Util;
import defpackage.a61;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class AnimatedImageDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f24828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayPool f24829b;

    public static final class AnimatedImageDrawableResource implements Resource<Drawable> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AnimatedImageDrawable f24830b;

        public AnimatedImageDrawableResource(AnimatedImageDrawable animatedImageDrawable) {
            this.f24830b = animatedImageDrawable;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final void a() {
            AnimatedImageDrawable animatedImageDrawable = this.f24830b;
            animatedImageDrawable.stop();
            animatedImageDrawable.clearAnimationCallbacks();
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final Class b() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final Object get() {
            return this.f24830b;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final int getSize() {
            AnimatedImageDrawable animatedImageDrawable = this.f24830b;
            return Util.d(Bitmap.Config.ARGB_8888) * animatedImageDrawable.getIntrinsicHeight() * animatedImageDrawable.getIntrinsicWidth() * 2;
        }
    }

    public static final class ByteBufferAnimatedImageDecoder implements ResourceDecoder<ByteBuffer, Drawable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AnimatedImageDecoder f24831a;

        public ByteBufferAnimatedImageDecoder(AnimatedImageDecoder animatedImageDecoder) {
            this.f24831a = animatedImageDecoder;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final boolean a(Object obj, Options options) {
            ImageHeaderParser.ImageType imageTypeG = ImageHeaderParserUtils.g(this.f24831a.f24828a, (ByteBuffer) obj);
            if (imageTypeG != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
                return Build.VERSION.SDK_INT >= 31 && imageTypeG == ImageHeaderParser.ImageType.ANIMATED_AVIF;
            }
            return true;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final Resource b(Object obj, int i2, int i3, Options options) {
            return AnimatedImageDecoder.b(ImageDecoder.createSource((ByteBuffer) obj), i2, i3, options);
        }
    }

    public static final class StreamAnimatedImageDecoder implements ResourceDecoder<InputStream, Drawable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AnimatedImageDecoder f24832a;

        public StreamAnimatedImageDecoder(AnimatedImageDecoder animatedImageDecoder) {
            this.f24832a = animatedImageDecoder;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final boolean a(Object obj, Options options) {
            AnimatedImageDecoder animatedImageDecoder = this.f24832a;
            ImageHeaderParser.ImageType imageTypeF = ImageHeaderParserUtils.f(animatedImageDecoder.f24828a, (InputStream) obj, animatedImageDecoder.f24829b);
            if (imageTypeF != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
                return Build.VERSION.SDK_INT >= 31 && imageTypeF == ImageHeaderParser.ImageType.ANIMATED_AVIF;
            }
            return true;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final Resource b(Object obj, int i2, int i3, Options options) {
            return AnimatedImageDecoder.b(ImageDecoder.createSource(ByteBufferUtil.b((InputStream) obj)), i2, i3, options);
        }
    }

    public AnimatedImageDecoder(ArrayList arrayList, ArrayPool arrayPool) {
        this.f24828a = arrayList;
        this.f24829b = arrayPool;
    }

    public static ResourceDecoder a(ArrayList arrayList, ArrayPool arrayPool) {
        return new ByteBufferAnimatedImageDecoder(new AnimatedImageDecoder(arrayList, arrayPool));
    }

    public static Resource b(ImageDecoder.Source source, int i2, int i3, Options options) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new DefaultOnHeaderDecodedListener(i2, i3, options));
        if (drawableDecodeDrawable instanceof AnimatedImageDrawable) {
            return new AnimatedImageDrawableResource((AnimatedImageDrawable) drawableDecodeDrawable);
        }
        a61.n(drawableDecodeDrawable, "Received unexpected drawable type for animated image, failing: ");
        return null;
    }

    public static ResourceDecoder c(ArrayList arrayList, ArrayPool arrayPool) {
        return new StreamAnimatedImageDecoder(new AnimatedImageDecoder(arrayList, arrayPool));
    }
}

package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapDrawableEncoder implements ResourceEncoder<BitmapDrawable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BitmapPool f24750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ResourceEncoder f24751b;

    public BitmapDrawableEncoder(BitmapPool bitmapPool, ResourceEncoder<Bitmap> resourceEncoder) {
        this.f24750a = bitmapPool;
        this.f24751b = resourceEncoder;
    }

    @Override // com.bumptech.glide.load.Encoder
    public final boolean a(Object obj, File file, Options options) {
        return this.f24751b.a(new BitmapResource(((BitmapDrawable) ((Resource) obj).get()).getBitmap(), this.f24750a), file, options);
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    public final EncodeStrategy b(Options options) {
        return this.f24751b.b(options);
    }
}

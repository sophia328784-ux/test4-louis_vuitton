package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public final class UnitBitmapDecoder implements ResourceDecoder<Bitmap, Bitmap> {

    public static final class NonOwnedBitmapResource implements Resource<Bitmap> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bitmap f24817b;

        public NonOwnedBitmapResource(Bitmap bitmap) {
            this.f24817b = bitmap;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final void a() {
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final Class b() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final Object get() {
            return this.f24817b;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final int getSize() {
            return Util.c(this.f24817b);
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final /* bridge */ /* synthetic */ boolean a(Object obj, Options options) {
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i2, int i3, Options options) {
        return new NonOwnedBitmapResource((Bitmap) obj);
    }
}

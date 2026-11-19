package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.DrawableTransformation;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableTransformation;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.signature.EmptySignature;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import defpackage.md;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseRequestOptions<T extends BaseRequestOptions<T>> implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f24928b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f24933i;
    public boolean n;
    public Resources.Theme o;
    public boolean p;
    public boolean r;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DiskCacheStrategy f24929c = DiskCacheStrategy.f24479c;
    public Priority d = Priority.NORMAL;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f24930e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24931f = -1;
    public int g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Key f24932h = EmptySignature.f24970b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f24934j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Options f24935k = new Options();
    public CachedHashCodeArrayMap l = new CachedHashCodeArrayMap();
    public Class m = Object.class;
    public boolean q = true;

    public static boolean f(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    public final BaseRequestOptions A(Class cls, Transformation transformation, boolean z) {
        if (this.p) {
            return clone().A(cls, transformation, z);
        }
        Preconditions.b(transformation);
        this.l.put(cls, transformation);
        int i2 = this.f24928b;
        this.f24934j = true;
        this.f24928b = 67584 | i2;
        this.q = false;
        if (z) {
            this.f24928b = i2 | 198656;
            this.f24933i = true;
        }
        l();
        return this;
    }

    public final BaseRequestOptions B() {
        if (this.p) {
            return clone().B();
        }
        this.r = true;
        this.f24928b |= 1048576;
        l();
        return this;
    }

    public BaseRequestOptions a(BaseRequestOptions baseRequestOptions) {
        if (this.p) {
            return clone().a(baseRequestOptions);
        }
        int i2 = baseRequestOptions.f24928b;
        if (f(baseRequestOptions.f24928b, 1048576)) {
            this.r = baseRequestOptions.r;
        }
        if (f(baseRequestOptions.f24928b, 4)) {
            this.f24929c = baseRequestOptions.f24929c;
        }
        if (f(baseRequestOptions.f24928b, 8)) {
            this.d = baseRequestOptions.d;
        }
        if (f(baseRequestOptions.f24928b, 16)) {
            this.f24928b &= -33;
        }
        if (f(baseRequestOptions.f24928b, 32)) {
            this.f24928b &= -17;
        }
        if (f(baseRequestOptions.f24928b, 64)) {
            this.f24928b &= -129;
        }
        if (f(baseRequestOptions.f24928b, 128)) {
            this.f24928b &= -65;
        }
        if (f(baseRequestOptions.f24928b, 256)) {
            this.f24930e = baseRequestOptions.f24930e;
        }
        if (f(baseRequestOptions.f24928b, 512)) {
            this.g = baseRequestOptions.g;
            this.f24931f = baseRequestOptions.f24931f;
        }
        if (f(baseRequestOptions.f24928b, 1024)) {
            this.f24932h = baseRequestOptions.f24932h;
        }
        if (f(baseRequestOptions.f24928b, 4096)) {
            this.m = baseRequestOptions.m;
        }
        if (f(baseRequestOptions.f24928b, 8192)) {
            this.f24928b &= -16385;
        }
        if (f(baseRequestOptions.f24928b, 16384)) {
            this.f24928b &= -8193;
        }
        if (f(baseRequestOptions.f24928b, 32768)) {
            this.o = baseRequestOptions.o;
        }
        if (f(baseRequestOptions.f24928b, 65536)) {
            this.f24934j = baseRequestOptions.f24934j;
        }
        if (f(baseRequestOptions.f24928b, 131072)) {
            this.f24933i = baseRequestOptions.f24933i;
        }
        if (f(baseRequestOptions.f24928b, 2048)) {
            this.l.putAll(baseRequestOptions.l);
            this.q = baseRequestOptions.q;
        }
        if (!this.f24934j) {
            this.l.clear();
            int i3 = this.f24928b;
            this.f24933i = false;
            this.f24928b = i3 & (-133121);
            this.q = true;
        }
        this.f24928b |= baseRequestOptions.f24928b;
        this.f24935k.f24400b.h(baseRequestOptions.f24935k.f24400b);
        l();
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BaseRequestOptions clone() {
        try {
            BaseRequestOptions baseRequestOptions = (BaseRequestOptions) super.clone();
            Options options = new Options();
            baseRequestOptions.f24935k = options;
            options.f24400b.h(this.f24935k.f24400b);
            CachedHashCodeArrayMap cachedHashCodeArrayMap = new CachedHashCodeArrayMap();
            baseRequestOptions.l = cachedHashCodeArrayMap;
            cachedHashCodeArrayMap.putAll(this.l);
            baseRequestOptions.n = false;
            baseRequestOptions.p = false;
            return baseRequestOptions;
        } catch (CloneNotSupportedException e2) {
            x1.m(e2);
            return null;
        }
    }

    public final BaseRequestOptions c(Class cls) {
        if (this.p) {
            return clone().c(cls);
        }
        this.m = cls;
        this.f24928b |= 4096;
        l();
        return this;
    }

    public final BaseRequestOptions d(DiskCacheStrategy diskCacheStrategy) {
        if (this.p) {
            return clone().d(diskCacheStrategy);
        }
        Preconditions.c(diskCacheStrategy, "Argument must not be null");
        this.f24929c = diskCacheStrategy;
        this.f24928b |= 4;
        l();
        return this;
    }

    public final boolean e(BaseRequestOptions baseRequestOptions) {
        baseRequestOptions.getClass();
        return Float.compare(1.0f, 1.0f) == 0 && this.f24930e == baseRequestOptions.f24930e && this.f24931f == baseRequestOptions.f24931f && this.g == baseRequestOptions.g && this.f24933i == baseRequestOptions.f24933i && this.f24934j == baseRequestOptions.f24934j && this.f24929c.equals(baseRequestOptions.f24929c) && this.d == baseRequestOptions.d && this.f24935k.equals(baseRequestOptions.f24935k) && this.l.equals(baseRequestOptions.l) && this.m.equals(baseRequestOptions.m) && Util.b(this.f24932h, baseRequestOptions.f24932h) && Util.b(this.o, baseRequestOptions.o);
    }

    public boolean equals(Object obj) {
        if (obj instanceof BaseRequestOptions) {
            return e((BaseRequestOptions) obj);
        }
        return false;
    }

    public final BaseRequestOptions g(DownsampleStrategy downsampleStrategy, BitmapTransformation bitmapTransformation) {
        if (this.p) {
            return clone().g(downsampleStrategy, bitmapTransformation);
        }
        Option option = DownsampleStrategy.f24772f;
        Preconditions.c(downsampleStrategy, "Argument must not be null");
        u(option, downsampleStrategy);
        return y(bitmapTransformation, false);
    }

    public final BaseRequestOptions h(int i2, int i3) {
        if (this.p) {
            return clone().h(i2, i3);
        }
        this.g = i2;
        this.f24931f = i3;
        this.f24928b |= 512;
        l();
        return this;
    }

    public int hashCode() {
        return Util.h(Util.h(Util.h(Util.h(Util.h(Util.h(Util.h(Util.g(0, Util.g(0, Util.g(this.f24934j ? 1 : 0, Util.g(this.f24933i ? 1 : 0, Util.g(this.g, Util.g(this.f24931f, Util.g(this.f24930e ? 1 : 0, Util.h(Util.g(0, Util.h(Util.g(0, Util.h(Util.g(0, Util.g(Float.floatToIntBits(1.0f), 17)), null)), null)), null)))))))), this.f24929c), this.d), this.f24935k), this.l), this.m), this.f24932h), this.o);
    }

    public final BaseRequestOptions i(Priority priority) {
        if (this.p) {
            return clone().i(priority);
        }
        Preconditions.c(priority, "Argument must not be null");
        this.d = priority;
        this.f24928b |= 8;
        l();
        return this;
    }

    public final BaseRequestOptions j(Option option) {
        if (this.p) {
            return clone().j(option);
        }
        this.f24935k.f24400b.remove(option);
        l();
        return this;
    }

    public final BaseRequestOptions k(DownsampleStrategy downsampleStrategy, BitmapTransformation bitmapTransformation, boolean z) {
        BaseRequestOptions baseRequestOptionsZ = z ? z(downsampleStrategy, bitmapTransformation) : g(downsampleStrategy, bitmapTransformation);
        baseRequestOptionsZ.q = true;
        return baseRequestOptionsZ;
    }

    public final void l() {
        if (this.n) {
            md.k("You cannot modify locked T, consider clone()");
        }
    }

    public final BaseRequestOptions u(Option option, Object obj) {
        if (this.p) {
            return clone().u(option, obj);
        }
        Preconditions.b(option);
        Preconditions.b(obj);
        this.f24935k.f24400b.put(option, obj);
        l();
        return this;
    }

    public final BaseRequestOptions v(Key key) {
        if (this.p) {
            return clone().v(key);
        }
        this.f24932h = key;
        this.f24928b |= 1024;
        l();
        return this;
    }

    public final BaseRequestOptions w() {
        if (this.p) {
            return clone().w();
        }
        this.f24930e = false;
        this.f24928b |= 256;
        l();
        return this;
    }

    public final BaseRequestOptions x(Resources.Theme theme) {
        if (this.p) {
            return clone().x(theme);
        }
        this.o = theme;
        int i2 = this.f24928b;
        if (theme != null) {
            this.f24928b = i2 | 32768;
            return u(ResourceDrawableDecoder.f24835b, theme);
        }
        this.f24928b = (-32769) & i2;
        return j(ResourceDrawableDecoder.f24835b);
    }

    public final BaseRequestOptions y(Transformation transformation, boolean z) {
        if (this.p) {
            return clone().y(transformation, z);
        }
        DrawableTransformation drawableTransformation = new DrawableTransformation(transformation, z);
        A(Bitmap.class, transformation, z);
        A(Drawable.class, drawableTransformation, z);
        A(BitmapDrawable.class, drawableTransformation, z);
        A(GifDrawable.class, new GifDrawableTransformation(transformation), z);
        l();
        return this;
    }

    public final BaseRequestOptions z(DownsampleStrategy downsampleStrategy, BitmapTransformation bitmapTransformation) {
        if (this.p) {
            return clone().z(downsampleStrategy, bitmapTransformation);
        }
        Option option = DownsampleStrategy.f24772f;
        Preconditions.c(downsampleStrategy, "Argument must not be null");
        u(option, downsampleStrategy);
        return y(bitmapTransformation, true);
    }
}

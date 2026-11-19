package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.util.Util;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class LruBitmapPool implements BitmapPool {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Bitmap.Config f24576f = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SizeConfigStrategy f24577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f24578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NullBitmapTracker f24579c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f24580e;

    public interface BitmapTracker {
    }

    public static final class NullBitmapTracker implements BitmapTracker {
    }

    public LruBitmapPool(long j2) {
        SizeConfigStrategy sizeConfigStrategy = new SizeConfigStrategy();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        hashSet.add(null);
        hashSet.remove(Bitmap.Config.HARDWARE);
        this(j2, sizeConfigStrategy, Collections.unmodifiableSet(hashSet));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final void a(int i2) {
        Log.isLoggable("LruBitmapPool", 3);
        if (i2 >= 40 || i2 >= 20) {
            b();
        } else if (i2 >= 20 || i2 == 15) {
            g(this.d / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final void b() {
        Log.isLoggable("LruBitmapPool", 3);
        g(0L);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final Bitmap c(int i2, int i3, Bitmap.Config config) {
        Bitmap bitmapF = f(i2, i3, config);
        if (bitmapF != null) {
            return bitmapF;
        }
        if (config == null) {
            config = f24576f;
        }
        return Bitmap.createBitmap(i2, i3, config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final synchronized void d(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                this.f24577a.getClass();
                if (Util.c(bitmap) <= this.d && this.f24578b.contains(bitmap.getConfig())) {
                    this.f24577a.getClass();
                    int iC = Util.c(bitmap);
                    this.f24577a.g(bitmap);
                    this.f24579c.getClass();
                    this.f24580e += (long) iC;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        this.f24577a.f(bitmap);
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        Objects.toString(this.f24577a);
                    }
                    g(this.d);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                this.f24577a.f(bitmap);
                bitmap.isMutable();
                this.f24578b.contains(bitmap.getConfig());
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final Bitmap e(int i2, int i3, Bitmap.Config config) {
        Bitmap bitmapF = f(i2, i3, config);
        if (bitmapF != null) {
            bitmapF.eraseColor(0);
            return bitmapF;
        }
        if (config == null) {
            config = f24576f;
        }
        return Bitmap.createBitmap(i2, i3, config);
    }

    public final synchronized Bitmap f(int i2, int i3, Bitmap.Config config) {
        Bitmap bitmapB;
        try {
            if (config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapB = this.f24577a.b(i2, i3, config != null ? config : f24576f);
            if (bitmapB != null) {
                long j2 = this.f24580e;
                this.f24577a.getClass();
                this.f24580e = j2 - ((long) Util.c(bitmapB));
                this.f24579c.getClass();
                bitmapB.setHasAlpha(true);
                bitmapB.setPremultiplied(true);
            } else if (Log.isLoggable("LruBitmapPool", 3)) {
                this.f24577a.e(i2, i3, config);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                this.f24577a.e(i2, i3, config);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Objects.toString(this.f24577a);
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmapB;
    }

    public final synchronized void g(long j2) {
        while (this.f24580e > j2) {
            SizeConfigStrategy sizeConfigStrategy = this.f24577a;
            Bitmap bitmap = (Bitmap) sizeConfigStrategy.f24585b.c();
            if (bitmap != null) {
                sizeConfigStrategy.a(Integer.valueOf(Util.c(bitmap)), bitmap);
            }
            if (bitmap == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Objects.toString(this.f24577a);
                }
                this.f24580e = 0L;
                return;
            }
            this.f24579c.getClass();
            long j3 = this.f24580e;
            this.f24577a.getClass();
            this.f24580e = j3 - ((long) Util.c(bitmap));
            if (Log.isLoggable("LruBitmapPool", 3)) {
                this.f24577a.f(bitmap);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Objects.toString(this.f24577a);
            }
            bitmap.recycle();
        }
    }

    public LruBitmapPool(long j2, SizeConfigStrategy sizeConfigStrategy, Set set) {
        this.d = j2;
        this.f24577a = sizeConfigStrategy;
        this.f24578b = set;
        this.f24579c = new NullBitmapTracker();
    }

    public LruBitmapPool(long j2, Set<Bitmap.Config> set) {
        this(j2, new SizeConfigStrategy(), set);
    }
}

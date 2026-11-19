package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import defpackage.md;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class GifDrawable extends Drawable implements GifFrameLoader.FrameCallback, Animatable, Animatable2Compat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GifState f24845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f24846c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f24847e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f24848f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f24849h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f24850i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Paint f24851j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f24852k;

    public GifDrawable(Context context, GifDecoder gifDecoder, Transformation<Bitmap> transformation, int i2, int i3, Bitmap bitmap) {
        this(new GifState(new GifFrameLoader(Glide.a(context), gifDecoder, i2, i3, transformation, bitmap)));
    }

    @Override // com.bumptech.glide.load.resource.gif.GifFrameLoader.FrameCallback
    public final void a() {
        Object callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        GifFrameLoader gifFrameLoader = this.f24845b.f24853a;
        GifFrameLoader.DelayTarget delayTarget = gifFrameLoader.f24861i;
        if ((delayTarget != null ? delayTarget.f24865f : -1) == gifFrameLoader.f24855a.c() - 1) {
            this.g++;
        }
        int i2 = this.f24849h;
        if (i2 == -1 || this.g < i2) {
            return;
        }
        stop();
    }

    public final ByteBuffer b() {
        return this.f24845b.f24853a.f24855a.getData().asReadOnlyBuffer();
    }

    public final Bitmap c() {
        return this.f24845b.f24853a.l;
    }

    public final void d() {
        Preconditions.a(!this.f24847e, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        GifState gifState = this.f24845b;
        if (gifState.f24853a.f24855a.c() == 1) {
            invalidateSelf();
            return;
        }
        if (this.f24846c) {
            return;
        }
        this.f24846c = true;
        GifFrameLoader gifFrameLoader = gifState.f24853a;
        ArrayList arrayList = gifFrameLoader.f24857c;
        if (gifFrameLoader.f24862j) {
            md.k("Cannot subscribe to a cleared frame loader");
            return;
        }
        if (arrayList.contains(this)) {
            md.k("Cannot subscribe twice in a row");
            return;
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !gifFrameLoader.f24859f) {
            gifFrameLoader.f24859f = true;
            gifFrameLoader.f24862j = false;
            gifFrameLoader.a();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f24847e) {
            return;
        }
        if (this.f24850i) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f24852k == null) {
                this.f24852k = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f24852k);
            this.f24850i = false;
        }
        GifFrameLoader gifFrameLoader = this.f24845b.f24853a;
        GifFrameLoader.DelayTarget delayTarget = gifFrameLoader.f24861i;
        Bitmap bitmap = delayTarget != null ? delayTarget.f24866h : gifFrameLoader.l;
        if (this.f24852k == null) {
            this.f24852k = new Rect();
        }
        Rect rect = this.f24852k;
        if (this.f24851j == null) {
            this.f24851j = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f24851j);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f24845b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f24845b.f24853a.q;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f24845b.f24853a.p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f24846c;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f24850i = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        if (this.f24851j == null) {
            this.f24851j = new Paint(2);
        }
        this.f24851j.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f24851j == null) {
            this.f24851j = new Paint(2);
        }
        this.f24851j.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Preconditions.a(!this.f24847e, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f24848f = z;
        if (!z) {
            this.f24846c = false;
            GifFrameLoader gifFrameLoader = this.f24845b.f24853a;
            ArrayList arrayList = gifFrameLoader.f24857c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                gifFrameLoader.f24859f = false;
            }
        } else if (this.d) {
            d();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.d = true;
        this.g = 0;
        if (this.f24848f) {
            d();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.d = false;
        this.f24846c = false;
        GifFrameLoader gifFrameLoader = this.f24845b.f24853a;
        ArrayList arrayList = gifFrameLoader.f24857c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            gifFrameLoader.f24859f = false;
        }
    }

    public static final class GifState extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GifFrameLoader f24853a;

        public GifState(GifFrameLoader gifFrameLoader) {
            this.f24853a = gifFrameLoader;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new GifDrawable(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new GifDrawable(this);
        }
    }

    @Deprecated
    public GifDrawable(Context context, GifDecoder gifDecoder, BitmapPool bitmapPool, Transformation<Bitmap> transformation, int i2, int i3, Bitmap bitmap) {
        this(context, gifDecoder, transformation, i2, i3, bitmap);
    }

    public GifDrawable(GifState gifState) {
        this.f24848f = true;
        this.f24849h = -1;
        this.f24845b = gifState;
    }
}

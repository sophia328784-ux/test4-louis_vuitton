package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class GifFrameLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GifDecoder f24855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f24856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f24857c;
    public final RequestManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BitmapPool f24858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f24859f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RequestBuilder f24860h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DelayTarget f24861i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f24862j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public DelayTarget f24863k;
    public Bitmap l;
    public Transformation m;
    public DelayTarget n;
    public int o;
    public int p;
    public int q;

    public static class DelayTarget extends CustomTarget<Bitmap> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Handler f24864e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f24865f;
        public final long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Bitmap f24866h;

        public DelayTarget(Handler handler, int i2, long j2) {
            this.f24864e = handler;
            this.f24865f = i2;
            this.g = j2;
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void e(Drawable drawable) {
            this.f24866h = null;
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void f(Object obj, Transition transition) {
            this.f24866h = (Bitmap) obj;
            Handler handler = this.f24864e;
            handler.sendMessageAtTime(handler.obtainMessage(1, this), this.g);
        }
    }

    public interface FrameCallback {
        void a();
    }

    public class FrameLoaderCallback implements Handler.Callback {
        public FrameLoaderCallback() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i2 = message.what;
            GifFrameLoader gifFrameLoader = GifFrameLoader.this;
            if (i2 == 1) {
                gifFrameLoader.b((DelayTarget) message.obj);
                return true;
            }
            if (i2 != 2) {
                return false;
            }
            gifFrameLoader.d.i((DelayTarget) message.obj);
            return false;
        }
    }

    public interface OnEveryFrameListener {
    }

    public GifFrameLoader(Glide glide, GifDecoder gifDecoder, int i2, int i3, Transformation transformation, Bitmap bitmap) {
        BitmapPool bitmapPool = glide.f24276b;
        GlideContext glideContext = glide.d;
        Context baseContext = glideContext.getBaseContext();
        Preconditions.c(baseContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        RequestManager requestManagerB = Glide.a(baseContext).f24279f.b(baseContext);
        Context baseContext2 = glideContext.getBaseContext();
        Preconditions.c(baseContext2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        RequestManager requestManagerB2 = Glide.a(baseContext2).f24279f.b(baseContext2);
        requestManagerB2.getClass();
        RequestBuilder requestBuilderD = new RequestBuilder(requestManagerB2.f24314b, requestManagerB2, Bitmap.class, requestManagerB2.f24315c).a(RequestManager.l).a(((RequestOptions) ((RequestOptions) ((RequestOptions) new RequestOptions().d(DiskCacheStrategy.f24477a)).B()).w()).h(i2, i3));
        this.f24857c = new ArrayList();
        this.d = requestManagerB;
        Handler handler = new Handler(Looper.getMainLooper(), new FrameLoaderCallback());
        this.f24858e = bitmapPool;
        this.f24856b = handler;
        this.f24860h = requestBuilderD;
        this.f24855a = gifDecoder;
        c(transformation, bitmap);
    }

    public final void a() {
        if (!this.f24859f || this.g) {
            return;
        }
        DelayTarget delayTarget = this.n;
        if (delayTarget != null) {
            this.n = null;
            b(delayTarget);
            return;
        }
        this.g = true;
        GifDecoder gifDecoder = this.f24855a;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) gifDecoder.d());
        gifDecoder.b();
        this.f24863k = new DelayTarget(this.f24856b, gifDecoder.e(), jUptimeMillis);
        RequestBuilder requestBuilderK = this.f24860h.a((RequestOptions) new RequestOptions().v(new ObjectKey(Double.valueOf(Math.random())))).K(gifDecoder);
        requestBuilderK.H(this.f24863k, requestBuilderK);
    }

    public final void b(DelayTarget delayTarget) {
        this.g = false;
        boolean z = this.f24862j;
        Handler handler = this.f24856b;
        if (z) {
            handler.obtainMessage(2, delayTarget).sendToTarget();
            return;
        }
        if (!this.f24859f) {
            this.n = delayTarget;
            return;
        }
        if (delayTarget.f24866h != null) {
            Bitmap bitmap = this.l;
            if (bitmap != null) {
                this.f24858e.d(bitmap);
                this.l = null;
            }
            DelayTarget delayTarget2 = this.f24861i;
            this.f24861i = delayTarget;
            ArrayList arrayList = this.f24857c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((FrameCallback) arrayList.get(size)).a();
            }
            if (delayTarget2 != null) {
                handler.obtainMessage(2, delayTarget2).sendToTarget();
            }
        }
        a();
    }

    public final void c(Transformation transformation, Bitmap bitmap) {
        Preconditions.c(transformation, "Argument must not be null");
        this.m = transformation;
        Preconditions.c(bitmap, "Argument must not be null");
        this.l = bitmap;
        this.f24860h = this.f24860h.a(new RequestOptions().y(transformation, true));
        this.o = Util.c(bitmap);
        this.p = bitmap.getWidth();
        this.q = bitmap.getHeight();
    }
}

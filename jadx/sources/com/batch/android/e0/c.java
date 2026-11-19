package com.batch.android.e0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.batch.android.e.t;
import com.batch.android.e.v;
import defpackage.f31;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class c extends Drawable implements Animatable {
    private static final int l = 3;
    private static final int m = 0;
    private static final int n = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23210c;
    private boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.batch.android.e0.b f23211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f23212f = null;
    private Queue<b> g = new LinkedList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f23213h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f23214i = new a(Looper.getMainLooper());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Runnable f23215j = new f31(this, 15);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Executor f23216k = Executors.newSingleThreadExecutor(new v("gif"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f23208a = new Paint(6);

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                c.this.a((b) message.obj);
            } else if (i2 == 1) {
                c.this.b();
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Bitmap f23218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f23219b;

        public b(Bitmap bitmap, int i2) {
            this.f23218a = bitmap;
            this.f23219b = i2;
        }
    }

    public c(Context context, com.batch.android.e0.b bVar) {
        this.f23209b = context.getResources().getDisplayMetrics().densityDpi;
        this.f23211e = bVar;
        for (int i2 = 0; i2 < 3; i2++) {
            this.f23216k.execute(this.f23215j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.d) {
            return;
        }
        try {
            this.f23211e.c();
            Message.obtain(this.f23214i, 0, new b(this.f23211e.b(), this.f23211e.f())).sendToTarget();
        } catch (Exception | OutOfMemoryError e2) {
            this.d = true;
            Message.obtain(this.f23214i, 1).sendToTarget();
            t.a("Failed producing next gif frame.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        stop();
        b bVar = this.f23212f;
        Queue<b> queue = this.g;
        if (bVar != null) {
            queue.clear();
            return;
        }
        b bVarPoll = queue.poll();
        this.g.clear();
        if (bVarPoll != null) {
            this.f23212f = bVarPoll;
            invalidateSelf();
        }
    }

    private void c() {
        b bVarPoll;
        if (this.d) {
            return;
        }
        if (this.f23210c || this.f23212f == null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis > this.f23213h && (bVarPoll = this.g.poll()) != null) {
                b bVar = this.f23212f;
                if (bVar != null) {
                    bVar.f23218a.recycle();
                }
                this.f23212f = bVarPoll;
                this.f23213h = Math.max(1 + jCurrentTimeMillis, (((long) bVarPoll.f23219b) + jCurrentTimeMillis) - Math.abs(jCurrentTimeMillis - this.f23213h));
                this.f23216k.execute(this.f23215j);
            }
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        c();
        b bVar = this.f23212f;
        if (bVar != null) {
            canvas.drawBitmap(bVar.f23218a, (Rect) null, getBounds(), this.f23208a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Bitmap bitmap;
        b bVar = this.f23212f;
        return (bVar == null || (bitmap = bVar.f23218a) == null) ? this.f23211e.d() : bitmap.getScaledHeight(this.f23209b);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Bitmap bitmap;
        b bVar = this.f23212f;
        return (bVar == null || (bitmap = bVar.f23218a) == null) ? this.f23211e.k() : bitmap.getScaledWidth(this.f23209b);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f23208a.getAlpha() < 255 ? -3 : -1;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f23210c;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f23208a.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.d) {
            return;
        }
        this.f23210c = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f23210c = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar) {
        this.g.add(bVar);
    }
}

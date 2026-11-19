package com.airbnb.lottie;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.Settings;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode;
import com.airbnb.lottie.manager.FontAssetManager;
import com.airbnb.lottie.manager.ImageAssetManager;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.LayerParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieThreadFactory;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import defpackage.et;
import defpackage.ft;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    public static final List O = Arrays.asList("reduced motion", "reduced_motion", "reduced-motion", "reducedmotion");
    public static final ThreadPoolExecutor P = new ThreadPoolExecutor(0, 2, 35, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new LottieThreadFactory());
    public RectF A;
    public LPaint B;
    public Rect C;
    public Rect D;
    public RectF E;
    public RectF F;
    public Matrix G;
    public final float[] H;
    public Matrix I;
    public boolean J;
    public AsyncUpdates K;
    public final Semaphore L;
    public final et M;
    public float N;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LottieComposition f21758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LottieValueAnimator f21759c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f21760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f21761f;
    public OnVisibleAction g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f21762h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageAssetManager f21763i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public FontAssetManager f21764j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Map f21765k;
    public final LottieFeatureFlags l;
    public boolean m;
    public boolean n;
    public CompositionLayer o;
    public int p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public RenderMode u;
    public boolean v;
    public final Matrix w;
    public Bitmap x;
    public Canvas y;
    public Rect z;

    public interface LazyCompositionTask {
        void run();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class OnVisibleAction {
        private static final /* synthetic */ OnVisibleAction[] $VALUES;
        public static final OnVisibleAction NONE;
        public static final OnVisibleAction PLAY;
        public static final OnVisibleAction RESUME;

        static {
            OnVisibleAction onVisibleAction = new OnVisibleAction("NONE", 0);
            NONE = onVisibleAction;
            OnVisibleAction onVisibleAction2 = new OnVisibleAction("PLAY", 1);
            PLAY = onVisibleAction2;
            OnVisibleAction onVisibleAction3 = new OnVisibleAction("RESUME", 2);
            RESUME = onVisibleAction3;
            $VALUES = new OnVisibleAction[]{onVisibleAction, onVisibleAction2, onVisibleAction3};
        }

        public static OnVisibleAction valueOf(String str) {
            return (OnVisibleAction) Enum.valueOf(OnVisibleAction.class, str);
        }

        public static OnVisibleAction[] values() {
            return (OnVisibleAction[]) $VALUES.clone();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    public LottieDrawable() {
        LottieValueAnimator lottieValueAnimator = new LottieValueAnimator();
        this.f21759c = lottieValueAnimator;
        this.d = true;
        this.f21760e = false;
        this.f21761f = false;
        this.g = OnVisibleAction.NONE;
        this.f21762h = new ArrayList();
        this.l = new LottieFeatureFlags();
        this.m = false;
        this.n = true;
        this.p = 255;
        this.t = false;
        this.u = RenderMode.AUTOMATIC;
        this.v = false;
        this.w = new Matrix();
        this.H = new float[9];
        this.J = false;
        ft ftVar = new ft(this, 3);
        this.L = new Semaphore(1);
        this.M = new et(this, 21);
        this.N = -3.4028235E38f;
        lottieValueAnimator.addUpdateListener(ftVar);
    }

    public static void e(Rect rect, RectF rectF) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public static boolean j(float f2) {
        return (Float.isNaN(f2) || Float.isInfinite(f2)) ? false : true;
    }

    public final void a(final KeyPath keyPath, final Object obj, final LottieValueCallback lottieValueCallback) {
        CompositionLayer compositionLayer = this.o;
        if (compositionLayer == null) {
            this.f21762h.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.d
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run() {
                    List list = LottieDrawable.O;
                    this.f22049a.a(keyPath, obj, lottieValueCallback);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (keyPath == KeyPath.f22079c) {
            compositionLayer.g(lottieValueCallback, obj);
        } else {
            KeyPathElement keyPathElement = keyPath.f22081b;
            if (keyPathElement != null) {
                keyPathElement.g(lottieValueCallback, obj);
            } else {
                ArrayList arrayList = new ArrayList();
                this.o.e(keyPath, 0, arrayList, new KeyPath(new String[0]));
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ((KeyPath) arrayList.get(i2)).f22081b.g(lottieValueCallback, obj);
                }
                zIsEmpty = true ^ arrayList.isEmpty();
            }
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (obj == LottieProperty.C) {
                p(this.f21759c.c());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    public final boolean b(Context context) {
        ReducedMotionMode reducedMotionMode;
        if (this.f21760e) {
            return true;
        }
        if (!this.d) {
            return false;
        }
        L.f21741b.getClass();
        if (context != null) {
            Matrix matrix = Utils.f22311a;
            if (Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                reducedMotionMode = ReducedMotionMode.STANDARD_MOTION;
            } else {
                reducedMotionMode = ReducedMotionMode.REDUCED_MOTION;
            }
        } else {
            reducedMotionMode = ReducedMotionMode.STANDARD_MOTION;
        }
        return reducedMotionMode == ReducedMotionMode.STANDARD_MOTION;
    }

    public final void c() {
        LottieComposition lottieComposition = this.f21758b;
        if (lottieComposition == null) {
            return;
        }
        JsonReader.Options options = LayerParser.f22247a;
        Rect rect = lottieComposition.f21754k;
        List list = Collections.EMPTY_LIST;
        CompositionLayer compositionLayer = new CompositionLayer(this, new Layer(list, lottieComposition, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, list, new AnimatableTransform(), 0, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.width(), rect.height(), null, null, list, Layer.MatteType.NONE, null, false, null, null, LBlendMode.NORMAL), lottieComposition.f21753j, lottieComposition);
        this.o = compositionLayer;
        if (this.q) {
            compositionLayer.q(true);
        }
        this.o.K = this.n;
    }

    public final void d() {
        LottieComposition lottieComposition = this.f21758b;
        if (lottieComposition == null) {
            return;
        }
        RenderMode renderMode = this.u;
        int i2 = lottieComposition.o;
        renderMode.getClass();
        int i3 = RenderMode.AnonymousClass1.f21790a[renderMode.ordinal()];
        boolean z = false;
        if (i3 != 1 && (i3 == 2 || i2 > 4)) {
            z = true;
        }
        this.v = z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        CompositionLayer compositionLayer = this.o;
        if (compositionLayer == null) {
            return;
        }
        AsyncUpdates asyncUpdates = this.K;
        if (asyncUpdates == null) {
            asyncUpdates = L.f21740a;
        }
        boolean z = asyncUpdates == AsyncUpdates.ENABLED;
        et etVar = this.M;
        ThreadPoolExecutor threadPoolExecutor = P;
        LottieValueAnimator lottieValueAnimator = this.f21759c;
        Semaphore semaphore = this.L;
        if (z) {
            try {
                semaphore.acquire();
            } catch (InterruptedException unused) {
                AsyncUpdates asyncUpdates2 = L.f21740a;
                if (!z) {
                    return;
                }
                semaphore.release();
                if (compositionLayer.J == lottieValueAnimator.c()) {
                    return;
                }
            } catch (Throwable th) {
                AsyncUpdates asyncUpdates3 = L.f21740a;
                if (z) {
                    semaphore.release();
                    if (compositionLayer.J != lottieValueAnimator.c()) {
                        threadPoolExecutor.execute(etVar);
                    }
                }
                throw th;
            }
        }
        AsyncUpdates asyncUpdates4 = L.f21740a;
        if (z && q()) {
            p(lottieValueAnimator.c());
        }
        boolean z2 = this.f21761f;
        boolean z3 = this.v;
        if (z2) {
            try {
                if (z3) {
                    l(canvas, compositionLayer);
                } else {
                    f(canvas);
                }
            } catch (Throwable unused2) {
                Logger.f22287a.getClass();
                AsyncUpdates asyncUpdates5 = L.f21740a;
            }
        } else if (z3) {
            l(canvas, compositionLayer);
        } else {
            f(canvas);
        }
        this.J = false;
        if (z) {
            semaphore.release();
            if (compositionLayer.J == lottieValueAnimator.c()) {
                return;
            }
            threadPoolExecutor.execute(etVar);
        }
    }

    public final void f(Canvas canvas) {
        CompositionLayer compositionLayer = this.o;
        LottieComposition lottieComposition = this.f21758b;
        if (compositionLayer == null || lottieComposition == null) {
            return;
        }
        Matrix matrix = this.w;
        matrix.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            float fWidth = bounds.width() / lottieComposition.f21754k.width();
            float fHeight = bounds.height() / lottieComposition.f21754k.height();
            matrix.preTranslate(bounds.left, bounds.top);
            matrix.preScale(fWidth, fHeight);
        }
        compositionLayer.d(canvas, matrix, this.p, null);
    }

    public final void g(LottieFeatureFlag lottieFeatureFlag, boolean z) {
        boolean zRemove;
        HashSet hashSet = this.l.f21766a;
        if (!z) {
            zRemove = hashSet.remove(lottieFeatureFlag);
        } else if (Build.VERSION.SDK_INT < lottieFeatureFlag.minRequiredSdkVersion) {
            Logger.a(String.format("%s is not supported pre SDK %d", lottieFeatureFlag.name(), Integer.valueOf(lottieFeatureFlag.minRequiredSdkVersion)));
            zRemove = false;
        } else {
            zRemove = hashSet.add(lottieFeatureFlag);
        }
        if (this.f21758b == null || !zRemove) {
            return;
        }
        c();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        LottieComposition lottieComposition = this.f21758b;
        if (lottieComposition == null) {
            return -1;
        }
        return lottieComposition.f21754k.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        LottieComposition lottieComposition = this.f21758b;
        if (lottieComposition == null) {
            return -1;
        }
        return lottieComposition.f21754k.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final Context h() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    public final boolean i(LottieFeatureFlag lottieFeatureFlag) {
        return this.l.f21766a.contains(lottieFeatureFlag);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.J) {
            return;
        }
        this.J = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        LottieValueAnimator lottieValueAnimator = this.f21759c;
        if (lottieValueAnimator == null) {
            return false;
        }
        return lottieValueAnimator.n;
    }

    public final void k() {
        if (this.o == null) {
            this.f21762h.add(new a(this, 1));
            return;
        }
        d();
        boolean zB = b(h());
        LottieValueAnimator lottieValueAnimator = this.f21759c;
        if (zB || lottieValueAnimator.getRepeatCount() == 0) {
            if (isVisible()) {
                lottieValueAnimator.n = true;
                boolean zF = lottieValueAnimator.f();
                Iterator it = lottieValueAnimator.f22281c.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationStart(lottieValueAnimator, zF);
                }
                lottieValueAnimator.h((int) (lottieValueAnimator.f() ? lottieValueAnimator.d() : lottieValueAnimator.e()));
                lottieValueAnimator.g = 0L;
                lottieValueAnimator.f22295j = 0;
                if (lottieValueAnimator.n) {
                    lottieValueAnimator.g(false);
                    Choreographer.getInstance().postFrameCallback(lottieValueAnimator);
                }
                this.g = OnVisibleAction.NONE;
            } else {
                this.g = OnVisibleAction.PLAY;
            }
        }
        if (b(h())) {
            return;
        }
        Iterator it2 = O.iterator();
        Marker markerD = null;
        while (it2.hasNext()) {
            markerD = this.f21758b.d((String) it2.next());
            if (markerD != null) {
                break;
            }
        }
        if (markerD != null) {
            o((int) markerD.f22085b);
        } else {
            o((int) (lottieValueAnimator.f22291e < Call.Parameters.DEFAULT_CAMERA_ZOOM ? lottieValueAnimator.e() : lottieValueAnimator.d()));
        }
        lottieValueAnimator.g(true);
        lottieValueAnimator.a(lottieValueAnimator.f());
        if (isVisible()) {
            return;
        }
        this.g = OnVisibleAction.NONE;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00d3  */
    public final void l(Canvas canvas, CompositionLayer compositionLayer) {
        boolean z;
        if (this.f21758b == null || compositionLayer == null) {
            return;
        }
        if (this.y == null) {
            this.y = new Canvas();
            this.F = new RectF();
            this.G = new Matrix();
            this.I = new Matrix();
            this.z = new Rect();
            this.A = new RectF();
            this.B = new LPaint();
            this.C = new Rect();
            this.D = new Rect();
            this.E = new RectF();
        }
        canvas.getMatrix(this.G);
        canvas.getClipBounds(this.z);
        Rect rect = this.z;
        this.A.set(rect.left, rect.top, rect.right, rect.bottom);
        this.G.mapRect(this.A);
        e(this.z, this.A);
        boolean z2 = this.n;
        RectF rectF = this.F;
        if (z2) {
            rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            compositionLayer.f(rectF, null, false);
        }
        this.G.mapRect(this.F);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        RectF rectF2 = this.F;
        rectF2.set(rectF2.left * fWidth, rectF2.top * fHeight, rectF2.right * fWidth, rectF2.bottom * fHeight);
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            ViewParent parent = ((View) callback).getParent();
            if (parent instanceof ViewGroup) {
                z = !((ViewGroup) parent).getClipChildren();
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (!z) {
            RectF rectF3 = this.F;
            Rect rect2 = this.z;
            rectF3.intersect(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        RectF rectF4 = this.F;
        if (!j(rectF4.left) || !j(rectF4.top) || !j(rectF4.right) || !j(rectF4.bottom)) {
            Logger.a("Skipping software rendering: transformed bounds contain non-finite values.");
            return;
        }
        int iCeil = (int) Math.ceil(this.F.width());
        int iCeil2 = (int) Math.ceil(this.F.height());
        if (iCeil <= 0 || iCeil2 <= 0) {
            Logger.a("Skipping software rendering: transformed bounds have negative values.");
            return;
        }
        long j2 = ((long) iCeil) * ((long) iCeil2);
        if (j2 > 50000000) {
            Logger.a("Skipping software rendering: bitmap request exceeds safe pixel count (" + j2 + ")");
            return;
        }
        Bitmap bitmap = this.x;
        if (bitmap == null || bitmap.getWidth() < iCeil || this.x.getHeight() < iCeil2) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iCeil, iCeil2, Bitmap.Config.ARGB_8888);
            this.x = bitmapCreateBitmap;
            this.y.setBitmap(bitmapCreateBitmap);
            this.J = true;
        } else if (this.x.getWidth() > iCeil || this.x.getHeight() > iCeil2) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.x, 0, 0, iCeil, iCeil2);
            this.x = bitmapCreateBitmap2;
            this.y.setBitmap(bitmapCreateBitmap2);
            this.J = true;
        }
        if (this.J) {
            Matrix matrix = this.G;
            float[] fArr = this.H;
            matrix.getValues(fArr);
            float f2 = fArr[0];
            float f3 = fArr[4];
            Matrix matrix2 = this.G;
            Matrix matrix3 = this.w;
            matrix3.set(matrix2);
            matrix3.preScale(fWidth, fHeight);
            RectF rectF5 = this.F;
            matrix3.postTranslate(-rectF5.left, -rectF5.top);
            matrix3.postScale(1.0f / f2, 1.0f / f3);
            this.x.eraseColor(0);
            this.y.setMatrix(Utils.f22311a);
            this.y.scale(f2, f3);
            compositionLayer.d(this.y, matrix3, this.p, null);
            this.G.invert(this.I);
            this.I.mapRect(this.E, this.F);
            e(this.D, this.E);
        }
        this.C.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.x, this.C, this.D, this.B);
    }

    public final void m() {
        if (this.o == null) {
            this.f21762h.add(new a(this, 0));
            return;
        }
        d();
        boolean zB = b(h());
        LottieValueAnimator lottieValueAnimator = this.f21759c;
        if (zB || lottieValueAnimator.getRepeatCount() == 0) {
            if (isVisible()) {
                lottieValueAnimator.n = true;
                lottieValueAnimator.g(false);
                Choreographer.getInstance().postFrameCallback(lottieValueAnimator);
                lottieValueAnimator.g = 0L;
                if (lottieValueAnimator.f() && lottieValueAnimator.f22294i == lottieValueAnimator.e()) {
                    lottieValueAnimator.h(lottieValueAnimator.d());
                } else if (!lottieValueAnimator.f() && lottieValueAnimator.f22294i == lottieValueAnimator.d()) {
                    lottieValueAnimator.h(lottieValueAnimator.e());
                }
                Iterator it = lottieValueAnimator.d.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorPauseListener) it.next()).onAnimationResume(lottieValueAnimator);
                }
                this.g = OnVisibleAction.NONE;
            } else {
                this.g = OnVisibleAction.RESUME;
            }
        }
        if (b(h())) {
            return;
        }
        o((int) (lottieValueAnimator.f22291e < Call.Parameters.DEFAULT_CAMERA_ZOOM ? lottieValueAnimator.e() : lottieValueAnimator.d()));
        lottieValueAnimator.g(true);
        lottieValueAnimator.a(lottieValueAnimator.f());
        if (isVisible()) {
            return;
        }
        this.g = OnVisibleAction.NONE;
    }

    public final boolean n(LottieComposition lottieComposition) {
        if (this.f21758b == lottieComposition) {
            return false;
        }
        this.J = true;
        LottieValueAnimator lottieValueAnimator = this.f21759c;
        if (lottieValueAnimator.n) {
            lottieValueAnimator.cancel();
            if (!isVisible()) {
                this.g = OnVisibleAction.NONE;
            }
        }
        this.f21758b = null;
        this.o = null;
        this.f21763i = null;
        this.N = -3.4028235E38f;
        lottieValueAnimator.m = null;
        lottieValueAnimator.f22296k = -2.14748365E9f;
        lottieValueAnimator.l = 2.14748365E9f;
        invalidateSelf();
        this.f21758b = lottieComposition;
        c();
        boolean z = lottieValueAnimator.m == null;
        lottieValueAnimator.m = lottieComposition;
        if (z) {
            lottieValueAnimator.i(Math.max(lottieValueAnimator.f22296k, lottieComposition.l), Math.min(lottieValueAnimator.l, lottieComposition.m));
        } else {
            lottieValueAnimator.i((int) lottieComposition.l, (int) lottieComposition.m);
        }
        float f2 = lottieValueAnimator.f22294i;
        lottieValueAnimator.f22294i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        lottieValueAnimator.f22293h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        lottieValueAnimator.h((int) f2);
        lottieValueAnimator.b();
        p(lottieValueAnimator.getAnimatedFraction());
        ArrayList arrayList = this.f21762h;
        Iterator it = new ArrayList(arrayList).iterator();
        while (it.hasNext()) {
            LazyCompositionTask lazyCompositionTask = (LazyCompositionTask) it.next();
            if (lazyCompositionTask != null) {
                lazyCompositionTask.run();
            }
            it.remove();
        }
        arrayList.clear();
        lottieComposition.f21746a.f21787a = false;
        d();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public final void o(final int i2) {
        if (this.f21758b != null) {
            this.f21759c.h(i2);
        } else {
            this.f21762h.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.c
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run() {
                    List list = LottieDrawable.O;
                    this.f21930a.o(i2);
                }
            });
        }
    }

    public final void p(final float f2) {
        LottieComposition lottieComposition = this.f21758b;
        if (lottieComposition == null) {
            this.f21762h.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.b
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run() {
                    List list = LottieDrawable.O;
                    this.f21928a.p(f2);
                }
            });
        } else {
            AsyncUpdates asyncUpdates = L.f21740a;
            this.f21759c.h(MiscUtils.f(lottieComposition.l, lottieComposition.m, f2));
        }
    }

    public final boolean q() {
        LottieComposition lottieComposition = this.f21758b;
        if (lottieComposition == null) {
            return false;
        }
        float f2 = this.N;
        float fC = this.f21759c.c();
        this.N = fC;
        return Math.abs(fC - f2) * lottieComposition.b() >= 50.0f;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        this.p = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Logger.a("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z, z2);
        if (z) {
            OnVisibleAction onVisibleAction = this.g;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                k();
                return visible;
            }
            if (onVisibleAction == OnVisibleAction.RESUME) {
                m();
                return visible;
            }
        } else {
            LottieValueAnimator lottieValueAnimator = this.f21759c;
            if (lottieValueAnimator.n) {
                this.f21762h.clear();
                lottieValueAnimator.g(true);
                Iterator it = lottieValueAnimator.d.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorPauseListener) it.next()).onAnimationPause(lottieValueAnimator);
                }
                if (!isVisible()) {
                    this.g = OnVisibleAction.NONE;
                }
                this.g = OnVisibleAction.RESUME;
                return visible;
            }
            if (zIsVisible) {
                this.g = OnVisibleAction.NONE;
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        k();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f21762h.clear();
        LottieValueAnimator lottieValueAnimator = this.f21759c;
        lottieValueAnimator.g(true);
        lottieValueAnimator.a(lottieValueAnimator.f());
        if (isVisible()) {
            return;
        }
        this.g = OnVisibleAction.NONE;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }
}

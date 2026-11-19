package com.sightcall.universal.internal.proposition;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import defpackage.cj;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class SignatureView extends View {
    private static final int DEFAULT_FLAGS = 3;
    public static final float DEFAULT_MAX_STROKE_WIDTH = 5.0f;
    public static final float DEFAULT_MIN_STROKE_WIDTH = 1.5f;
    public static final float DEFAULT_SMOOTHING_RATIO = 0.75f;
    private static final int DEFAULT_STROKE_COLOR = -16777216;
    private static final float FILTER_RATIO_ACCELERATION_MODIFIER = 0.1f;
    private static final float FILTER_RATIO_MIN = 0.22f;
    public static final int FLAG_INTERPOLATION = 1;
    public static final int FLAG_RESPONSIVE_WIDTH = 2;
    private static final float THRESHOLD_ACCELERATION = 3.0f;
    private static final float THRESHOLD_VELOCITY = 7.0f;
    private Bitmap bitmap;
    private Canvas canvas;
    private float density;
    private RectF dirty;
    private int flags;
    private boolean hasSignature;
    private final ArrayList<SignatureListener> listeners;
    private float maxStrokeWidth;
    private float minStrokeWidth;
    private Paint paint;
    private final ArrayList<Point> pointQueue;
    private final ArrayList<Point> pointRecycle;
    private float smoothingRatio;

    public interface SignatureListener {
        void onSignatureClear();

        void onSignatureDraw();
    }

    public SignatureView(Context context) {
        super(context);
        this.pointQueue = new ArrayList<>();
        this.pointRecycle = new ArrayList<>();
        this.listeners = new ArrayList<>();
        init(3);
    }

    private void addPoint(Point point) {
        this.pointQueue.add(point);
        int size = this.pointQueue.size();
        if (size == 1) {
            int size2 = this.pointRecycle.size();
            point.velocity = size2 > 0 ? this.pointRecycle.get(size2 - 1).velocityTo(point) / 2.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.paint.setStrokeWidth(computeStrokeWidth(point.velocity));
            return;
        }
        if (size == 2) {
            Point point2 = this.pointQueue.get(0);
            point.velocity = point2.velocityTo(point);
            point2.velocity = (point.velocity / 2.0f) + point2.velocity;
            point2.findControlPoints(null, point);
            this.paint.setStrokeWidth(computeStrokeWidth(point2.velocity));
            return;
        }
        if (size == 3) {
            Point point3 = this.pointQueue.get(0);
            Point point4 = this.pointQueue.get(1);
            point4.findControlPoints(point3, point);
            point.velocity = point4.velocityTo(point);
            draw(point3, point4);
            this.pointRecycle.add(this.pointQueue.remove(0));
        }
    }

    private float computeStrokeWidth(float f2) {
        boolean zHasFlags = hasFlags(2);
        float f3 = this.maxStrokeWidth;
        if (!zHasFlags) {
            return f3;
        }
        return f3 - (Math.min(f2 / THRESHOLD_VELOCITY, 1.0f) * (f3 - this.minStrokeWidth));
    }

    private void draw(Point point, Point point2) {
        Paint paint;
        this.dirty.left = Math.min(point.x, point2.x);
        this.dirty.right = Math.max(point.x, point2.x);
        this.dirty.top = Math.min(point.y, point2.y);
        this.dirty.bottom = Math.max(point.y, point2.y);
        this.paint.setStyle(Paint.Style.STROKE);
        float fMin = Math.min(((Math.abs((point2.velocity - point.velocity) / (point2.time - point.time)) * FILTER_RATIO_ACCELERATION_MODIFIER) / 3.0f) + FILTER_RATIO_MIN, 1.0f);
        float fComputeStrokeWidth = computeStrokeWidth(point2.velocity);
        float strokeWidth = this.paint.getStrokeWidth();
        float fA = tr.a(1.0f, fMin, strokeWidth, fComputeStrokeWidth * fMin);
        float f2 = fA - strokeWidth;
        if (hasFlags(1)) {
            int iSqrt = (int) (Math.sqrt(Math.pow(point2.y - point.y, 2.0d) + Math.pow(point2.x - point.x, 2.0d)) / 5.0d);
            float f3 = 1.0f / (iSqrt + 1);
            float f4 = f3 * f3;
            float f5 = f4 * f3;
            float f6 = f3 * 3.0f;
            float f7 = f4 * 3.0f;
            float f8 = f4 * 6.0f;
            float f9 = 6.0f * f5;
            float f10 = (point.x - (point.c2x * 2.0f)) + point2.c1x;
            float f11 = (point.y - (point.c2y * 2.0f)) + point2.c1y;
            float f12 = (((point.c2x - point2.c1x) * 3.0f) - point.x) + point2.x;
            float f13 = (((point.c2y - point2.c1y) * 3.0f) - point.y) + point2.y;
            float f14 = (f12 * f5) + (f10 * f7) + ((point.c2x - point.x) * f6);
            float f15 = (f5 * f13) + (f7 * f11) + ((point.c2y - point.y) * f6);
            float f16 = f12 * f9;
            float f17 = (f10 * f8) + f16;
            float f18 = f13 * f9;
            float f19 = (f11 * f8) + f18;
            float f20 = point.x;
            float f21 = f15;
            float f22 = point.y;
            int i2 = 0;
            float f23 = f17;
            float f24 = f19;
            while (true) {
                int i3 = i2 + 1;
                paint = this.paint;
                if (i2 >= iSqrt) {
                    break;
                }
                float f25 = f20 + f14;
                float f26 = f22 + f21;
                paint.setStrokeWidth(((i3 * f2) / iSqrt) + strokeWidth);
                this.canvas.drawLine(f20, f22, f25, f26, this.paint);
                float f27 = f14 + f23;
                f21 += f24;
                f23 += f16;
                f24 += f18;
                RectF rectF = this.dirty;
                rectF.left = Math.min(rectF.left, f25);
                RectF rectF2 = this.dirty;
                rectF2.right = Math.max(rectF2.right, f25);
                RectF rectF3 = this.dirty;
                rectF3.top = Math.min(rectF3.top, f26);
                RectF rectF4 = this.dirty;
                rectF4.bottom = Math.max(rectF4.bottom, f26);
                i2 = i3;
                f14 = f27;
                f20 = f25;
                f22 = f26;
            }
            paint.setStrokeWidth(fA);
            this.canvas.drawLine(f20, f22, point2.x, point2.y, this.paint);
        } else {
            this.canvas.drawLine(point.x, point.y, point2.x, point2.y, this.paint);
            this.paint.setStrokeWidth(fA);
        }
        invalidateDirty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDensity() {
        return this.density;
    }

    private Point getRecycledPoint(float f2, float f3, long j2) {
        return this.pointRecycle.size() == 0 ? new Point(this, f2, f3, j2, 0) : this.pointRecycle.remove(0).reset(f2, f3, j2);
    }

    private void init(int i2) {
        setFlags(i2);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.density = (displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setAntiAlias(true);
        setColor(-16777216);
        setMaxStrokeWidth(5.0f);
        setMinStrokeWidth(1.5f);
        setSmoothingRatio(0.75f);
        this.dirty = new RectF();
    }

    private void invalidateDirty() {
        invalidate();
    }

    public void addFlag(int i2) {
        addFlags(i2);
    }

    public void addFlags(int i2) {
        this.flags = i2 | this.flags;
    }

    public void addListener(SignatureListener signatureListener) {
        if (this.listeners.contains(signatureListener)) {
            return;
        }
        this.listeners.add(signatureListener);
    }

    public void clear() {
        this.hasSignature = false;
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        this.canvas = new Canvas(this.bitmap);
        Iterator<SignatureListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onSignatureClear();
        }
        invalidate();
    }

    public void clearFlags() {
        this.flags = 0;
    }

    public void drawBitmap(Bitmap bitmap, float f2, float f3, Paint paint) {
        this.canvas.drawBitmap(bitmap, f2, f3, paint);
        invalidate();
    }

    public Bitmap getBitmap(int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (i2 != 0) {
            canvas.drawColor(i2);
        }
        canvas.drawBitmap(this.bitmap, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Paint) null);
        return bitmapCreateBitmap;
    }

    public float getSmoothingRatio() {
        return this.smoothingRatio;
    }

    public boolean hasFlag(int i2) {
        return hasFlags(i2);
    }

    public boolean hasFlags(int i2) {
        return (this.flags & i2) > 0;
    }

    public boolean hasSignature() {
        return this.hasSignature;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.drawBitmap(this.bitmap, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Paint) null);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        clear();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            addPoint(getRecycledPoint(motionEvent.getX(), motionEvent.getY(), motionEvent.getEventTime()));
            this.hasSignature = true;
            Iterator<SignatureListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onSignatureDraw();
            }
        } else if (action == 2 && !((Point) cj.c(1, this.pointQueue)).equals(motionEvent.getX(), motionEvent.getY())) {
            addPoint(getRecycledPoint(motionEvent.getX(), motionEvent.getY(), motionEvent.getEventTime()));
        }
        if (action == 1) {
            int size = this.pointQueue.size();
            ArrayList<Point> arrayList = this.pointQueue;
            if (size == 1) {
                draw(arrayList.get(0));
            } else if (arrayList.size() == 2) {
                this.pointQueue.get(1).findControlPoints(this.pointQueue.get(0), null);
                draw(this.pointQueue.get(0), this.pointQueue.get(1));
            }
            this.pointRecycle.addAll(this.pointQueue);
            this.pointQueue.clear();
        }
        return true;
    }

    public void removeFlag(int i2) {
        removeFlags(i2);
    }

    public void removeFlags(int i2) {
        this.flags = (~i2) & this.flags;
    }

    public void removeListener(SignatureListener signatureListener) {
        this.listeners.remove(signatureListener);
    }

    public void setColor(int i2) {
        this.paint.setColor(i2);
    }

    public void setFlags(int i2) {
        this.flags = i2;
    }

    public void setMaxStrokeWidth(float f2) {
        this.maxStrokeWidth = TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    public void setMinStrokeWidth(float f2) {
        this.minStrokeWidth = TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    public void setSmoothingRatio(float f2) {
        this.smoothingRatio = Math.max(Math.min(f2, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public class Point {
        private float c1x;
        private float c1y;
        private float c2x;
        private float c2y;
        private long time;
        private float velocity;
        private float x;
        private float y;

        private Point(float f2, float f3, long j2) {
            reset(f2, f3, j2);
        }

        private float distanceTo(Point point) {
            float f2 = point.x - this.x;
            float f3 = point.y - this.y;
            return (float) Math.sqrt((f3 * f3) + (f2 * f2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean equals(float f2, float f3) {
            return this.x == f2 && this.y == f3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void findControlPoints(Point point, Point point2) {
            if (point == null && point2 == null) {
                return;
            }
            float smoothingRatio = SignatureView.this.getSmoothingRatio();
            if (point == null) {
                float f2 = this.x;
                this.c2x = (((point2.x - f2) * smoothingRatio) / 2.0f) + f2;
                float f3 = this.y;
                this.c2y = (((point2.y - f3) * smoothingRatio) / 2.0f) + f3;
                return;
            }
            float f4 = this.x;
            if (point2 == null) {
                this.c1x = (((point.x - f4) * smoothingRatio) / 2.0f) + f4;
                float f5 = this.y;
                this.c1y = (((point.y - f5) * smoothingRatio) / 2.0f) + f5;
                return;
            }
            this.c1x = (point.x + f4) / 2.0f;
            float f6 = this.y;
            this.c1y = (point.y + f6) / 2.0f;
            this.c2x = (f4 + point2.x) / 2.0f;
            this.c2y = (f6 + point2.y) / 2.0f;
            float fDistanceTo = distanceTo(point);
            float fDistanceTo2 = fDistanceTo / (distanceTo(point2) + fDistanceTo);
            float f7 = this.c1x;
            float f8 = this.c2x;
            float fA = tr.a(f8, f7, fDistanceTo2, f7);
            float f9 = this.c1y;
            float f10 = this.c2y;
            float fA2 = tr.a(f10, f9, fDistanceTo2, f9);
            float f11 = this.x - fA;
            float f12 = this.y - fA2;
            float f13 = 1.0f - smoothingRatio;
            this.c1x = ((fA - f7) * f13) + f11 + f7;
            this.c1y = ((fA2 - f9) * f13) + f12 + f9;
            this.c2x = ((fA - f8) * f13) + f11 + f8;
            this.c2y = ((fA2 - f10) * f13) + f12 + f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Point reset(float f2, float f3, long j2) {
            this.x = f2;
            this.y = f3;
            this.time = j2;
            this.velocity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.c1x = f2;
            this.c1y = f3;
            this.c2x = f2;
            this.c2y = f3;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float velocityTo(Point point) {
            return (distanceTo(point) * 1000.0f) / (SignatureView.this.getDensity() * Math.abs(point.time - this.time));
        }

        public /* synthetic */ Point(SignatureView signatureView, float f2, float f3, long j2, int i2) {
            this(f2, f3, j2);
        }
    }

    public SignatureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.pointQueue = new ArrayList<>();
        this.pointRecycle = new ArrayList<>();
        this.listeners = new ArrayList<>();
        init(3);
    }

    public Bitmap getBitmap() {
        return getBitmap(0);
    }

    public SignatureView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.pointQueue = new ArrayList<>();
        this.pointRecycle = new ArrayList<>();
        this.listeners = new ArrayList<>();
        init(3);
    }

    private void draw(Point point) {
        this.paint.setStyle(Paint.Style.FILL);
        this.canvas.drawCircle(point.x, point.y, this.paint.getStrokeWidth() / 2.0f, this.paint);
        invalidate();
    }
}

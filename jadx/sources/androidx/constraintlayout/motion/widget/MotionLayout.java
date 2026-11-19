package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.ArcCurveFit;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.SpringStopEngine;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.widget.NestedScrollView;
import com.batch.android.q0.b;
import defpackage.cj;
import defpackage.n00;
import defpackage.w21;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static boolean F1;
    public boolean A;
    public boolean A1;
    public final HashMap B;
    public final RectF B1;
    public long C;
    public View C1;
    public float D;
    public Matrix D1;
    public float E;
    public final ArrayList E1;
    public float F;
    public long G;
    public float H;
    public boolean I;
    public boolean J;
    public TransitionListener K;
    public int L;
    public DevModeDraw M;
    public boolean N;
    public final StopLogic O;
    public final DecelerateInterpolator P;
    public DesignTool Q;
    public int R;
    public int S;
    public boolean T;
    public float V;
    public float W;
    public boolean b1;
    public ArrayList c1;
    public ArrayList d1;
    public CopyOnWriteArrayList e1;
    public int f1;
    public long g1;
    public long h0;
    public float h1;
    public int i1;
    public float j1;
    public boolean k1;
    public int l1;
    public int m1;
    public int n1;
    public int o1;
    public int p1;
    public int q1;
    public MotionScene r;
    public float r1;
    public MotionInterpolator s;
    public final KeyCache s1;
    public Interpolator t;
    public float t0;
    public boolean t1;
    public float u;
    public StateCache u1;
    public int v;
    public w21 v1;
    public int w;
    public final Rect w1;
    public int x;
    public boolean x1;
    public int y;
    public TransitionState y1;
    public int z;
    public final Model z1;

    public class DecelerateInterpolator extends MotionInterpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f11625a = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f11626b = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f11627c;

        public DecelerateInterpolator() {
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public final float a() {
            return MotionLayout.this.u;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            float f3 = this.f11625a;
            float f4 = this.f11627c;
            MotionLayout motionLayout = MotionLayout.this;
            if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float f5 = f3 / f4;
                if (f5 < f2) {
                    f2 = f5;
                }
                float f6 = f4 * f2;
                motionLayout.u = f3 - f6;
                return ((f3 * f2) - ((f6 * f2) / 2.0f)) + this.f11626b;
            }
            float f7 = (-f3) / f4;
            if (f7 < f2) {
                f2 = f7;
            }
            float f8 = f4 * f2;
            motionLayout.u = f8 + f3;
            return ((f8 * f2) / 2.0f) + (f3 * f2) + this.f11626b;
        }
    }

    public class DevModeDraw {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float[] f11628a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f11629b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f11630c;
        public Path d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Paint f11631e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Paint f11632f;
        public final Paint g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Paint f11633h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Paint f11634i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float[] f11635j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f11636k;
        public final Rect l = new Rect();
        public final int m = 1;

        public DevModeDraw() {
            Paint paint = new Paint();
            this.f11631e = paint;
            paint.setAntiAlias(true);
            paint.setColor(-21965);
            paint.setStrokeWidth(2.0f);
            Paint.Style style = Paint.Style.STROKE;
            paint.setStyle(style);
            Paint paint2 = new Paint();
            this.f11632f = paint2;
            paint2.setAntiAlias(true);
            paint2.setColor(-2067046);
            paint2.setStrokeWidth(2.0f);
            paint2.setStyle(style);
            Paint paint3 = new Paint();
            this.g = paint3;
            paint3.setAntiAlias(true);
            paint3.setColor(-13391360);
            paint3.setStrokeWidth(2.0f);
            paint3.setStyle(style);
            Paint paint4 = new Paint();
            this.f11633h = paint4;
            paint4.setAntiAlias(true);
            paint4.setColor(-13391360);
            paint4.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.f11635j = new float[8];
            Paint paint5 = new Paint();
            this.f11634i = paint5;
            paint5.setAntiAlias(true);
            paint3.setPathEffect(new DashPathEffect(new float[]{4.0f, 8.0f}, Call.Parameters.DEFAULT_CAMERA_ZOOM));
            this.f11630c = new float[100];
            this.f11629b = new int[50];
        }

        public final void a(Canvas canvas, int i2, int i3, MotionController motionController) {
            Canvas canvas2;
            int width;
            int height;
            float f2;
            boolean z;
            Paint paint = this.g;
            int[] iArr = this.f11629b;
            boolean z2 = false;
            int i4 = 4;
            if (i2 == 4) {
                int i5 = 0;
                boolean z3 = false;
                boolean z4 = false;
                while (i5 < this.f11636k) {
                    int i6 = iArr[i5];
                    if (i6 == 1) {
                        z = z3;
                        z = true;
                    }
                    if (i6 == 0) {
                        z4 = true;
                    }
                    i5++;
                    z3 = z;
                    z4 = z4;
                }
                if (z3) {
                    float[] fArr = this.f11628a;
                    canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], paint);
                }
                if (z4) {
                    b(canvas);
                }
            }
            if (i2 == 2) {
                float[] fArr2 = this.f11628a;
                float f3 = fArr2[0];
                float f4 = fArr2[1];
                float f5 = fArr2[fArr2.length - 2];
                float f6 = fArr2[fArr2.length - 1];
                canvas2 = canvas;
                canvas2.drawLine(f3, f4, f5, f6, paint);
            } else {
                canvas2 = canvas;
            }
            if (i2 == 3) {
                b(canvas);
            }
            canvas2.drawLines(this.f11628a, this.f11631e);
            View view = motionController.f11614b;
            if (view != null) {
                width = view.getWidth();
                height = motionController.f11614b.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            int i7 = 1;
            while (i7 < i3 - 1) {
                if (i2 != i4 || iArr[i7 - 1] != 0) {
                    int i8 = i7 * 2;
                    float[] fArr3 = this.f11630c;
                    float f7 = fArr3[i8];
                    float f8 = fArr3[i8 + 1];
                    this.d.reset();
                    this.d.moveTo(f7, f8 + 10.0f);
                    this.d.lineTo(f7 + 10.0f, f8);
                    this.d.lineTo(f7, f8 - 10.0f);
                    this.d.lineTo(f7 - 10.0f, f8);
                    this.d.close();
                    int i9 = i7 - 1;
                    Paint paint2 = this.f11634i;
                    if (i2 == i4) {
                        int i10 = iArr[i9];
                        if (i10 == 1) {
                            d(canvas2, f7 - Call.Parameters.DEFAULT_CAMERA_ZOOM, f8 - Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else if (i10 == 0) {
                            c(canvas2, f7 - Call.Parameters.DEFAULT_CAMERA_ZOOM, f8 - Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            if (i10 == 2) {
                                f2 = f8;
                                e(canvas2, f7 - Call.Parameters.DEFAULT_CAMERA_ZOOM, f2 - Call.Parameters.DEFAULT_CAMERA_ZOOM, width, height);
                            }
                            canvas2.drawPath(this.d, paint2);
                        }
                        f2 = f8;
                        canvas2.drawPath(this.d, paint2);
                    } else {
                        f2 = f8;
                    }
                    if (i2 == 2) {
                        d(canvas2, f7 - Call.Parameters.DEFAULT_CAMERA_ZOOM, f2 - Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if (i2 == 3) {
                        c(canvas2, f7 - Call.Parameters.DEFAULT_CAMERA_ZOOM, f2 - Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if (i2 == 6) {
                        e(canvas2, f7 - Call.Parameters.DEFAULT_CAMERA_ZOOM, f2 - Call.Parameters.DEFAULT_CAMERA_ZOOM, width, height);
                    }
                    canvas2.drawPath(this.d, paint2);
                }
                i7++;
                z2 = z2;
                i4 = 4;
            }
            boolean z5 = z2;
            float[] fArr4 = this.f11628a;
            if (fArr4.length > 1) {
                float f9 = fArr4[z5 ? 1 : 0];
                float f10 = fArr4[1];
                Paint paint3 = this.f11632f;
                canvas2.drawCircle(f9, f10, 8.0f, paint3);
                float[] fArr5 = this.f11628a;
                canvas2.drawCircle(fArr5[fArr5.length - 2], fArr5[fArr5.length - 1], 8.0f, paint3);
            }
        }

        public final void b(Canvas canvas) {
            float[] fArr = this.f11628a;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[fArr.length - 2];
            float f5 = fArr[fArr.length - 1];
            float fMin = Math.min(f2, f4);
            float fMax = Math.max(f3, f5);
            float fMax2 = Math.max(f2, f4);
            float fMax3 = Math.max(f3, f5);
            Paint paint = this.g;
            canvas.drawLine(fMin, fMax, fMax2, fMax3, paint);
            canvas.drawLine(Math.min(f2, f4), Math.min(f3, f5), Math.min(f2, f4), Math.max(f3, f5), paint);
        }

        public final void c(Canvas canvas, float f2, float f3) {
            float[] fArr = this.f11628a;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[fArr.length - 2];
            float f7 = fArr[fArr.length - 1];
            float fMin = Math.min(f4, f6);
            float fMax = Math.max(f5, f7);
            float fMin2 = f2 - Math.min(f4, f6);
            float fMax2 = Math.max(f5, f7) - f3;
            String str = "" + (((int) (((double) ((fMin2 * 100.0f) / Math.abs(f6 - f4))) + 0.5d)) / 100.0f);
            int length = str.length();
            Paint paint = this.f11633h;
            Rect rect = this.l;
            paint.getTextBounds(str, 0, length, rect);
            canvas.drawText(str, ((fMin2 / 2.0f) - (rect.width() / 2)) + fMin, f3 - 20.0f, paint);
            float fMin3 = Math.min(f4, f6);
            Paint paint2 = this.g;
            canvas.drawLine(f2, f3, fMin3, f3, paint2);
            String str2 = "" + (((int) (((double) ((fMax2 * 100.0f) / Math.abs(f7 - f5))) + 0.5d)) / 100.0f);
            paint.getTextBounds(str2, 0, str2.length(), rect);
            canvas.drawText(str2, f2 + 5.0f, fMax - ((fMax2 / 2.0f) - (rect.height() / 2)), paint);
            canvas.drawLine(f2, f3, f2, Math.max(f5, f7), paint2);
        }

        public final void d(Canvas canvas, float f2, float f3) {
            float[] fArr = this.f11628a;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[fArr.length - 2];
            float f7 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f4 - f6, f5 - f7);
            float f8 = f6 - f4;
            float f9 = f7 - f5;
            float f10 = (((f3 - f5) * f9) + ((f2 - f4) * f8)) / (fHypot * fHypot);
            float f11 = (f8 * f10) + f4;
            float f12 = (f10 * f9) + f5;
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f11, f12);
            float fHypot2 = (float) Math.hypot(f11 - f2, f12 - f3);
            String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            int length = str.length();
            Paint paint = this.f11633h;
            Rect rect = this.l;
            paint.getTextBounds(str, 0, length, rect);
            canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (rect.width() / 2), -20.0f, paint);
            canvas.drawLine(f2, f3, f11, f12, this.g);
        }

        public final void e(Canvas canvas, float f2, float f3, int i2, int i3) {
            StringBuilder sb = new StringBuilder("");
            MotionLayout motionLayout = MotionLayout.this;
            sb.append(((int) (((double) (((f2 - (i2 / 2)) * 100.0f) / (motionLayout.getWidth() - i2))) + 0.5d)) / 100.0f);
            String string = sb.toString();
            int length = string.length();
            Paint paint = this.f11633h;
            Rect rect = this.l;
            paint.getTextBounds(string, 0, length, rect);
            canvas.drawText(string, ((f2 / 2.0f) - (rect.width() / 2)) + Call.Parameters.DEFAULT_CAMERA_ZOOM, f3 - 20.0f, paint);
            float fMin = Math.min(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            Paint paint2 = this.g;
            canvas.drawLine(f2, f3, fMin, f3, paint2);
            String str = "" + (((int) (((double) (((f3 - (i3 / 2)) * 100.0f) / (motionLayout.getHeight() - i3))) + 0.5d)) / 100.0f);
            paint.getTextBounds(str, 0, str.length(), rect);
            canvas.drawText(str, f2 + 5.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM - ((f3 / 2.0f) - (rect.height() / 2)), paint);
            canvas.drawLine(f2, f3, f2, Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f), paint2);
        }
    }

    public class Model {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ConstraintWidgetContainer f11637a = new ConstraintWidgetContainer();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ConstraintWidgetContainer f11638b = new ConstraintWidgetContainer();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ConstraintSet f11639c = null;
        public ConstraintSet d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11640e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f11641f;

        public Model() {
        }

        public static void c(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
            ConstraintWidget helperWidget;
            ArrayList<ConstraintWidget> arrayList = constraintWidgetContainer.w0;
            HashMap map = new HashMap();
            map.put(constraintWidgetContainer, constraintWidgetContainer2);
            constraintWidgetContainer2.w0.clear();
            constraintWidgetContainer2.k(constraintWidgetContainer, map);
            for (ConstraintWidget constraintWidget : arrayList) {
                if (constraintWidget instanceof Barrier) {
                    helperWidget = new Barrier();
                } else if (constraintWidget instanceof Guideline) {
                    helperWidget = new Guideline();
                } else if (constraintWidget instanceof Flow) {
                    helperWidget = new Flow();
                } else if (constraintWidget instanceof Placeholder) {
                    helperWidget = new Placeholder();
                } else {
                    helperWidget = constraintWidget instanceof Helper ? new HelperWidget() : new ConstraintWidget();
                }
                constraintWidgetContainer2.a(helperWidget);
                map.put(constraintWidget, helperWidget);
            }
            for (ConstraintWidget constraintWidget2 : arrayList) {
                ((ConstraintWidget) map.get(constraintWidget2)).k(constraintWidget2, map);
            }
        }

        public static ConstraintWidget d(ConstraintWidgetContainer constraintWidgetContainer, View view) {
            if (constraintWidgetContainer.j0 == view) {
                return constraintWidgetContainer;
            }
            ArrayList arrayList = constraintWidgetContainer.w0;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) arrayList.get(i2);
                if (constraintWidget.j0 == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        public final void a() {
            HashMap map;
            int[] iArr;
            int i2;
            Interpolator interpolatorLoadInterpolator;
            MotionLayout motionLayout = MotionLayout.this;
            int childCount = motionLayout.getChildCount();
            HashMap map2 = motionLayout.B;
            map2.clear();
            SparseArray sparseArray = new SparseArray();
            int[] iArr2 = new int[childCount];
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = motionLayout.getChildAt(i3);
                MotionController motionController = new MotionController(childAt);
                int id = childAt.getId();
                iArr2[i3] = id;
                sparseArray.put(id, motionController);
                map2.put(childAt, motionController);
            }
            int i4 = 0;
            while (i4 < childCount) {
                View childAt2 = motionLayout.getChildAt(i4);
                MotionController motionController2 = (MotionController) map2.get(childAt2);
                if (motionController2 == null) {
                    map = map2;
                    iArr = iArr2;
                    i2 = i4;
                } else {
                    Rect rect = motionController2.f11613a;
                    MotionConstrainedPoint motionConstrainedPoint = motionController2.f11618h;
                    MotionPaths motionPaths = motionController2.f11617f;
                    if (this.f11639c != null) {
                        ConstraintWidget constraintWidgetD = d(this.f11637a, childAt2);
                        if (constraintWidgetD != null) {
                            Rect rectQ = MotionLayout.q(motionLayout, constraintWidgetD);
                            ConstraintSet constraintSet = this.f11639c;
                            int width = motionLayout.getWidth();
                            int height = motionLayout.getHeight();
                            map = map2;
                            int i5 = constraintSet.d;
                            if (i5 != 0) {
                                MotionController.f(rectQ, rect, i5, width, height);
                            }
                            motionPaths.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            motionPaths.f11650e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            motionController2.e(motionPaths);
                            iArr = iArr2;
                            i2 = i4;
                            motionPaths.d(rectQ.left, rectQ.top, rectQ.width(), rectQ.height());
                            ConstraintSet.Constraint constraintJ = constraintSet.j(motionController2.f11615c);
                            motionPaths.a(constraintJ);
                            ConstraintSet.Motion motion = constraintJ.d;
                            motionController2.l = motion.g;
                            motionConstrainedPoint.d(rectQ, constraintSet, i5, motionController2.f11615c);
                            motionController2.C = constraintJ.f11772f.f11811i;
                            motionController2.E = motion.f11799j;
                            motionController2.F = motion.f11798i;
                            Context context = motionController2.f11614b.getContext();
                            int i6 = motion.l;
                            String str = motion.f11800k;
                            int i7 = motion.m;
                            if (i6 == -2) {
                                interpolatorLoadInterpolator = AnimationUtils.loadInterpolator(context, i7);
                            } else if (i6 == -1) {
                                final Easing easingC = Easing.c(str);
                                interpolatorLoadInterpolator = new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                                    @Override // android.animation.TimeInterpolator
                                    public final float getInterpolation(float f2) {
                                        return (float) easingC.a(f2);
                                    }
                                };
                            } else if (i6 == 0) {
                                interpolatorLoadInterpolator = new AccelerateDecelerateInterpolator();
                            } else if (i6 == 1) {
                                interpolatorLoadInterpolator = new AccelerateInterpolator();
                            } else if (i6 == 2) {
                                interpolatorLoadInterpolator = new android.view.animation.DecelerateInterpolator();
                            } else if (i6 != 4) {
                                interpolatorLoadInterpolator = i6 != 5 ? null : new OvershootInterpolator();
                            } else {
                                interpolatorLoadInterpolator = new BounceInterpolator();
                            }
                            motionController2.G = interpolatorLoadInterpolator;
                        } else {
                            map = map2;
                            iArr = iArr2;
                            i2 = i4;
                            if (motionLayout.L != 0) {
                                Debug.a();
                                Debug.c(childAt2);
                                childAt2.getClass();
                            }
                        }
                    } else {
                        map = map2;
                        iArr = iArr2;
                        i2 = i4;
                    }
                    if (this.d != null) {
                        ConstraintWidget constraintWidgetD2 = d(this.f11638b, childAt2);
                        if (constraintWidgetD2 != null) {
                            Rect rectQ2 = MotionLayout.q(motionLayout, constraintWidgetD2);
                            ConstraintSet constraintSet2 = this.d;
                            int width2 = motionLayout.getWidth();
                            int height2 = motionLayout.getHeight();
                            MotionPaths motionPaths2 = motionController2.g;
                            int i8 = constraintSet2.d;
                            if (i8 != 0) {
                                MotionController.f(rectQ2, rect, i8, width2, height2);
                            } else {
                                rect = rectQ2;
                            }
                            motionPaths2.d = 1.0f;
                            motionPaths2.f11650e = 1.0f;
                            motionController2.e(motionPaths2);
                            motionPaths2.d(rect.left, rect.top, rect.width(), rect.height());
                            motionPaths2.a(constraintSet2.j(motionController2.f11615c));
                            motionController2.f11619i.d(rect, constraintSet2, i8, motionController2.f11615c);
                        } else if (motionLayout.L != 0) {
                            Debug.a();
                            Debug.c(childAt2);
                            childAt2.getClass();
                        }
                    }
                }
                i4 = i2 + 1;
                map2 = map;
                iArr2 = iArr;
            }
            int[] iArr3 = iArr2;
            for (int i9 = 0; i9 < childCount; i9++) {
                MotionController motionController3 = (MotionController) sparseArray.get(iArr3[i9]);
                int i10 = motionController3.f11617f.l;
                if (i10 != -1) {
                    MotionController motionController4 = (MotionController) sparseArray.get(i10);
                    motionController3.f11617f.f(motionController4, motionController4.f11617f);
                    motionController3.g.f(motionController4, motionController4.g);
                }
            }
        }

        public final void b(int i2, int i3) {
            MotionLayout motionLayout = MotionLayout.this;
            int optimizationLevel = motionLayout.getOptimizationLevel();
            if (motionLayout.w == motionLayout.getStartState()) {
                ConstraintWidgetContainer constraintWidgetContainer = this.f11638b;
                ConstraintSet constraintSet = this.d;
                motionLayout.l(constraintWidgetContainer, optimizationLevel, (constraintSet == null || constraintSet.d == 0) ? i2 : i3, (constraintSet == null || constraintSet.d == 0) ? i3 : i2);
                ConstraintSet constraintSet2 = this.f11639c;
                if (constraintSet2 != null) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f11637a;
                    int i4 = constraintSet2.d;
                    int i5 = i4 == 0 ? i2 : i3;
                    if (i4 == 0) {
                        i2 = i3;
                    }
                    motionLayout.l(constraintWidgetContainer2, optimizationLevel, i5, i2);
                    return;
                }
                return;
            }
            ConstraintSet constraintSet3 = this.f11639c;
            if (constraintSet3 != null) {
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f11637a;
                int i6 = constraintSet3.d;
                motionLayout.l(constraintWidgetContainer3, optimizationLevel, i6 == 0 ? i2 : i3, i6 == 0 ? i3 : i2);
            }
            ConstraintWidgetContainer constraintWidgetContainer4 = this.f11638b;
            ConstraintSet constraintSet4 = this.d;
            int i7 = (constraintSet4 == null || constraintSet4.d == 0) ? i2 : i3;
            if (constraintSet4 == null || constraintSet4.d == 0) {
                i2 = i3;
            }
            motionLayout.l(constraintWidgetContainer4, optimizationLevel, i7, i2);
        }

        public final void e(ConstraintSet constraintSet, ConstraintSet constraintSet2) {
            this.f11639c = constraintSet;
            this.d = constraintSet2;
            this.f11637a = new ConstraintWidgetContainer();
            ConstraintWidgetContainer constraintWidgetContainer = new ConstraintWidgetContainer();
            this.f11638b = constraintWidgetContainer;
            ConstraintWidgetContainer constraintWidgetContainer2 = this.f11637a;
            boolean z = MotionLayout.F1;
            MotionLayout motionLayout = MotionLayout.this;
            ConstraintWidgetContainer constraintWidgetContainer3 = motionLayout.d;
            BasicMeasure.Measurer measurer = constraintWidgetContainer3.A0;
            constraintWidgetContainer2.A0 = measurer;
            constraintWidgetContainer2.y0.f11524f = measurer;
            BasicMeasure.Measurer measurer2 = constraintWidgetContainer3.A0;
            constraintWidgetContainer.A0 = measurer2;
            constraintWidgetContainer.y0.f11524f = measurer2;
            constraintWidgetContainer2.w0.clear();
            this.f11638b.w0.clear();
            c(constraintWidgetContainer3, this.f11637a);
            c(constraintWidgetContainer3, this.f11638b);
            if (motionLayout.F > 0.5d) {
                if (constraintSet != null) {
                    g(this.f11637a, constraintSet);
                }
                g(this.f11638b, constraintSet2);
            } else {
                g(this.f11638b, constraintSet2);
                if (constraintSet != null) {
                    g(this.f11637a, constraintSet);
                }
            }
            this.f11637a.B0 = motionLayout.f();
            ConstraintWidgetContainer constraintWidgetContainer4 = this.f11637a;
            constraintWidgetContainer4.x0.c(constraintWidgetContainer4);
            this.f11638b.B0 = motionLayout.f();
            ConstraintWidgetContainer constraintWidgetContainer5 = this.f11638b;
            constraintWidgetContainer5.x0.c(constraintWidgetContainer5);
            ViewGroup.LayoutParams layoutParams = motionLayout.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer6 = this.f11637a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer6.S(dimensionBehaviour);
                    this.f11638b.S(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer7 = this.f11637a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer7.U(dimensionBehaviour2);
                    this.f11638b.U(dimensionBehaviour2);
                }
            }
        }

        public final void f() {
            MotionLayout motionLayout = MotionLayout.this;
            int i2 = motionLayout.y;
            int i3 = motionLayout.z;
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            motionLayout.p1 = mode;
            motionLayout.q1 = mode2;
            b(i2, i3);
            int i4 = 0;
            if (!(motionLayout.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
                b(i2, i3);
                motionLayout.l1 = this.f11637a.v();
                motionLayout.m1 = this.f11637a.p();
                motionLayout.n1 = this.f11638b.v();
                int iP = this.f11638b.p();
                motionLayout.o1 = iP;
                motionLayout.k1 = (motionLayout.l1 == motionLayout.n1 && motionLayout.m1 == iP) ? false : true;
            }
            int i5 = motionLayout.l1;
            int i6 = motionLayout.m1;
            int i7 = motionLayout.p1;
            if (i7 == Integer.MIN_VALUE || i7 == 0) {
                i5 = (int) ((motionLayout.r1 * (motionLayout.n1 - i5)) + i5);
            }
            int i8 = motionLayout.q1;
            if (i8 == Integer.MIN_VALUE || i8 == 0) {
                i6 = (int) ((motionLayout.r1 * (motionLayout.o1 - i6)) + i6);
            }
            ConstraintWidgetContainer constraintWidgetContainer = this.f11637a;
            motionLayout.i(i2, i3, i5, i6, constraintWidgetContainer.K0 || this.f11638b.K0, constraintWidgetContainer.L0 || this.f11638b.L0);
            HashMap map = motionLayout.B;
            int childCount = motionLayout.getChildCount();
            motionLayout.z1.a();
            motionLayout.J = true;
            SparseArray sparseArray = new SparseArray();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = motionLayout.getChildAt(i9);
                sparseArray.put(childAt.getId(), (MotionController) map.get(childAt));
            }
            int width = motionLayout.getWidth();
            int height = motionLayout.getHeight();
            MotionScene.Transition transition = motionLayout.r.f11658c;
            int i10 = transition != null ? transition.p : -1;
            if (i10 != -1) {
                for (int i11 = 0; i11 < childCount; i11++) {
                    MotionController motionController = (MotionController) map.get(motionLayout.getChildAt(i11));
                    if (motionController != null) {
                        motionController.B = i10;
                    }
                }
            }
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            int[] iArr = new int[map.size()];
            int i12 = 0;
            for (int i13 = 0; i13 < childCount; i13++) {
                MotionController motionController2 = (MotionController) map.get(motionLayout.getChildAt(i13));
                int i14 = motionController2.f11617f.l;
                if (i14 != -1) {
                    sparseBooleanArray.put(i14, true);
                    iArr[i12] = motionController2.f11617f.l;
                    i12++;
                }
            }
            for (int i15 = 0; i15 < i12; i15++) {
                MotionController motionController3 = (MotionController) map.get(motionLayout.findViewById(iArr[i15]));
                if (motionController3 != null) {
                    motionLayout.r.e(motionController3);
                    motionController3.g(width, height, motionLayout.getNanoTime());
                }
            }
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt2 = motionLayout.getChildAt(i16);
                MotionController motionController4 = (MotionController) map.get(childAt2);
                if (!sparseBooleanArray.get(childAt2.getId()) && motionController4 != null) {
                    motionLayout.r.e(motionController4);
                    motionController4.g(width, height, motionLayout.getNanoTime());
                }
            }
            MotionScene.Transition transition2 = motionLayout.r.f11658c;
            float f2 = transition2 != null ? transition2.f11672i : 0.0f;
            if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                boolean z = ((double) f2) < 0.0d;
                float fAbs = Math.abs(f2);
                float fMax = -3.4028235E38f;
                float fMin = Float.MAX_VALUE;
                float fMax2 = -3.4028235E38f;
                float fMin2 = Float.MAX_VALUE;
                for (int i17 = 0; i17 < childCount; i17++) {
                    MotionController motionController5 = (MotionController) map.get(motionLayout.getChildAt(i17));
                    if (!Float.isNaN(motionController5.l)) {
                        for (int i18 = 0; i18 < childCount; i18++) {
                            MotionController motionController6 = (MotionController) map.get(motionLayout.getChildAt(i18));
                            if (!Float.isNaN(motionController6.l)) {
                                fMin = Math.min(fMin, motionController6.l);
                                fMax = Math.max(fMax, motionController6.l);
                            }
                        }
                        while (i4 < childCount) {
                            MotionController motionController7 = (MotionController) map.get(motionLayout.getChildAt(i4));
                            if (!Float.isNaN(motionController7.l)) {
                                motionController7.n = 1.0f / (1.0f - fAbs);
                                float f3 = motionController7.l;
                                if (z) {
                                    motionController7.m = fAbs - (((fMax - f3) / (fMax - fMin)) * fAbs);
                                } else {
                                    motionController7.m = fAbs - (((f3 - fMin) * fAbs) / (fMax - fMin));
                                }
                            }
                            i4++;
                        }
                        return;
                    }
                    MotionPaths motionPaths = motionController5.g;
                    float f4 = motionPaths.f11651f;
                    float f5 = motionPaths.g;
                    float f6 = z ? f5 - f4 : f5 + f4;
                    fMin2 = Math.min(fMin2, f6);
                    fMax2 = Math.max(fMax2, f6);
                }
                while (i4 < childCount) {
                    MotionController motionController8 = (MotionController) map.get(motionLayout.getChildAt(i4));
                    MotionPaths motionPaths2 = motionController8.g;
                    float f7 = motionPaths2.f11651f;
                    float f8 = motionPaths2.g;
                    float f9 = z ? f8 - f7 : f8 + f7;
                    motionController8.n = 1.0f / (1.0f - fAbs);
                    motionController8.m = fAbs - (((f9 - fMin2) * fAbs) / (fMax2 - fMin2));
                    i4++;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void g(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
            ConstraintSet.Constraint constraint;
            ConstraintSet.Constraint constraint2;
            SparseArray sparseArray = new SparseArray();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, constraintWidgetContainer);
            MotionLayout motionLayout = MotionLayout.this;
            sparseArray.put(motionLayout.getId(), constraintWidgetContainer);
            if (constraintSet != null && constraintSet.d != 0) {
                ConstraintWidgetContainer constraintWidgetContainer2 = this.f11638b;
                int optimizationLevel = motionLayout.getOptimizationLevel();
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(motionLayout.getHeight(), 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(motionLayout.getWidth(), 1073741824);
                boolean z = MotionLayout.F1;
                motionLayout.l(constraintWidgetContainer2, optimizationLevel, iMakeMeasureSpec, iMakeMeasureSpec2);
            }
            for (ConstraintWidget constraintWidget : constraintWidgetContainer.w0) {
                constraintWidget.l0 = true;
                sparseArray.put(((View) constraintWidget.j0).getId(), constraintWidget);
            }
            for (ConstraintWidget constraintWidget2 : constraintWidgetContainer.w0) {
                View view = (View) constraintWidget2.j0;
                int id = view.getId();
                HashMap map = constraintSet.g;
                if (map.containsKey(Integer.valueOf(id)) && (constraint2 = (ConstraintSet.Constraint) map.get(Integer.valueOf(id))) != null) {
                    constraint2.b(layoutParams);
                }
                constraintWidget2.W(constraintSet.j(view.getId()).f11771e.f11785c);
                constraintWidget2.R(constraintSet.j(view.getId()).f11771e.d);
                if (view instanceof ConstraintHelper) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) view;
                    int id2 = constraintHelper.getId();
                    HashMap map2 = constraintSet.g;
                    if (map2.containsKey(Integer.valueOf(id2)) && (constraint = (ConstraintSet.Constraint) map2.get(Integer.valueOf(id2))) != null && (constraintWidget2 instanceof HelperWidget)) {
                        constraintHelper.i(constraint, (HelperWidget) constraintWidget2, layoutParams, sparseArray);
                    }
                    if (view instanceof androidx.constraintlayout.widget.Barrier) {
                        ((androidx.constraintlayout.widget.Barrier) view).k();
                    }
                }
                layoutParams.resolveLayoutDirection(motionLayout.getLayoutDirection());
                boolean z2 = MotionLayout.F1;
                motionLayout.b(false, view, constraintWidget2, layoutParams, sparseArray);
                if (constraintSet.j(view.getId()).f11770c.f11803c == 1) {
                    constraintWidget2.k0 = view.getVisibility();
                } else {
                    constraintWidget2.k0 = constraintSet.j(view.getId()).f11770c.f11802b;
                }
            }
            for (ConstraintWidget constraintWidget3 : constraintWidgetContainer.w0) {
                if (constraintWidget3 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper2 = (ConstraintHelper) constraintWidget3.j0;
                    Helper helper = (Helper) constraintWidget3;
                    constraintHelper2.getClass();
                    helper.b();
                    for (int i2 = 0; i2 < constraintHelper2.f11718c; i2++) {
                        helper.a((ConstraintWidget) sparseArray.get(constraintHelper2.f11717b[i2]));
                    }
                    VirtualLayout virtualLayout = (VirtualLayout) helper;
                    for (int i3 = 0; i3 < virtualLayout.x0; i3++) {
                        ConstraintWidget constraintWidget4 = virtualLayout.w0[i3];
                        if (constraintWidget4 != null) {
                            constraintWidget4.I = true;
                        }
                    }
                }
            }
        }
    }

    public interface MotionTracker {
    }

    public static class MyTracker implements MotionTracker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final MyTracker f11642b = new MyTracker();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public VelocityTracker f11643a;
    }

    public class StateCache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f11644a = Float.NaN;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f11645b = Float.NaN;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11646c = -1;
        public int d = -1;

        public StateCache() {
        }

        public final void a() {
            int i2 = this.f11646c;
            MotionLayout motionLayout = MotionLayout.this;
            if (i2 != -1 || this.d != -1) {
                int i3 = this.d;
                if (i2 == -1) {
                    motionLayout.F(i3);
                } else if (i3 == -1) {
                    motionLayout.C(i2);
                } else {
                    motionLayout.D(i2, i3);
                }
                motionLayout.setState(TransitionState.SETUP);
            }
            boolean zIsNaN = Float.isNaN(this.f11645b);
            float f2 = this.f11644a;
            if (zIsNaN) {
                if (Float.isNaN(f2)) {
                    return;
                }
                motionLayout.setProgress(this.f11644a);
                return;
            }
            float f3 = this.f11645b;
            if (motionLayout.isAttachedToWindow()) {
                motionLayout.setProgress(f2);
                motionLayout.setState(TransitionState.MOVING);
                motionLayout.u = f3;
                float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f4 = 1.0f;
                    }
                    motionLayout.r(f4);
                } else if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 != 1.0f) {
                    if (f2 > 0.5f) {
                        f4 = 1.0f;
                    }
                    motionLayout.r(f4);
                }
            } else {
                if (motionLayout.u1 == null) {
                    motionLayout.u1 = motionLayout.new StateCache();
                }
                StateCache stateCache = motionLayout.u1;
                stateCache.f11644a = f2;
                stateCache.f11645b = f3;
            }
            this.f11644a = Float.NaN;
            this.f11645b = Float.NaN;
            this.f11646c = -1;
            this.d = -1;
        }
    }

    public interface TransitionListener {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TransitionState {
        private static final /* synthetic */ TransitionState[] $VALUES;
        public static final TransitionState FINISHED;
        public static final TransitionState MOVING;
        public static final TransitionState SETUP;
        public static final TransitionState UNDEFINED;

        static {
            TransitionState transitionState = new TransitionState("UNDEFINED", 0);
            UNDEFINED = transitionState;
            TransitionState transitionState2 = new TransitionState("SETUP", 1);
            SETUP = transitionState2;
            TransitionState transitionState3 = new TransitionState("MOVING", 2);
            MOVING = transitionState3;
            TransitionState transitionState4 = new TransitionState("FINISHED", 3);
            FINISHED = transitionState4;
            $VALUES = new TransitionState[]{transitionState, transitionState2, transitionState3, transitionState4};
        }

        public static TransitionState valueOf(String str) {
            return (TransitionState) Enum.valueOf(TransitionState.class, str);
        }

        public static TransitionState[] values() {
            return (TransitionState[]) $VALUES.clone();
        }
    }

    public MotionLayout(Context context) {
        super(context);
        this.t = null;
        this.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.v = -1;
        this.w = -1;
        this.x = -1;
        this.y = 0;
        this.z = 0;
        this.A = true;
        this.B = new HashMap();
        this.C = 0L;
        this.D = 1.0f;
        this.E = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.H = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.J = false;
        this.L = 0;
        this.N = false;
        this.O = new StopLogic();
        this.P = new DecelerateInterpolator();
        this.T = false;
        this.b1 = false;
        this.c1 = null;
        this.d1 = null;
        this.e1 = null;
        this.f1 = 0;
        this.g1 = -1L;
        this.h1 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.i1 = 0;
        this.j1 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.k1 = false;
        this.s1 = new KeyCache();
        this.t1 = false;
        this.v1 = null;
        new HashMap();
        this.w1 = new Rect();
        this.x1 = false;
        this.y1 = TransitionState.UNDEFINED;
        this.z1 = new Model();
        this.A1 = false;
        this.B1 = new RectF();
        this.C1 = null;
        this.D1 = null;
        this.E1 = new ArrayList();
        y(null);
    }

    public static Rect q(MotionLayout motionLayout, ConstraintWidget constraintWidget) {
        Rect rect = motionLayout.w1;
        rect.top = constraintWidget.x();
        rect.left = constraintWidget.w();
        rect.right = constraintWidget.v() + rect.left;
        rect.bottom = constraintWidget.p() + rect.top;
        return rect;
    }

    public final void A() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if (this.K == null && ((copyOnWriteArrayList = this.e1) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        ArrayList<Integer> arrayList = this.E1;
        for (Integer num : arrayList) {
            if (this.K != null) {
                num.getClass();
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.e1;
            if (copyOnWriteArrayList2 != null) {
                for (TransitionListener transitionListener : copyOnWriteArrayList2) {
                    num.getClass();
                    transitionListener.getClass();
                }
            }
        }
        arrayList.clear();
    }

    public final void B() {
        this.z1.f();
        invalidate();
    }

    public final void C(int i2) {
        setState(TransitionState.SETUP);
        this.w = i2;
        this.v = -1;
        this.x = -1;
        ConstraintLayoutStates constraintLayoutStates = this.l;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.b(-1.0f, -1.0f, i2);
            return;
        }
        MotionScene motionScene = this.r;
        if (motionScene != null) {
            motionScene.b(i2).c(this);
        }
    }

    public final void D(int i2, int i3) {
        if (!isAttachedToWindow()) {
            if (this.u1 == null) {
                this.u1 = new StateCache();
            }
            StateCache stateCache = this.u1;
            stateCache.f11646c = i2;
            stateCache.d = i3;
            return;
        }
        MotionScene motionScene = this.r;
        if (motionScene != null) {
            this.v = i2;
            this.x = i3;
            motionScene.m(i2, i3);
            this.z1.e(this.r.b(i2), this.r.b(i3));
            B();
            this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            r(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0076  */
    /* JADX WARN: Code duplicated, block: B:31:0x0088  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a0  */
    public final void E(float f2, float f3, int i2) {
        float f4;
        TouchResponse touchResponse;
        TouchResponse touchResponse2;
        TouchResponse touchResponse3;
        TouchResponse touchResponse4;
        TouchResponse touchResponse5;
        TouchResponse touchResponse6;
        TouchResponse touchResponse7;
        MotionScene.Transition transition;
        float f5;
        TouchResponse touchResponse8;
        float f6 = f2;
        if (this.r == null || this.F == f6) {
            return;
        }
        this.N = true;
        this.C = getNanoTime();
        MotionScene motionScene = this.r;
        MotionScene.Transition transition2 = motionScene.f11658c;
        float f7 = (transition2 != null ? transition2.f11671h : motionScene.f11663j) / 1000.0f;
        this.D = f7;
        this.H = f6;
        this.J = true;
        StopLogic stopLogic = this.O;
        float f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            f4 = 1.0f;
            DecelerateInterpolator decelerateInterpolator = this.P;
            if (i2 == 4) {
                float f9 = this.F;
                float f10 = motionScene.f();
                decelerateInterpolator.f11625a = f3;
                decelerateInterpolator.f11626b = f9;
                decelerateInterpolator.f11627c = f10;
                this.s = decelerateInterpolator;
            } else if (i2 == 5) {
                float f11 = this.F;
                float f12 = motionScene.f();
                if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    float f13 = f3 / f12;
                    if (((f3 * f13) - (((f12 * f13) * f13) / 2.0f)) + f11 > 1.0f) {
                        float f14 = this.F;
                        float f15 = this.r.f();
                        decelerateInterpolator.f11625a = f3;
                        decelerateInterpolator.f11626b = f14;
                        decelerateInterpolator.f11627c = f15;
                        this.s = decelerateInterpolator;
                    } else {
                        float f16 = this.F;
                        float f17 = this.D;
                        float f18 = this.r.f();
                        transition = this.r.f11658c;
                        if (transition != null || (touchResponse8 = transition.l) == null) {
                            f5 = 0.0f;
                        } else {
                            f5 = touchResponse8.s;
                        }
                        this.O.b(f16, f6, f3, f17, f18, f5);
                        this.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        int i3 = this.w;
                        this.H = f6;
                        this.w = i3;
                        this.s = stopLogic;
                    }
                } else {
                    float f19 = (-f3) / f12;
                    if ((((f12 * f19) * f19) / 2.0f) + (f3 * f19) + f11 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        float f110 = this.F;
                        float f111 = this.r.f();
                        decelerateInterpolator.f11625a = f3;
                        decelerateInterpolator.f11626b = f110;
                        decelerateInterpolator.f11627c = f111;
                        this.s = decelerateInterpolator;
                    } else {
                        float f112 = this.F;
                        float f113 = this.D;
                        float f114 = this.r.f();
                        transition = this.r.f11658c;
                        if (transition != null) {
                            f5 = 0.0f;
                        } else {
                            f5 = 0.0f;
                        }
                        this.O.b(f112, f6, f3, f113, f114, f5);
                        this.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        int i4 = this.w;
                        this.H = f6;
                        this.w = i4;
                        this.s = stopLogic;
                    }
                }
            } else if (i2 == 6 || i2 == 7) {
            }
            this.I = false;
            this.C = getNanoTime();
            invalidate();
        }
        f4 = 1.0f;
        if (i2 == 1 || i2 == 7) {
            f6 = 0.0f;
        } else if (i2 == 2 || i2 == 6) {
            f6 = f4;
        }
        int i5 = (transition2 == null || (touchResponse7 = transition2.l) == null) ? 0 : touchResponse7.D;
        float f20 = this.F;
        int i6 = i5;
        StopLogic stopLogic2 = this.O;
        if (i6 == 0) {
            float f21 = motionScene.f();
            MotionScene.Transition transition3 = this.r.f11658c;
            if (transition3 != null && (touchResponse6 = transition3.l) != null) {
                f8 = touchResponse6.s;
            }
            stopLogic2.b(f20, f6, f3, f7, f21, f8);
        } else {
            float f22 = (transition2 == null || (touchResponse5 = transition2.l) == null) ? 0.0f : touchResponse5.z;
            float f23 = (transition2 == null || (touchResponse4 = transition2.l) == null) ? 0.0f : touchResponse4.A;
            float f24 = (transition2 == null || (touchResponse3 = transition2.l) == null) ? 0.0f : touchResponse3.y;
            float f25 = (transition2 == null || (touchResponse2 = transition2.l) == null) ? 0.0f : touchResponse2.B;
            int i7 = (transition2 == null || (touchResponse = transition2.l) == null) ? 0 : touchResponse.C;
            if (stopLogic2.f11558b == null) {
                stopLogic2.f11558b = new SpringStopEngine();
            }
            SpringStopEngine springStopEngine = stopLogic2.f11558b;
            stopLogic2.f11559c = springStopEngine;
            springStopEngine.f11379c = f6;
            springStopEngine.f11377a = f24;
            springStopEngine.f11380e = f20;
            springStopEngine.f11378b = f23;
            springStopEngine.g = f22;
            springStopEngine.f11382h = f25;
            springStopEngine.f11383i = i7;
            springStopEngine.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        int i8 = this.w;
        this.H = f6;
        this.w = i8;
        this.s = stopLogic;
        this.I = false;
        this.C = getNanoTime();
        invalidate();
    }

    public final void F(int i2) {
        StateSet stateSet;
        int iA;
        if (!isAttachedToWindow()) {
            if (this.u1 == null) {
                this.u1 = new StateCache();
            }
            this.u1.d = i2;
            return;
        }
        MotionScene motionScene = this.r;
        if (motionScene != null && (stateSet = motionScene.f11657b) != null && (iA = stateSet.a(this.w, i2, -1.0f, -1.0f)) != -1) {
            i2 = iA;
        }
        int i3 = this.w;
        if (i3 == i2) {
            return;
        }
        if (this.v == i2) {
            r(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            return;
        }
        if (this.x == i2) {
            r(1.0f);
            return;
        }
        this.x = i2;
        if (i3 != -1) {
            D(i3, i2);
            r(1.0f);
            this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            r(1.0f);
            this.v1 = null;
            return;
        }
        this.N = false;
        this.H = 1.0f;
        this.E = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.G = getNanoTime();
        this.C = getNanoTime();
        this.I = false;
        this.s = null;
        MotionScene motionScene2 = this.r;
        MotionScene.Transition transition = motionScene2.f11658c;
        this.D = (transition != null ? transition.f11671h : motionScene2.f11663j) / 1000.0f;
        this.v = -1;
        motionScene2.m(-1, this.x);
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        HashMap map = this.B;
        map.clear();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            map.put(childAt, new MotionController(childAt));
            sparseArray.put(childAt.getId(), (MotionController) map.get(childAt));
        }
        this.J = true;
        ConstraintSet constraintSetB = this.r.b(i2);
        Model model = this.z1;
        model.e(null, constraintSetB);
        B();
        model.a();
        int childCount2 = getChildCount();
        for (int i5 = 0; i5 < childCount2; i5++) {
            View childAt2 = getChildAt(i5);
            MotionController motionController = (MotionController) map.get(childAt2);
            if (motionController != null) {
                MotionPaths motionPaths = motionController.f11617f;
                motionPaths.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                motionPaths.f11650e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                motionPaths.d(childAt2.getX(), childAt2.getY(), childAt2.getWidth(), childAt2.getHeight());
                MotionConstrainedPoint motionConstrainedPoint = motionController.f11618h;
                motionConstrainedPoint.getClass();
                childAt2.getX();
                childAt2.getY();
                childAt2.getWidth();
                childAt2.getHeight();
                motionConstrainedPoint.b(childAt2);
            }
        }
        int width = getWidth();
        int height = getHeight();
        for (int i6 = 0; i6 < childCount; i6++) {
            MotionController motionController2 = (MotionController) map.get(getChildAt(i6));
            if (motionController2 != null) {
                this.r.e(motionController2);
                motionController2.g(width, height, getNanoTime());
            }
        }
        MotionScene.Transition transition2 = this.r.f11658c;
        float f2 = transition2 != null ? transition2.f11672i : 0.0f;
        if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i7 = 0; i7 < childCount; i7++) {
                MotionPaths motionPaths2 = ((MotionController) map.get(getChildAt(i7))).g;
                float f3 = motionPaths2.g + motionPaths2.f11651f;
                fMin = Math.min(fMin, f3);
                fMax = Math.max(fMax, f3);
            }
            for (int i8 = 0; i8 < childCount; i8++) {
                MotionController motionController3 = (MotionController) map.get(getChildAt(i8));
                MotionPaths motionPaths3 = motionController3.g;
                float f4 = motionPaths3.f11651f;
                float f5 = motionPaths3.g;
                motionController3.n = 1.0f / (1.0f - f2);
                motionController3.m = f2 - ((((f4 + f5) - fMin) * f2) / (fMax - fMin));
            }
        }
        this.E = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.J = true;
        invalidate();
    }

    public final void G(int i2, ConstraintSet constraintSet) {
        MotionScene motionScene = this.r;
        if (motionScene != null) {
            motionScene.g.put(i2, constraintSet);
        }
        this.z1.e(this.r.b(this.v), this.r.b(this.x));
        B();
        if (this.w == i2) {
            constraintSet.c(this);
        }
    }

    public final void H(int i2, View... viewArr) {
        MotionScene motionScene = this.r;
        if (motionScene != null) {
            ViewTransitionController viewTransitionController = motionScene.q;
            viewTransitionController.getClass();
            ArrayList arrayList = new ArrayList();
            for (ViewTransition viewTransition : viewTransitionController.f11706b) {
                if (viewTransition.f11686a == i2) {
                    for (View view : viewArr) {
                        if (viewTransition.b(view)) {
                            arrayList.add(view);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        View[] viewArr2 = (View[]) arrayList.toArray(new View[0]);
                        MotionLayout motionLayout = viewTransitionController.f11705a;
                        int currentState = motionLayout.getCurrentState();
                        if (viewTransition.f11689e == 2) {
                            viewTransition.a(viewTransitionController, viewTransitionController.f11705a, currentState, null, viewArr2);
                        } else if (currentState == -1) {
                            motionLayout.toString();
                        } else {
                            MotionScene motionScene2 = motionLayout.r;
                            ConstraintSet constraintSetB = motionScene2 == null ? null : motionScene2.b(currentState);
                            if (constraintSetB != null) {
                                viewTransition.a(viewTransitionController, viewTransitionController.f11705a, currentState, constraintSetB, viewArr2);
                            }
                        }
                        arrayList.clear();
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        ArrayList arrayList;
        int i2;
        int i3;
        int i4;
        Paint paint;
        Paint paint2;
        int i5;
        Paint paint3;
        int i6;
        Paint paint4;
        float fMin;
        double dA;
        Paint paint5;
        String resourceEntryName;
        ViewTransitionController viewTransitionController;
        t(false);
        MotionScene motionScene = this.r;
        if (motionScene != null && (viewTransitionController = motionScene.q) != null) {
            ArrayList arrayList2 = viewTransitionController.f11708e;
            ArrayList arrayList3 = viewTransitionController.d;
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    ((ViewTransition.Animate) it.next()).a();
                }
                viewTransitionController.d.removeAll(arrayList2);
                arrayList2.clear();
                if (viewTransitionController.d.isEmpty()) {
                    viewTransitionController.d = null;
                }
            }
        }
        super.dispatchDraw(canvas);
        if (this.r == null) {
            return;
        }
        if ((this.L & 1) == 1 && !isInEditMode()) {
            this.f1++;
            long nanoTime = getNanoTime();
            long j2 = this.g1;
            if (j2 != -1) {
                long j3 = nanoTime - j2;
                if (j3 > 200000000) {
                    this.h1 = ((int) ((this.f1 / (j3 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.f1 = 0;
                    this.g1 = nanoTime;
                }
            } else {
                this.g1 = nanoTime;
            }
            Paint paint6 = new Paint();
            paint6.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            StringBuilder sb = new StringBuilder();
            sb.append(this.h1);
            sb.append(" fps ");
            int i7 = this.v;
            StringBuilder sbT = n00.t(n00.r(i7 == -1 ? "UNDEFINED" : getContext().getResources().getResourceEntryName(i7), " -> ", sb));
            int i8 = this.x;
            sbT.append(i8 == -1 ? "UNDEFINED" : getContext().getResources().getResourceEntryName(i8));
            sbT.append(" (progress: ");
            sbT.append(progress);
            sbT.append(" ) state=");
            int i9 = this.w;
            if (i9 == -1) {
                resourceEntryName = "undefined";
            } else {
                resourceEntryName = i9 != -1 ? getContext().getResources().getResourceEntryName(i9) : "UNDEFINED";
            }
            sbT.append(resourceEntryName);
            String string = sbT.toString();
            paint6.setColor(b.v);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint6);
            paint6.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint6);
        }
        if (this.L > 1) {
            if (this.M == null) {
                this.M = new DevModeDraw();
            }
            DevModeDraw devModeDraw = this.M;
            MotionScene motionScene2 = this.r;
            MotionScene.Transition transition = motionScene2.f11658c;
            int i10 = transition != null ? transition.f11671h : motionScene2.f11663j;
            int i11 = this.L;
            Paint paint7 = devModeDraw.g;
            Paint paint8 = devModeDraw.f11632f;
            Paint paint9 = devModeDraw.f11634i;
            int i12 = devModeDraw.m;
            Paint paint10 = devModeDraw.f11631e;
            MotionLayout motionLayout = MotionLayout.this;
            HashMap map = this.B;
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            if (!motionLayout.isInEditMode() && (i11 & 1) == 2) {
                String str = motionLayout.getContext().getResources().getResourceName(motionLayout.x) + ":" + motionLayout.getProgress();
                canvas.drawText(str, 10.0f, motionLayout.getHeight() - 30, devModeDraw.f11633h);
                canvas.drawText(str, 11.0f, motionLayout.getHeight() - 29, paint10);
            }
            Iterator it2 = map.values().iterator();
            while (it2.hasNext()) {
                MotionController motionController = (MotionController) it2.next();
                MotionPaths motionPaths = motionController.f11617f;
                ArrayList arrayList4 = motionController.u;
                int iMax = motionPaths.f11649c;
                Iterator it3 = arrayList4.iterator();
                while (it3.hasNext()) {
                    iMax = Math.max(iMax, ((MotionPaths) it3.next()).f11649c);
                }
                int iMax2 = Math.max(iMax, motionController.g.f11649c);
                if (i11 > 0 && iMax2 == 0) {
                    iMax2 = 1;
                }
                if (iMax2 != 0) {
                    float[] fArr = devModeDraw.f11630c;
                    int[] iArr = devModeDraw.f11629b;
                    if (fArr != null) {
                        double[] dArrF = motionController.f11620j[0].f();
                        if (iArr != null) {
                            Iterator it4 = arrayList4.iterator();
                            int i13 = 0;
                            while (it4.hasNext()) {
                                iArr[i13] = ((MotionPaths) it4.next()).p;
                                i13++;
                                arrayList4 = arrayList4;
                            }
                        }
                        arrayList = arrayList4;
                        int i14 = 0;
                        int i15 = 0;
                        while (i14 < dArrF.length) {
                            float[] fArr2 = fArr;
                            double[] dArr = dArrF;
                            motionController.f11620j[0].c(dArrF[i14], motionController.p);
                            motionController.f11617f.c(dArr[i14], motionController.o, motionController.p, fArr2, i15);
                            i15 += 2;
                            i14++;
                            fArr = fArr2;
                            i10 = i10;
                            dArrF = dArr;
                        }
                        i2 = i10;
                        i3 = i15 / 2;
                    } else {
                        arrayList = arrayList4;
                        i2 = i10;
                        i3 = 0;
                    }
                    devModeDraw.f11636k = i3;
                    if (iMax2 >= 1) {
                        int i16 = i2 / 16;
                        float[] fArr3 = devModeDraw.f11628a;
                        if (fArr3 == null || fArr3.length != i16 * 2) {
                            devModeDraw.f11628a = new float[i16 * 2];
                            devModeDraw.d = new Path();
                        }
                        float f2 = i12;
                        canvas.translate(f2, f2);
                        paint10.setColor(1996488704);
                        paint9.setColor(1996488704);
                        paint8.setColor(1996488704);
                        paint7.setColor(1996488704);
                        float[] fArr4 = devModeDraw.f11628a;
                        float f3 = 1.0f / (i16 - 1);
                        HashMap map2 = motionController.y;
                        float f4 = 1.0f;
                        SplineSet splineSet = map2 == null ? null : (SplineSet) map2.get("translationX");
                        HashMap map3 = motionController.y;
                        SplineSet splineSet2 = map3 == null ? null : (SplineSet) map3.get("translationY");
                        i4 = i11;
                        HashMap map4 = motionController.z;
                        ViewOscillator viewOscillator = map4 == null ? null : (ViewOscillator) map4.get("translationX");
                        HashMap map5 = motionController.z;
                        ViewOscillator viewOscillator2 = map5 == null ? null : (ViewOscillator) map5.get("translationY");
                        int i17 = 0;
                        while (true) {
                            float f5 = Float.NaN;
                            float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            if (i17 >= i16) {
                                break;
                            }
                            int i18 = i16;
                            float f7 = i17 * f3;
                            float f8 = motionController.n;
                            if (f8 != f4) {
                                float f9 = motionController.m;
                                fMin = f7 < f9 ? 0.0f : f7;
                                i6 = i17;
                                paint4 = paint7;
                                if (fMin > f9 && fMin < 1.0d) {
                                    fMin = Math.min((fMin - f9) * f8, f4);
                                }
                            } else {
                                i6 = i17;
                                paint4 = paint7;
                                fMin = f7;
                            }
                            double d = fMin;
                            Easing easing = motionPaths.f11648b;
                            Iterator it5 = arrayList.iterator();
                            while (it5.hasNext()) {
                                Iterator it6 = it5;
                                MotionPaths motionPaths2 = (MotionPaths) it5.next();
                                MotionPaths motionPaths3 = motionPaths;
                                Easing easing2 = motionPaths2.f11648b;
                                if (easing2 != null) {
                                    float f10 = motionPaths2.d;
                                    if (f10 < fMin) {
                                        f6 = f10;
                                        easing = easing2;
                                    } else if (Float.isNaN(f5)) {
                                        f5 = motionPaths2.d;
                                    }
                                }
                                it5 = it6;
                                motionPaths = motionPaths3;
                            }
                            MotionPaths motionPaths4 = motionPaths;
                            if (easing != null) {
                                if (Float.isNaN(f5)) {
                                    f5 = 1.0f;
                                }
                                float f11 = f5 - f6;
                                dA = (((float) easing.a((fMin - f6) / f11)) * f11) + f6;
                            } else {
                                dA = d;
                            }
                            motionController.f11620j[0].c(dA, motionController.p);
                            ArcCurveFit arcCurveFit = motionController.f11621k;
                            if (arcCurveFit != null) {
                                double[] dArr2 = motionController.p;
                                paint5 = paint9;
                                if (dArr2.length > 0) {
                                    arcCurveFit.c(dA, dArr2);
                                }
                            } else {
                                paint5 = paint9;
                            }
                            int i19 = i6 * 2;
                            motionController.f11617f.c(dA, motionController.o, motionController.p, fArr4, i19);
                            if (viewOscillator != null) {
                                fArr4[i19] = viewOscillator.a(fMin) + fArr4[i19];
                            } else if (splineSet != null) {
                                fArr4[i19] = splineSet.a(fMin) + fArr4[i19];
                            }
                            if (viewOscillator2 != null) {
                                int i20 = i19 + 1;
                                fArr4[i20] = viewOscillator2.a(fMin) + fArr4[i20];
                            } else if (splineSet2 != null) {
                                int i21 = i19 + 1;
                                fArr4[i21] = splineSet2.a(fMin) + fArr4[i21];
                            }
                            i17 = i6 + 1;
                            i16 = i18;
                            paint7 = paint4;
                            motionPaths = motionPaths4;
                            i12 = i12;
                            paint9 = paint5;
                            f4 = 1.0f;
                        }
                        MotionPaths motionPaths5 = motionPaths;
                        Paint paint11 = paint7;
                        devModeDraw.a(canvas, iMax2, devModeDraw.f11636k, motionController);
                        paint10.setColor(-21965);
                        paint8.setColor(-2067046);
                        paint2 = paint9;
                        paint2.setColor(-2067046);
                        Paint paint12 = paint11;
                        paint12.setColor(-13391360);
                        int i22 = i12;
                        float f12 = -i22;
                        canvas.translate(f12, f12);
                        devModeDraw.a(canvas, iMax2, devModeDraw.f11636k, motionController);
                        char c2 = 5;
                        if (iMax2 == 5) {
                            float[] fArr5 = devModeDraw.f11635j;
                            devModeDraw.d.reset();
                            int i23 = 0;
                            while (i23 <= 50) {
                                char c3 = c2;
                                float[] fArr6 = fArr5;
                                motionController.f11620j[0].c(motionController.a(i23 / 50.0f, null), motionController.p);
                                int[] iArr2 = motionController.o;
                                double[] dArr3 = motionController.p;
                                MotionPaths motionPaths6 = motionPaths5;
                                float f13 = motionPaths6.f11651f;
                                float fCos = motionPaths6.g;
                                float f14 = motionPaths6.f11652h;
                                float f15 = motionPaths6.f11653i;
                                int i24 = i22;
                                MotionController motionController2 = motionController;
                                int i25 = 0;
                                while (true) {
                                    paint3 = paint12;
                                    if (i25 >= iArr2.length) {
                                        break;
                                    }
                                    int[] iArr3 = iArr2;
                                    float f16 = (float) dArr3[i25];
                                    int i26 = iArr3[i25];
                                    int i27 = i25;
                                    if (i26 == 1) {
                                        f13 = f16;
                                    } else if (i26 == 2) {
                                        fCos = f16;
                                    } else if (i26 == 3) {
                                        f14 = f16;
                                    } else if (i26 == 4) {
                                        f15 = f16;
                                    }
                                    i25 = i27 + 1;
                                    iArr2 = iArr3;
                                    paint12 = paint3;
                                }
                                if (motionPaths6.n != null) {
                                    double d2 = f13;
                                    double d3 = fCos;
                                    float fSin = (float) (((Math.sin(d3) * d2) + 0.0d) - ((double) (f14 / 2.0f)));
                                    fCos = (float) ((0.0d - (Math.cos(d3) * d2)) - ((double) (f15 / 2.0f)));
                                    f13 = fSin;
                                }
                                float f17 = f14 + f13;
                                float f18 = f15 + fCos;
                                Float.isNaN(Float.NaN);
                                Float.isNaN(Float.NaN);
                                float f19 = f13 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                float f20 = fCos + Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                float f21 = f17 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                float f22 = f18 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                fArr6[0] = f19;
                                fArr6[1] = f20;
                                fArr6[2] = f21;
                                fArr6[3] = f20;
                                fArr6[4] = f21;
                                fArr6[c3] = f22;
                                fArr6[6] = f19;
                                fArr6[7] = f22;
                                devModeDraw.d.moveTo(f19, f20);
                                devModeDraw.d.lineTo(fArr6[2], fArr6[3]);
                                devModeDraw.d.lineTo(fArr6[4], fArr6[c3]);
                                devModeDraw.d.lineTo(fArr6[6], fArr6[7]);
                                devModeDraw.d.close();
                                i23++;
                                motionPaths5 = motionPaths6;
                                fArr5 = fArr6;
                                c2 = c3;
                                motionController = motionController2;
                                paint12 = paint3;
                                i22 = i24;
                            }
                            i5 = i22;
                            paint = paint12;
                            paint10.setColor(1140850688);
                            canvas.translate(2.0f, 2.0f);
                            canvas.drawPath(devModeDraw.d, paint10);
                            canvas.translate(-2.0f, -2.0f);
                            paint10.setColor(-65536);
                            canvas.drawPath(devModeDraw.d, paint10);
                        } else {
                            i5 = i22;
                            paint = paint12;
                        }
                    } else {
                        i4 = i11;
                        paint = paint7;
                        paint2 = paint9;
                        i5 = i12;
                    }
                    paint9 = paint2;
                    it2 = it2;
                    i10 = i2;
                    i11 = i4;
                    paint7 = paint;
                    i12 = i5;
                }
            }
            canvas.restore();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(int i2, View view) {
        TouchResponse touchResponse;
        int i3;
        MotionScene motionScene = this.r;
        if (motionScene != null) {
            float f2 = this.t0;
            float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            float f4 = this.V / f2;
            float f5 = this.W / f2;
            MotionScene.Transition transition = motionScene.f11658c;
            if (transition == null || (touchResponse = transition.l) == null) {
                return;
            }
            float[] fArr = touchResponse.n;
            touchResponse.m = false;
            MotionLayout motionLayout = touchResponse.r;
            float progress = motionLayout.getProgress();
            touchResponse.r.w(touchResponse.d, progress, touchResponse.f11682h, touchResponse.g, fArr);
            float f6 = touchResponse.f11685k;
            float f7 = f6 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? (f4 * f6) / fArr[0] : (f5 * touchResponse.l) / fArr[1];
            if (!Float.isNaN(f7)) {
                progress += f7 / 3.0f;
            }
            if (progress == Call.Parameters.DEFAULT_CAMERA_ZOOM || progress == 1.0f || (i3 = touchResponse.f11679c) == 3) {
                return;
            }
            if (progress >= 0.5d) {
                f3 = 1.0f;
            }
            motionLayout.E(f3, f7, i3);
        }
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.r;
        if (motionScene == null) {
            return null;
        }
        SparseArray sparseArray = motionScene.g;
        int size = sparseArray.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = sparseArray.keyAt(i2);
        }
        return iArr;
    }

    public int getCurrentState() {
        return this.w;
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.r;
        if (motionScene == null) {
            return null;
        }
        return motionScene.d;
    }

    public DesignTool getDesignTool() {
        if (this.Q == null) {
            this.Q = new DesignTool(this);
        }
        return this.Q;
    }

    public int getEndState() {
        return this.x;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.F;
    }

    public MotionScene getScene() {
        return this.r;
    }

    public int getStartState() {
        return this.v;
    }

    public float getTargetPosition() {
        return this.H;
    }

    public Bundle getTransitionState() {
        if (this.u1 == null) {
            this.u1 = new StateCache();
        }
        StateCache stateCache = this.u1;
        MotionLayout motionLayout = MotionLayout.this;
        stateCache.d = motionLayout.x;
        stateCache.f11646c = motionLayout.v;
        stateCache.f11645b = motionLayout.getVelocity();
        stateCache.f11644a = motionLayout.getProgress();
        StateCache stateCache2 = this.u1;
        stateCache2.getClass();
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", stateCache2.f11644a);
        bundle.putFloat("motion.velocity", stateCache2.f11645b);
        bundle.putInt("motion.StartState", stateCache2.f11646c);
        bundle.putInt("motion.EndState", stateCache2.d);
        return bundle;
    }

    public long getTransitionTimeMs() {
        MotionScene motionScene = this.r;
        if (motionScene != null) {
            MotionScene.Transition transition = motionScene.f11658c;
            this.D = (transition != null ? transition.f11671h : motionScene.f11663j) / 1000.0f;
        }
        return (long) (this.D * 1000.0f);
    }

    public float getVelocity() {
        return this.u;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public final void h(int i2) {
        this.l = null;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void j(View view, View view2, int i2, int i3) {
        this.h0 = getNanoTime();
        this.t0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.V = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.W = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void k(final View view, int i2, int i3, int[] iArr, int i4) {
        MotionScene.Transition transition;
        boolean z;
        float f2;
        TouchResponse touchResponse;
        float f3;
        TouchResponse touchResponse2;
        TouchResponse touchResponse3;
        TouchResponse touchResponse4;
        int i5;
        MotionScene motionScene = this.r;
        if (motionScene == null || (transition = motionScene.f11658c) == null || (z = transition.o)) {
            return;
        }
        int i6 = -1;
        if (z || (touchResponse4 = transition.l) == null || (i5 = touchResponse4.f11680e) == -1 || view.getId() == i5) {
            MotionScene.Transition transition2 = motionScene.f11658c;
            if ((transition2 == null || (touchResponse3 = transition2.l) == null) ? false : touchResponse3.u) {
                TouchResponse touchResponse5 = transition.l;
                if (touchResponse5 != null && (touchResponse5.w & 4) != 0) {
                    i6 = i3;
                }
                float f4 = this.E;
                if ((f4 == 1.0f || f4 == Call.Parameters.DEFAULT_CAMERA_ZOOM) && view.canScrollVertically(i6)) {
                    return;
                }
            }
            TouchResponse touchResponse6 = transition.l;
            if (touchResponse6 == null || (touchResponse6.w & 1) == 0) {
                f2 = 0.0f;
            } else {
                float f5 = i2;
                float f6 = i3;
                MotionScene.Transition transition3 = motionScene.f11658c;
                if (transition3 == null || (touchResponse2 = transition3.l) == null) {
                    f2 = 0.0f;
                    f3 = 0.0f;
                } else {
                    float[] fArr = touchResponse2.n;
                    f2 = 0.0f;
                    touchResponse2.r.w(touchResponse2.d, touchResponse2.r.getProgress(), touchResponse2.f11682h, touchResponse2.g, fArr);
                    float f7 = touchResponse2.f11685k;
                    if (f7 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        if (fArr[0] == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            fArr[0] = 1.0E-7f;
                        }
                        f3 = (f5 * f7) / fArr[0];
                    } else {
                        if (fArr[1] == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            fArr[1] = 1.0E-7f;
                        }
                        f3 = (f6 * touchResponse2.l) / fArr[1];
                    }
                }
                float f8 = this.F;
                if ((f8 <= f2 && f3 < f2) || (f8 >= 1.0f && f3 > f2)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                        @Override // java.lang.Runnable
                        public void run() {
                            view.setNestedScrollingEnabled(true);
                        }
                    });
                    return;
                }
            }
            float f9 = this.E;
            long nanoTime = getNanoTime();
            float f10 = i2;
            this.V = f10;
            float f11 = i3;
            this.W = f11;
            this.t0 = (float) ((nanoTime - this.h0) * 1.0E-9d);
            this.h0 = nanoTime;
            MotionScene.Transition transition4 = motionScene.f11658c;
            if (transition4 != null && (touchResponse = transition4.l) != null) {
                float[] fArr2 = touchResponse.n;
                MotionLayout motionLayout = touchResponse.r;
                float progress = motionLayout.getProgress();
                if (!touchResponse.m) {
                    touchResponse.m = true;
                    motionLayout.setProgress(progress);
                }
                touchResponse.r.w(touchResponse.d, progress, touchResponse.f11682h, touchResponse.g, fArr2);
                if (Math.abs((touchResponse.l * fArr2[1]) + (touchResponse.f11685k * fArr2[0])) < 0.01d) {
                    fArr2[0] = 0.01f;
                    fArr2[1] = 0.01f;
                }
                float f12 = touchResponse.f11685k;
                float fMax = Math.max(Math.min(progress + (f12 != f2 ? (f10 * f12) / fArr2[0] : (f11 * touchResponse.l) / fArr2[1]), 1.0f), f2);
                if (fMax != motionLayout.getProgress()) {
                    motionLayout.setProgress(fMax);
                }
            }
            if (f9 != this.E) {
                iArr[0] = i2;
                iArr[1] = i3;
            }
            t(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.T = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void m(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        if (this.T || i2 != 0 || i3 != 0) {
            iArr[0] = iArr[0] + i4;
            iArr[1] = iArr[1] + i5;
        }
        this.T = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void n(View view, int i2, int i3, int i4, int i5, int i6) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean o(View view, View view2, int i2, int i3) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        MotionScene motionScene = this.r;
        return (motionScene == null || (transition = motionScene.f11658c) == null || (touchResponse = transition.l) == null || (touchResponse.w & 2) != 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        MotionScene.Transition transition;
        int i2;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            display.getRotation();
        }
        MotionScene motionScene = this.r;
        if (motionScene != null && (i2 = this.w) != -1) {
            ConstraintSet constraintSetB = motionScene.b(i2);
            MotionScene motionScene2 = this.r;
            SparseArray sparseArray = motionScene2.g;
            loop0: for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                int iKeyAt = sparseArray.keyAt(i3);
                SparseIntArray sparseIntArray = motionScene2.f11662i;
                int i4 = sparseIntArray.get(iKeyAt);
                int size = sparseIntArray.size();
                while (i4 > 0) {
                    if (i4 == iKeyAt) {
                        break loop0;
                    }
                    int i5 = size - 1;
                    if (size < 0) {
                        break loop0;
                    }
                    i4 = sparseIntArray.get(i4);
                    size = i5;
                }
                motionScene2.l(iKeyAt, this);
            }
            if (constraintSetB != null) {
                constraintSetB.c(this);
            }
            this.v = this.w;
        }
        z();
        StateCache stateCache = this.u1;
        if (stateCache != null) {
            if (this.x1) {
                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MotionLayout.this.u1.a();
                    }
                });
                return;
            } else {
                stateCache.a();
                return;
            }
        }
        MotionScene motionScene3 = this.r;
        if (motionScene3 == null || (transition = motionScene3.f11658c) == null || transition.n != 4) {
            return;
        }
        r(1.0f);
        this.v1 = null;
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    /* JADX WARN: Code duplicated, block: B:130:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:74:0x0115  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        TouchResponse touchResponse;
        int i2;
        RectF rectFB;
        MotionScene motionScene = this.r;
        if (motionScene == null || !this.A) {
            return false;
        }
        ViewTransitionController viewTransitionController = motionScene.q;
        if (viewTransitionController != null) {
            ArrayList<ViewTransition> arrayList = viewTransitionController.f11706b;
            MotionLayout motionLayout = viewTransitionController.f11705a;
            int currentState = motionLayout.getCurrentState();
            if (currentState == -1) {
                z = false;
            } else {
                if (viewTransitionController.f11707c == null) {
                    viewTransitionController.f11707c = new HashSet();
                    for (ViewTransition viewTransition : arrayList) {
                        int childCount = motionLayout.getChildCount();
                        for (int i3 = 0; i3 < childCount; i3++) {
                            View childAt = motionLayout.getChildAt(i3);
                            if (viewTransition.c(childAt)) {
                                childAt.getId();
                                viewTransitionController.f11707c.add(childAt);
                            }
                        }
                    }
                }
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                Rect rect = new Rect();
                int action = motionEvent.getAction();
                ArrayList arrayList2 = viewTransitionController.d;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    for (ViewTransition.Animate animate : viewTransitionController.d) {
                        Rect rect2 = animate.l;
                        if (action != 1) {
                            if (action == 2) {
                                animate.f11698c.f11614b.getHitRect(rect2);
                                if (!rect2.contains((int) x, (int) y) && !animate.f11701h) {
                                    animate.b();
                                }
                            }
                        } else if (!animate.f11701h) {
                            animate.b();
                        }
                    }
                }
                z = false;
                if (action == 0 || action == 1) {
                    MotionScene motionScene2 = motionLayout.r;
                    ConstraintSet constraintSetB = motionScene2 == null ? null : motionScene2.b(currentState);
                    for (ViewTransition viewTransition2 : arrayList) {
                        int i4 = viewTransition2.f11687b;
                        if (i4 == 1) {
                            if (action == 0) {
                                for (View view : viewTransitionController.f11707c) {
                                    if (viewTransition2.c(view)) {
                                        view.getHitRect(rect);
                                        if (rect.contains((int) x, (int) y)) {
                                            viewTransition2.a(viewTransitionController, viewTransitionController.f11705a, currentState, constraintSetB, view);
                                        }
                                    }
                                }
                            }
                        } else if (i4 == 2) {
                            if (action == 1) {
                                while (r2.hasNext()) {
                                    if (viewTransition2.c(view)) {
                                        view.getHitRect(rect);
                                        if (rect.contains((int) x, (int) y)) {
                                            viewTransition2.a(viewTransitionController, viewTransitionController.f11705a, currentState, constraintSetB, view);
                                        }
                                    }
                                }
                            }
                        } else if (i4 == 3 && action == 0) {
                            while (r2.hasNext()) {
                                if (viewTransition2.c(view)) {
                                    view.getHitRect(rect);
                                    if (rect.contains((int) x, (int) y)) {
                                        viewTransition2.a(viewTransitionController, viewTransitionController.f11705a, currentState, constraintSetB, view);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            z = false;
        }
        MotionScene.Transition transition = this.r.f11658c;
        if (transition == null || transition.o || (touchResponse = transition.l) == null) {
            return z;
        }
        if ((motionEvent.getAction() == 0 && (rectFB = touchResponse.b(this, new RectF())) != null && !rectFB.contains(motionEvent.getX(), motionEvent.getY())) || (i2 = touchResponse.f11680e) == -1) {
            return z;
        }
        View view2 = this.C1;
        if (view2 == null || view2.getId() != i2) {
            this.C1 = findViewById(i2);
        }
        View view3 = this.C1;
        if (view3 == null) {
            return z;
        }
        float left = view3.getLeft();
        float top = this.C1.getTop();
        float right = this.C1.getRight();
        float bottom = this.C1.getBottom();
        RectF rectF = this.B1;
        rectF.set(left, top, right, bottom);
        return (!rectF.contains(motionEvent.getX(), motionEvent.getY()) || x((float) this.C1.getLeft(), (float) this.C1.getTop(), this.C1, motionEvent)) ? z : onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        this.t1 = true;
        try {
            if (this.r == null) {
                super.onLayout(z, i2, i3, i4, i5);
                return;
            }
            int i6 = i4 - i2;
            int i7 = i5 - i3;
            if (this.R != i6 || this.S != i7) {
                B();
                t(true);
            }
            this.R = i6;
            this.S = i7;
        } finally {
            this.t1 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        boolean z;
        if (this.r == null) {
            super.onMeasure(i2, i3);
            return;
        }
        boolean z2 = true;
        boolean z3 = (this.y == i2 && this.z == i3) ? false : true;
        if (this.A1) {
            this.A1 = false;
            z();
            A();
            z3 = true;
        }
        if (this.f11728i) {
            z3 = true;
        }
        this.y = i2;
        this.z = i3;
        int iG = this.r.g();
        MotionScene.Transition transition = this.r.f11658c;
        int i4 = transition == null ? -1 : transition.f11668c;
        Model model = this.z1;
        if ((!z3 && iG == model.f11640e && i4 == model.f11641f) || this.v == -1) {
            if (z3) {
                super.onMeasure(i2, i3);
            }
            z = true;
        } else {
            super.onMeasure(i2, i3);
            model.e(this.r.b(iG), this.r.b(i4));
            model.f();
            model.f11640e = iG;
            model.f11641f = i4;
            z = false;
        }
        if (this.k1 || z) {
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int paddingRight = getPaddingRight() + getPaddingLeft();
            ConstraintWidgetContainer constraintWidgetContainer = this.d;
            int iV = constraintWidgetContainer.v() + paddingRight;
            int iP = constraintWidgetContainer.p() + paddingBottom;
            int i5 = this.p1;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                int i6 = this.l1;
                iV = (int) ((this.r1 * (this.n1 - i6)) + i6);
                requestLayout();
            }
            int i7 = this.q1;
            if (i7 == Integer.MIN_VALUE || i7 == 0) {
                int i8 = this.m1;
                iP = (int) ((this.r1 * (this.o1 - i8)) + i8);
                requestLayout();
            }
            setMeasuredDimension(iV, iP);
        }
        float fSignum = Math.signum(this.H - this.F);
        long nanoTime = getNanoTime();
        MotionInterpolator motionInterpolator = this.s;
        float interpolation = this.F + (!(motionInterpolator instanceof StopLogic) ? (((nanoTime - this.G) * fSignum) * 1.0E-9f) / this.D : 0.0f);
        if (this.I) {
            interpolation = this.H;
        }
        if ((fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM || interpolation < this.H) && (fSignum > Call.Parameters.DEFAULT_CAMERA_ZOOM || interpolation > this.H)) {
            z2 = false;
        } else {
            interpolation = this.H;
        }
        if (motionInterpolator != null && !z2) {
            interpolation = this.N ? motionInterpolator.getInterpolation((nanoTime - this.C) * 1.0E-9f) : motionInterpolator.getInterpolation(interpolation);
        }
        if ((fSignum > Call.Parameters.DEFAULT_CAMERA_ZOOM && interpolation >= this.H) || (fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM && interpolation <= this.H)) {
            interpolation = this.H;
        }
        this.r1 = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator = this.t;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(interpolation);
        }
        float f2 = interpolation;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            MotionController motionController = (MotionController) this.B.get(childAt);
            if (motionController != null) {
                motionController.d(f2, nanoTime2, childAt, this.s1);
            }
        }
        if (this.k1) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        TouchResponse touchResponse;
        MotionScene motionScene = this.r;
        if (motionScene != null) {
            boolean zF = f();
            motionScene.p = zF;
            MotionScene.Transition transition = motionScene.f11658c;
            if (transition == null || (touchResponse = transition.l) == null) {
                return;
            }
            touchResponse.c(zF);
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0224  */
    /* JADX WARN: Code duplicated, block: B:112:0x022a  */
    /* JADX WARN: Code duplicated, block: B:114:0x022e  */
    /* JADX WARN: Code duplicated, block: B:118:0x0238  */
    /* JADX WARN: Code duplicated, block: B:120:0x0247  */
    /* JADX WARN: Code duplicated, block: B:122:0x0250  */
    /* JADX WARN: Code duplicated, block: B:125:0x0259  */
    /* JADX WARN: Code duplicated, block: B:127:0x0260  */
    /* JADX WARN: Code duplicated, block: B:130:0x0265  */
    /* JADX WARN: Code duplicated, block: B:132:0x027e  */
    /* JADX WARN: Code duplicated, block: B:133:0x02af  */
    /* JADX WARN: Code duplicated, block: B:135:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:141:0x0335  */
    /* JADX WARN: Code duplicated, block: B:143:0x033a  */
    /* JADX WARN: Code duplicated, block: B:145:0x0340  */
    /* JADX WARN: Code duplicated, block: B:148:0x034c  */
    /* JADX WARN: Code duplicated, block: B:150:0x0350  */
    /* JADX WARN: Code duplicated, block: B:152:0x0358  */
    /* JADX WARN: Code duplicated, block: B:154:0x0360  */
    /* JADX WARN: Code duplicated, block: B:157:0x0367  */
    /* JADX WARN: Code duplicated, block: B:158:0x0383  */
    /* JADX WARN: Code duplicated, block: B:161:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:163:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:165:0x03ae A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:166:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:167:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:171:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:174:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:175:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:178:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:179:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:181:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:183:0x0409  */
    /* JADX WARN: Code duplicated, block: B:185:0x0410  */
    /* JADX WARN: Code duplicated, block: B:188:0x0419  */
    /* JADX WARN: Code duplicated, block: B:189:0x041f  */
    /* JADX WARN: Code duplicated, block: B:192:0x0424  */
    /* JADX WARN: Code duplicated, block: B:193:0x042a  */
    /* JADX WARN: Code duplicated, block: B:196:0x0442  */
    /* JADX WARN: Code duplicated, block: B:198:0x0470  */
    /* JADX WARN: Code duplicated, block: B:200:0x0475  */
    /* JADX WARN: Code duplicated, block: B:201:0x04ac A[PHI: r4 r8
      0x04ac: PHI (r4v96 float) = (r4v88 float), (r4v125 float) binds: [B:199:0x0473, B:197:0x0468] A[DONT_GENERATE, DONT_INLINE]
      0x04ac: PHI (r8v9 float) = (r8v4 float), (r8v16 float) binds: [B:199:0x0473, B:197:0x0468] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:203:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:204:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:207:0x0504  */
    /* JADX WARN: Code duplicated, block: B:209:0x0512  */
    /* JADX WARN: Code duplicated, block: B:212:0x0518  */
    /* JADX WARN: Code duplicated, block: B:237:0x056c  */
    /* JADX WARN: Code duplicated, block: B:239:0x0572  */
    /* JADX WARN: Code duplicated, block: B:241:0x0576  */
    /* JADX WARN: Code duplicated, block: B:242:0x057d  */
    /* JADX WARN: Code duplicated, block: B:243:0x058e  */
    /* JADX WARN: Code duplicated, block: B:245:0x05a0  */
    /* JADX WARN: Code duplicated, block: B:248:0x05a9  */
    /* JADX WARN: Code duplicated, block: B:250:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:253:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:255:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:257:0x05d6  */
    /* JADX WARN: Code duplicated, block: B:259:0x05de  */
    /* JADX WARN: Code duplicated, block: B:262:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:263:0x05fd  */
    /* JADX WARN: Code duplicated, block: B:266:0x0638  */
    /* JADX WARN: Code duplicated, block: B:269:0x0643  */
    /* JADX WARN: Code duplicated, block: B:270:0x0647  */
    /* JADX WARN: Code duplicated, block: B:273:0x065a  */
    /* JADX WARN: Code duplicated, block: B:276:0x0662  */
    /* JADX WARN: Code duplicated, block: B:279:0x0671  */
    /* JADX WARN: Code duplicated, block: B:281:0x0677  */
    /* JADX WARN: Code duplicated, block: B:283:0x067d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:284:0x067f  */
    /* JADX WARN: Code duplicated, block: B:285:0x0681  */
    /* JADX WARN: Code duplicated, block: B:289:0x068c  */
    /* JADX WARN: Code duplicated, block: B:292:0x0693  */
    /* JADX WARN: Code duplicated, block: B:293:0x0698  */
    /* JADX WARN: Code duplicated, block: B:296:0x069d  */
    /* JADX WARN: Code duplicated, block: B:297:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:300:0x06aa  */
    /* JADX WARN: Code duplicated, block: B:301:0x06b0  */
    /* JADX WARN: Code duplicated, block: B:303:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:305:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:307:0x06d3  */
    /* JADX WARN: Code duplicated, block: B:310:0x06da  */
    /* JADX WARN: Code duplicated, block: B:311:0x06e0  */
    /* JADX WARN: Code duplicated, block: B:314:0x06e5  */
    /* JADX WARN: Code duplicated, block: B:315:0x06eb  */
    /* JADX WARN: Code duplicated, block: B:318:0x06f7  */
    /* JADX WARN: Code duplicated, block: B:319:0x0703  */
    /* JADX WARN: Code duplicated, block: B:322:0x072a  */
    /* JADX WARN: Code duplicated, block: B:323:0x072c  */
    /* JADX WARN: Code duplicated, block: B:326:0x0734  */
    /* JADX WARN: Code duplicated, block: B:328:0x073a  */
    /* JADX WARN: Code duplicated, block: B:331:0x0740  */
    /* JADX WARN: Code duplicated, block: B:355:0x078c  */
    /* JADX WARN: Code duplicated, block: B:357:0x0792  */
    /* JADX WARN: Code duplicated, block: B:359:0x0798  */
    /* JADX WARN: Code duplicated, block: B:360:0x079e  */
    /* JADX WARN: Code duplicated, block: B:363:0x07c0  */
    /* JADX WARN: Code duplicated, block: B:367:0x07ca  */
    /* JADX WARN: Code duplicated, block: B:368:0x07d1  */
    /* JADX WARN: Code duplicated, block: B:371:0x07d9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v24 */
    /* JADX WARN: Type inference failed for: r18v25 */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        MotionScene.Transition transition;
        MotionTracker motionTracker;
        MyTracker myTracker;
        VelocityTracker velocityTracker;
        MotionTracker motionTracker2;
        int i2;
        TouchResponse touchResponse;
        float[] fArr;
        MotionTracker motionTracker3;
        MotionLayout motionLayout;
        MyTracker myTracker2;
        VelocityTracker velocityTracker2;
        int action;
        VelocityTracker velocityTracker3;
        VelocityTracker velocityTracker4;
        float xVelocity;
        VelocityTracker velocityTracker5;
        float yVelocity;
        float progress;
        int i3;
        MotionLayout motionLayout2;
        char c2;
        char c3;
        float f2;
        float f3;
        float f4;
        float fAbs;
        float f5;
        int i4;
        float rawY;
        float rawX;
        float progress2;
        int i5;
        MotionLayout motionLayout3;
        char c4;
        char c5;
        float f6;
        float fMax;
        float progress3;
        boolean z;
        VelocityTracker velocityTracker6;
        VelocityTracker velocityTracker7;
        float xVelocity2;
        VelocityTracker velocityTracker8;
        float yVelocity2;
        float f7;
        int[] iArr;
        MyTracker myTracker3;
        VelocityTracker velocityTracker9;
        int action2;
        VelocityTracker velocityTracker10;
        VelocityTracker velocityTracker11;
        float xVelocity3;
        VelocityTracker velocityTracker12;
        float yVelocity3;
        float progress4;
        int i6;
        int i7;
        float right;
        float f8;
        int top;
        int bottom;
        float rawY2;
        int i8;
        float f9;
        float degrees;
        float f10;
        int i9;
        float width;
        float height;
        int i10;
        int i11;
        View viewFindViewById;
        float rawX2;
        float rawY3;
        double dAtan2;
        float fAtan2;
        float f11;
        float progress5;
        boolean z2;
        int i12;
        float f12;
        float[] fArr2;
        ?? r18;
        float fMax2;
        float progress6;
        boolean z3;
        VelocityTracker velocityTracker13;
        VelocityTracker velocityTracker14;
        float xVelocity4;
        VelocityTracker velocityTracker15;
        float yVelocity4;
        MotionEvent motionEvent2;
        MotionScene.Transition transition2;
        int iB;
        Iterator it;
        MotionScene motionScene = this.r;
        if (motionScene == null || !this.A || !motionScene.n()) {
            return super.onTouchEvent(motionEvent);
        }
        MotionScene motionScene2 = this.r;
        MotionScene.Transition transition3 = motionScene2.f11658c;
        if (transition3 != null && transition3.o) {
            return super.onTouchEvent(motionEvent);
        }
        int currentState = getCurrentState();
        MotionLayout motionLayout4 = motionScene2.f11656a;
        RectF rectF = new RectF();
        if (motionScene2.o == null) {
            motionLayout4.getClass();
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            MyTracker myTracker4 = MyTracker.f11642b;
            myTracker4.f11643a = velocityTrackerObtain;
            motionScene2.o = myTracker4;
        }
        VelocityTracker velocityTracker16 = ((MyTracker) motionScene2.o).f11643a;
        if (velocityTracker16 != null) {
            velocityTracker16.addMovement(motionEvent);
        }
        if (currentState != -1) {
            int action3 = motionEvent.getAction();
            if (action3 == 0) {
                motionScene2.r = motionEvent.getRawX();
                motionScene2.s = motionEvent.getRawY();
                motionScene2.l = motionEvent;
                motionScene2.m = false;
                TouchResponse touchResponse2 = motionScene2.f11658c.l;
                if (touchResponse2 != null) {
                    RectF rectFA = touchResponse2.a(motionLayout4, rectF);
                    if (rectFA == null || rectFA.contains(motionScene2.l.getX(), motionScene2.l.getY())) {
                        RectF rectFB = motionScene2.f11658c.l.b(motionLayout4, rectF);
                        if (rectFB == null || rectFB.contains(motionScene2.l.getX(), motionScene2.l.getY())) {
                            motionScene2.n = false;
                        } else {
                            motionScene2.n = true;
                        }
                        TouchResponse touchResponse3 = motionScene2.f11658c.l;
                        float f13 = motionScene2.r;
                        float f14 = motionScene2.s;
                        touchResponse3.p = f13;
                        touchResponse3.q = f14;
                    } else {
                        motionScene2.l = null;
                        motionScene2.m = true;
                    }
                }
            } else if (action3 == 2 && !motionScene2.m) {
                float rawY4 = motionEvent.getRawY() - motionScene2.s;
                float rawX3 = motionEvent.getRawX() - motionScene2.r;
                if ((rawX3 != 0.0d || rawY4 != 0.0d) && (motionEvent2 = motionScene2.l) != null) {
                    if (currentState != -1) {
                        StateSet stateSet = motionScene2.f11657b;
                        if (stateSet == null || (iB = stateSet.b(currentState)) == -1) {
                            iB = currentState;
                        }
                        ArrayList arrayList = new ArrayList();
                        for (MotionScene.Transition transition4 : motionScene2.d) {
                            if (transition4.d == iB || transition4.f11668c == iB) {
                                arrayList.add(transition4);
                            }
                        }
                        RectF rectF2 = new RectF();
                        Iterator it2 = arrayList.iterator();
                        float f15 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        transition2 = null;
                        while (it2.hasNext()) {
                            MotionScene.Transition transition5 = (MotionScene.Transition) it2.next();
                            if (transition5.o) {
                                it = it2;
                            } else {
                                TouchResponse touchResponse4 = transition5.l;
                                if (touchResponse4 != null) {
                                    touchResponse4.c(motionScene2.p);
                                    RectF rectFB2 = transition5.l.b(motionLayout4, rectF2);
                                    if (rectFB2 != null) {
                                        it = it2;
                                        if (!rectFB2.contains(motionEvent2.getX(), motionEvent2.getY())) {
                                        }
                                    } else {
                                        it = it2;
                                    }
                                    RectF rectFA2 = transition5.l.a(motionLayout4, rectF2);
                                    if (rectFA2 == null || rectFA2.contains(motionEvent2.getX(), motionEvent2.getY())) {
                                        TouchResponse touchResponse5 = transition5.l;
                                        float fAtan3 = (touchResponse5.l * rawY4) + (touchResponse5.f11685k * rawX3);
                                        if (touchResponse5.f11684j) {
                                            float x = motionEvent2.getX();
                                            transition5.l.getClass();
                                            float f16 = x - 0.5f;
                                            float y = motionEvent2.getY();
                                            transition5.l.getClass();
                                            float f17 = y - 0.5f;
                                            fAtan3 = ((float) (Math.atan2(rawY4 + f17, rawX3 + f16) - Math.atan2(f16, f17))) * 10.0f;
                                        }
                                        float f18 = fAtan3 * (transition5.f11668c == currentState ? -1.0f : 1.1f);
                                        if (f18 > f15) {
                                            f15 = f18;
                                            transition2 = transition5;
                                        }
                                        it2 = it;
                                        rectF2 = rectF2;
                                        rawY4 = rawY4;
                                        rawX3 = rawX3;
                                    }
                                } else {
                                    it = it2;
                                    rectF2 = rectF2;
                                    f15 = f15;
                                    rawY4 = rawY4;
                                    rawX3 = rawX3;
                                }
                                f15 = f15;
                                it2 = it;
                                rectF2 = rectF2;
                                rawY4 = rawY4;
                                rawX3 = rawX3;
                            }
                            it2 = it;
                        }
                    } else {
                        transition2 = motionScene2.f11658c;
                    }
                    if (transition2 != null) {
                        setTransition(transition2);
                        RectF rectFB3 = motionScene2.f11658c.l.b(motionLayout4, rectF);
                        motionScene2.n = (rectFB3 == null || rectFB3.contains(motionScene2.l.getX(), motionScene2.l.getY())) ? false : true;
                        TouchResponse touchResponse6 = motionScene2.f11658c.l;
                        float f19 = motionScene2.r;
                        float f20 = motionScene2.s;
                        touchResponse6.p = f19;
                        touchResponse6.q = f20;
                        touchResponse6.m = false;
                    }
                    if (!motionScene2.m) {
                        transition = motionScene2.f11658c;
                        if (transition != null) {
                            fArr = touchResponse.n;
                            if (!motionScene2.n) {
                                motionTracker3 = motionScene2.o;
                                motionLayout = touchResponse.r;
                                if (touchResponse.f11684j) {
                                    iArr = touchResponse.o;
                                    myTracker3 = (MyTracker) motionTracker3;
                                    velocityTracker9 = myTracker3.f11643a;
                                    if (velocityTracker9 != null) {
                                        velocityTracker9.addMovement(motionEvent);
                                    }
                                    action2 = motionEvent.getAction();
                                    if (action2 == 0) {
                                        touchResponse.p = motionEvent.getRawX();
                                        touchResponse.q = motionEvent.getRawY();
                                        touchResponse.m = false;
                                    } else if (action2 == 1) {
                                        touchResponse.m = false;
                                        velocityTracker10 = myTracker3.f11643a;
                                        if (velocityTracker10 != null) {
                                            velocityTracker10.computeCurrentVelocity(16);
                                        }
                                        velocityTracker11 = myTracker3.f11643a;
                                        if (velocityTracker11 != null) {
                                            xVelocity3 = velocityTracker11.getXVelocity();
                                        } else {
                                            xVelocity3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        velocityTracker12 = myTracker3.f11643a;
                                        if (velocityTracker12 != null) {
                                            yVelocity3 = velocityTracker12.getYVelocity();
                                        } else {
                                            yVelocity3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        progress4 = motionLayout.getProgress();
                                        float width2 = motionLayout.getWidth() / 2.0f;
                                        float height2 = motionLayout.getHeight() / 2.0f;
                                        i6 = touchResponse.f11683i;
                                        if (i6 != -1) {
                                            View viewFindViewById2 = motionLayout.findViewById(i6);
                                            motionLayout.getLocationOnScreen(iArr);
                                            right = iArr[0] + ((viewFindViewById2.getRight() + viewFindViewById2.getLeft()) / 2.0f);
                                            f8 = iArr[1];
                                            top = viewFindViewById2.getTop();
                                            bottom = viewFindViewById2.getBottom();
                                        } else {
                                            i7 = touchResponse.d;
                                            if (i7 != -1) {
                                                View viewFindViewById3 = motionLayout.findViewById(((MotionController) motionLayout.B.get(motionLayout.findViewById(i7))).f11617f.l);
                                                motionLayout.getLocationOnScreen(iArr);
                                                right = iArr[0] + ((viewFindViewById3.getRight() + viewFindViewById3.getLeft()) / 2.0f);
                                                f8 = iArr[1];
                                                top = viewFindViewById3.getTop();
                                                bottom = viewFindViewById3.getBottom();
                                            } else {
                                                float rawX4 = motionEvent.getRawX() - width2;
                                                rawY2 = motionEvent.getRawY() - height2;
                                                float f21 = yVelocity3;
                                                double degrees2 = Math.toDegrees(Math.atan2(rawY2, rawX4));
                                                i8 = touchResponse.d;
                                                if (i8 != -1) {
                                                    f9 = rawY2;
                                                    touchResponse.r.w(i8, progress4, touchResponse.f11682h, touchResponse.g, fArr);
                                                    fArr[1] = (float) Math.toDegrees(fArr[1]);
                                                } else {
                                                    f9 = rawY2;
                                                    fArr[1] = 360.0f;
                                                }
                                                degrees = ((float) (Math.toDegrees(Math.atan2(f21 + f9, xVelocity3 + rawX4)) - degrees2)) * 62.5f;
                                                if (Float.isNaN(degrees)) {
                                                    f10 = progress4;
                                                } else {
                                                    f10 = (((degrees * 3.0f) * touchResponse.v) / fArr[1]) + progress4;
                                                }
                                                if (f10 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                    if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                                        motionLayout.setState(TransitionState.FINISHED);
                                                    } else {
                                                        motionLayout.setState(TransitionState.FINISHED);
                                                    }
                                                } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                                    motionLayout.setState(TransitionState.FINISHED);
                                                } else {
                                                    motionLayout.setState(TransitionState.FINISHED);
                                                }
                                            }
                                        }
                                        height2 = ((bottom + top) / 2.0f) + f8;
                                        width2 = right;
                                        float rawX5 = motionEvent.getRawX() - width2;
                                        rawY2 = motionEvent.getRawY() - height2;
                                        float f22 = yVelocity3;
                                        double degrees3 = Math.toDegrees(Math.atan2(rawY2, rawX5));
                                        i8 = touchResponse.d;
                                        if (i8 != -1) {
                                            f9 = rawY2;
                                            touchResponse.r.w(i8, progress4, touchResponse.f11682h, touchResponse.g, fArr);
                                            fArr[1] = (float) Math.toDegrees(fArr[1]);
                                        } else {
                                            f9 = rawY2;
                                            fArr[1] = 360.0f;
                                        }
                                        degrees = ((float) (Math.toDegrees(Math.atan2(f22 + f9, xVelocity3 + rawX5)) - degrees3)) * 62.5f;
                                        if (Float.isNaN(degrees)) {
                                            f10 = (((degrees * 3.0f) * touchResponse.v) / fArr[1]) + progress4;
                                        } else {
                                            f10 = progress4;
                                        }
                                        if (f10 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                                motionLayout.setState(TransitionState.FINISHED);
                                            } else {
                                                motionLayout.setState(TransitionState.FINISHED);
                                            }
                                        } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                            motionLayout.setState(TransitionState.FINISHED);
                                        } else {
                                            motionLayout.setState(TransitionState.FINISHED);
                                        }
                                    } else if (action2 == 2) {
                                        motionEvent.getRawY();
                                        motionEvent.getRawX();
                                        width = motionLayout.getWidth() / 2.0f;
                                        height = motionLayout.getHeight() / 2.0f;
                                        i10 = touchResponse.f11683i;
                                        if (i10 != -1) {
                                            View viewFindViewById4 = motionLayout.findViewById(i10);
                                            motionLayout.getLocationOnScreen(iArr);
                                            float right2 = iArr[0] + ((viewFindViewById4.getRight() + viewFindViewById4.getLeft()) / 2.0f);
                                            height = ((viewFindViewById4.getBottom() + viewFindViewById4.getTop()) / 2.0f) + iArr[1];
                                            width = right2;
                                        } else {
                                            i11 = touchResponse.d;
                                            if (i11 != -1) {
                                                motionLayout.getLocationOnScreen(iArr);
                                                width = iArr[0] + ((viewFindViewById.getRight() + viewFindViewById.getLeft()) / 2.0f);
                                                height = ((viewFindViewById.getBottom() + viewFindViewById.getTop()) / 2.0f) + iArr[1];
                                            }
                                        }
                                        rawX2 = motionEvent.getRawX() - width;
                                        rawY3 = motionEvent.getRawY() - height;
                                        dAtan2 = Math.atan2(motionEvent.getRawY() - height, motionEvent.getRawX() - width);
                                        fAtan2 = (float) (((dAtan2 - Math.atan2(touchResponse.q - height, touchResponse.p - width)) * 180.0d) / 3.141592653589793d);
                                        if (fAtan2 > 330.0f) {
                                            fAtan2 -= 360.0f;
                                        } else if (fAtan2 < -330.0f) {
                                            fAtan2 += 360.0f;
                                        }
                                        f11 = fAtan2;
                                        if (Math.abs(f11) <= 0.01d) {
                                            progress5 = motionLayout.getProgress();
                                            if (touchResponse.m) {
                                                z2 = true;
                                            } else {
                                                z2 = true;
                                                touchResponse.m = true;
                                                motionLayout.setProgress(progress5);
                                            }
                                            i12 = touchResponse.d;
                                            if (i12 != -1) {
                                                boolean z4 = z2;
                                                f12 = rawY3;
                                                fArr2 = fArr;
                                                touchResponse.r.w(i12, progress5, touchResponse.f11682h, touchResponse.g, fArr2);
                                                fArr2[z4 ? 1 : 0] = (float) Math.toDegrees(fArr2[z4 ? 1 : 0]);
                                                r18 = z4;
                                            } else {
                                                boolean z5 = z2;
                                                f12 = rawY3;
                                                fArr2 = fArr;
                                                fArr2[z5 ? 1 : 0] = 360.0f;
                                                r18 = z5;
                                            }
                                            fMax2 = Math.max(Math.min(((f11 * touchResponse.v) / fArr2[r18]) + progress5, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                            progress6 = motionLayout.getProgress();
                                            if (fMax2 != progress6) {
                                                if (progress6 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                    if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    motionLayout.s(z3);
                                                } else {
                                                    if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    motionLayout.s(z3);
                                                }
                                                motionLayout.setProgress(fMax2);
                                                velocityTracker13 = myTracker3.f11643a;
                                                if (velocityTracker13 != null) {
                                                    velocityTracker13.computeCurrentVelocity(1000);
                                                }
                                                velocityTracker14 = myTracker3.f11643a;
                                                if (velocityTracker14 != null) {
                                                    xVelocity4 = velocityTracker14.getXVelocity();
                                                } else {
                                                    xVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                }
                                                velocityTracker15 = myTracker3.f11643a;
                                                if (velocityTracker15 != null) {
                                                    yVelocity4 = velocityTracker15.getYVelocity();
                                                } else {
                                                    yVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                }
                                                double d = yVelocity4;
                                                double d2 = xVelocity4;
                                                motionLayout.u = (float) Math.toDegrees((float) ((Math.sin(Math.atan2(d, d2) - dAtan2) * Math.hypot(d, d2)) / Math.hypot(rawX2, f12)));
                                            } else {
                                                motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                            }
                                            touchResponse.p = motionEvent.getRawX();
                                            touchResponse.q = motionEvent.getRawY();
                                        } else {
                                            progress5 = motionLayout.getProgress();
                                            if (touchResponse.m) {
                                                z2 = true;
                                                touchResponse.m = true;
                                                motionLayout.setProgress(progress5);
                                            } else {
                                                z2 = true;
                                            }
                                            i12 = touchResponse.d;
                                            if (i12 != -1) {
                                                boolean z6 = z2;
                                                f12 = rawY3;
                                                fArr2 = fArr;
                                                touchResponse.r.w(i12, progress5, touchResponse.f11682h, touchResponse.g, fArr2);
                                                fArr2[z6 ? 1 : 0] = (float) Math.toDegrees(fArr2[z6 ? 1 : 0]);
                                                r18 = z6;
                                            } else {
                                                boolean z7 = z2;
                                                f12 = rawY3;
                                                fArr2 = fArr;
                                                fArr2[z7 ? 1 : 0] = 360.0f;
                                                r18 = z7;
                                            }
                                            fMax2 = Math.max(Math.min(((f11 * touchResponse.v) / fArr2[r18]) + progress5, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                            progress6 = motionLayout.getProgress();
                                            if (fMax2 != progress6) {
                                                if (progress6 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                    if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    motionLayout.s(z3);
                                                } else {
                                                    if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    motionLayout.s(z3);
                                                }
                                                motionLayout.setProgress(fMax2);
                                                velocityTracker13 = myTracker3.f11643a;
                                                if (velocityTracker13 != null) {
                                                    velocityTracker13.computeCurrentVelocity(1000);
                                                }
                                                velocityTracker14 = myTracker3.f11643a;
                                                if (velocityTracker14 != null) {
                                                    xVelocity4 = velocityTracker14.getXVelocity();
                                                } else {
                                                    xVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                }
                                                velocityTracker15 = myTracker3.f11643a;
                                                if (velocityTracker15 != null) {
                                                    yVelocity4 = velocityTracker15.getYVelocity();
                                                } else {
                                                    yVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                }
                                                double d3 = yVelocity4;
                                                double d4 = xVelocity4;
                                                motionLayout.u = (float) Math.toDegrees((float) ((Math.sin(Math.atan2(d3, d4) - dAtan2) * Math.hypot(d3, d4)) / Math.hypot(rawX2, f12)));
                                            } else {
                                                motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                            }
                                            touchResponse.p = motionEvent.getRawX();
                                            touchResponse.q = motionEvent.getRawY();
                                        }
                                    }
                                } else {
                                    myTracker2 = (MyTracker) motionTracker3;
                                    velocityTracker2 = myTracker2.f11643a;
                                    if (velocityTracker2 != null) {
                                        velocityTracker2.addMovement(motionEvent);
                                    }
                                    action = motionEvent.getAction();
                                    if (action == 0) {
                                        touchResponse.p = motionEvent.getRawX();
                                        touchResponse.q = motionEvent.getRawY();
                                        touchResponse.m = false;
                                    } else if (action == 1) {
                                        touchResponse.m = false;
                                        velocityTracker3 = myTracker2.f11643a;
                                        if (velocityTracker3 != null) {
                                            velocityTracker3.computeCurrentVelocity(1000);
                                        }
                                        velocityTracker4 = myTracker2.f11643a;
                                        if (velocityTracker4 != null) {
                                            xVelocity = velocityTracker4.getXVelocity();
                                        } else {
                                            xVelocity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        velocityTracker5 = myTracker2.f11643a;
                                        if (velocityTracker5 != null) {
                                            yVelocity = velocityTracker5.getYVelocity();
                                        } else {
                                            yVelocity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        progress = motionLayout.getProgress();
                                        i3 = touchResponse.d;
                                        motionLayout2 = touchResponse.r;
                                        if (i3 != -1) {
                                            motionLayout2.w(i3, progress, touchResponse.f11682h, touchResponse.g, fArr);
                                            c2 = 1;
                                            c3 = 0;
                                        } else {
                                            float fMin = Math.min(motionLayout2.getWidth(), motionLayout.getHeight());
                                            c2 = 1;
                                            fArr[1] = touchResponse.l * fMin;
                                            c3 = 0;
                                            fArr[0] = fMin * touchResponse.f11685k;
                                        }
                                        f2 = touchResponse.f11685k;
                                        f3 = fArr[c3];
                                        f4 = fArr[c2];
                                        if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            fAbs = xVelocity / f3;
                                        } else {
                                            fAbs = yVelocity / f4;
                                        }
                                        if (Float.isNaN(fAbs)) {
                                            f5 = progress;
                                        } else {
                                            f5 = (fAbs / 3.0f) + progress;
                                        }
                                        if (f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f5) {
                                                motionLayout.setState(TransitionState.FINISHED);
                                            } else {
                                                motionLayout.setState(TransitionState.FINISHED);
                                            }
                                        } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f5) {
                                            motionLayout.setState(TransitionState.FINISHED);
                                        } else {
                                            motionLayout.setState(TransitionState.FINISHED);
                                        }
                                    } else if (action == 2) {
                                        rawY = motionEvent.getRawY() - touchResponse.q;
                                        rawX = motionEvent.getRawX() - touchResponse.p;
                                        if (Math.abs((touchResponse.l * rawY) + (touchResponse.f11685k * rawX)) <= touchResponse.x) {
                                            progress2 = motionLayout.getProgress();
                                            if (!touchResponse.m) {
                                                touchResponse.m = true;
                                                motionLayout.setProgress(progress2);
                                            }
                                            i5 = touchResponse.d;
                                            motionLayout3 = touchResponse.r;
                                            if (i5 != -1) {
                                                motionLayout3.w(i5, progress2, touchResponse.f11682h, touchResponse.g, fArr);
                                                c4 = 1;
                                                c5 = 0;
                                            } else {
                                                float fMin2 = Math.min(motionLayout3.getWidth(), motionLayout.getHeight());
                                                c4 = 1;
                                                fArr[1] = touchResponse.l * fMin2;
                                                c5 = 0;
                                                fArr[0] = fMin2 * touchResponse.f11685k;
                                            }
                                            if (Math.abs(((touchResponse.l * fArr[c4]) + (touchResponse.f11685k * fArr[c5])) * touchResponse.v) < 0.01d) {
                                                fArr[0] = 0.01f;
                                                fArr[c4] = 0.01f;
                                            }
                                            if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                f6 = rawX / fArr[0];
                                            } else {
                                                f6 = rawY / fArr[c4];
                                            }
                                            fMax = Math.max(Math.min(progress2 + f6, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                            if (touchResponse.f11679c == 6) {
                                                fMax = Math.max(fMax, 0.01f);
                                            }
                                            if (touchResponse.f11679c == 7) {
                                                fMax = Math.min(fMax, 0.99f);
                                            }
                                            progress3 = motionLayout.getProgress();
                                            if (fMax != progress3) {
                                                if (progress3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                    if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    motionLayout.s(z);
                                                } else {
                                                    if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    motionLayout.s(z);
                                                }
                                                motionLayout.setProgress(fMax);
                                                velocityTracker6 = myTracker2.f11643a;
                                                if (velocityTracker6 != null) {
                                                    velocityTracker6.computeCurrentVelocity(1000);
                                                }
                                                velocityTracker7 = myTracker2.f11643a;
                                                if (velocityTracker7 != null) {
                                                    xVelocity2 = velocityTracker7.getXVelocity();
                                                } else {
                                                    xVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                }
                                                velocityTracker8 = myTracker2.f11643a;
                                                if (velocityTracker8 != null) {
                                                    yVelocity2 = velocityTracker8.getYVelocity();
                                                } else {
                                                    yVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                }
                                                if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                    f7 = xVelocity2 / fArr[0];
                                                } else {
                                                    f7 = yVelocity2 / fArr[1];
                                                }
                                                motionLayout.u = f7;
                                            } else {
                                                motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                            }
                                            touchResponse.p = motionEvent.getRawX();
                                            touchResponse.q = motionEvent.getRawY();
                                        } else {
                                            progress2 = motionLayout.getProgress();
                                            if (!touchResponse.m) {
                                                touchResponse.m = true;
                                                motionLayout.setProgress(progress2);
                                            }
                                            i5 = touchResponse.d;
                                            motionLayout3 = touchResponse.r;
                                            if (i5 != -1) {
                                                motionLayout3.w(i5, progress2, touchResponse.f11682h, touchResponse.g, fArr);
                                                c4 = 1;
                                                c5 = 0;
                                            } else {
                                                float fMin3 = Math.min(motionLayout3.getWidth(), motionLayout.getHeight());
                                                c4 = 1;
                                                fArr[1] = touchResponse.l * fMin3;
                                                c5 = 0;
                                                fArr[0] = fMin3 * touchResponse.f11685k;
                                            }
                                            if (Math.abs(((touchResponse.l * fArr[c4]) + (touchResponse.f11685k * fArr[c5])) * touchResponse.v) < 0.01d) {
                                                fArr[0] = 0.01f;
                                                fArr[c4] = 0.01f;
                                            }
                                            if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                f6 = rawX / fArr[0];
                                            } else {
                                                f6 = rawY / fArr[c4];
                                            }
                                            fMax = Math.max(Math.min(progress2 + f6, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                            if (touchResponse.f11679c == 6) {
                                                fMax = Math.max(fMax, 0.01f);
                                            }
                                            if (touchResponse.f11679c == 7) {
                                                fMax = Math.min(fMax, 0.99f);
                                            }
                                            progress3 = motionLayout.getProgress();
                                            if (fMax != progress3) {
                                                if (progress3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                    if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    motionLayout.s(z);
                                                } else {
                                                    if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    motionLayout.s(z);
                                                }
                                                motionLayout.setProgress(fMax);
                                                velocityTracker6 = myTracker2.f11643a;
                                                if (velocityTracker6 != null) {
                                                    velocityTracker6.computeCurrentVelocity(1000);
                                                }
                                                velocityTracker7 = myTracker2.f11643a;
                                                if (velocityTracker7 != null) {
                                                    xVelocity2 = velocityTracker7.getXVelocity();
                                                } else {
                                                    xVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                }
                                                velocityTracker8 = myTracker2.f11643a;
                                                if (velocityTracker8 != null) {
                                                    yVelocity2 = velocityTracker8.getYVelocity();
                                                } else {
                                                    yVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                }
                                                if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                    f7 = xVelocity2 / fArr[0];
                                                } else {
                                                    f7 = yVelocity2 / fArr[1];
                                                }
                                                motionLayout.u = f7;
                                            } else {
                                                motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                            }
                                            touchResponse.p = motionEvent.getRawX();
                                            touchResponse.q = motionEvent.getRawY();
                                        }
                                    }
                                }
                            }
                        }
                        motionScene2.r = motionEvent.getRawX();
                        motionScene2.s = motionEvent.getRawY();
                        if (motionEvent.getAction() == 1) {
                            myTracker = (MyTracker) motionTracker;
                            velocityTracker = myTracker.f11643a;
                            if (velocityTracker != null) {
                                velocityTracker.recycle();
                                motionTracker2 = null;
                                myTracker.f11643a = null;
                            } else {
                                motionTracker2 = null;
                            }
                            motionScene2.o = motionTracker2;
                            i2 = this.w;
                            if (i2 != -1) {
                                motionScene2.a(i2, this);
                            }
                        }
                    }
                }
            } else if (!motionScene2.m) {
                transition = motionScene2.f11658c;
                if (transition != null) {
                    fArr = touchResponse.n;
                    if (!motionScene2.n) {
                        motionTracker3 = motionScene2.o;
                        motionLayout = touchResponse.r;
                        if (touchResponse.f11684j) {
                            iArr = touchResponse.o;
                            myTracker3 = (MyTracker) motionTracker3;
                            velocityTracker9 = myTracker3.f11643a;
                            if (velocityTracker9 != null) {
                                velocityTracker9.addMovement(motionEvent);
                            }
                            action2 = motionEvent.getAction();
                            if (action2 == 0) {
                                touchResponse.p = motionEvent.getRawX();
                                touchResponse.q = motionEvent.getRawY();
                                touchResponse.m = false;
                            } else if (action2 == 1) {
                                touchResponse.m = false;
                                velocityTracker10 = myTracker3.f11643a;
                                if (velocityTracker10 != null) {
                                    velocityTracker10.computeCurrentVelocity(16);
                                }
                                velocityTracker11 = myTracker3.f11643a;
                                if (velocityTracker11 != null) {
                                    xVelocity3 = velocityTracker11.getXVelocity();
                                } else {
                                    xVelocity3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                velocityTracker12 = myTracker3.f11643a;
                                if (velocityTracker12 != null) {
                                    yVelocity3 = velocityTracker12.getYVelocity();
                                } else {
                                    yVelocity3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                progress4 = motionLayout.getProgress();
                                float width3 = motionLayout.getWidth() / 2.0f;
                                float height3 = motionLayout.getHeight() / 2.0f;
                                i6 = touchResponse.f11683i;
                                if (i6 != -1) {
                                    View viewFindViewById5 = motionLayout.findViewById(i6);
                                    motionLayout.getLocationOnScreen(iArr);
                                    right = iArr[0] + ((viewFindViewById5.getRight() + viewFindViewById5.getLeft()) / 2.0f);
                                    f8 = iArr[1];
                                    top = viewFindViewById5.getTop();
                                    bottom = viewFindViewById5.getBottom();
                                } else {
                                    i7 = touchResponse.d;
                                    if (i7 != -1) {
                                        View viewFindViewById6 = motionLayout.findViewById(((MotionController) motionLayout.B.get(motionLayout.findViewById(i7))).f11617f.l);
                                        motionLayout.getLocationOnScreen(iArr);
                                        right = iArr[0] + ((viewFindViewById6.getRight() + viewFindViewById6.getLeft()) / 2.0f);
                                        f8 = iArr[1];
                                        top = viewFindViewById6.getTop();
                                        bottom = viewFindViewById6.getBottom();
                                    } else {
                                        float rawX6 = motionEvent.getRawX() - width3;
                                        rawY2 = motionEvent.getRawY() - height3;
                                        float f23 = yVelocity3;
                                        double degrees4 = Math.toDegrees(Math.atan2(rawY2, rawX6));
                                        i8 = touchResponse.d;
                                        if (i8 != -1) {
                                            f9 = rawY2;
                                            touchResponse.r.w(i8, progress4, touchResponse.f11682h, touchResponse.g, fArr);
                                            fArr[1] = (float) Math.toDegrees(fArr[1]);
                                        } else {
                                            f9 = rawY2;
                                            fArr[1] = 360.0f;
                                        }
                                        degrees = ((float) (Math.toDegrees(Math.atan2(f23 + f9, xVelocity3 + rawX6)) - degrees4)) * 62.5f;
                                        if (Float.isNaN(degrees)) {
                                            f10 = (((degrees * 3.0f) * touchResponse.v) / fArr[1]) + progress4;
                                        } else {
                                            f10 = progress4;
                                        }
                                        if (f10 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                                motionLayout.setState(TransitionState.FINISHED);
                                            } else {
                                                motionLayout.setState(TransitionState.FINISHED);
                                            }
                                        } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                            motionLayout.setState(TransitionState.FINISHED);
                                        } else {
                                            motionLayout.setState(TransitionState.FINISHED);
                                        }
                                    }
                                }
                                height3 = ((bottom + top) / 2.0f) + f8;
                                width3 = right;
                                float rawX7 = motionEvent.getRawX() - width3;
                                rawY2 = motionEvent.getRawY() - height3;
                                float f24 = yVelocity3;
                                double degrees5 = Math.toDegrees(Math.atan2(rawY2, rawX7));
                                i8 = touchResponse.d;
                                if (i8 != -1) {
                                    f9 = rawY2;
                                    touchResponse.r.w(i8, progress4, touchResponse.f11682h, touchResponse.g, fArr);
                                    fArr[1] = (float) Math.toDegrees(fArr[1]);
                                } else {
                                    f9 = rawY2;
                                    fArr[1] = 360.0f;
                                }
                                degrees = ((float) (Math.toDegrees(Math.atan2(f24 + f9, xVelocity3 + rawX7)) - degrees5)) * 62.5f;
                                if (Float.isNaN(degrees)) {
                                    f10 = (((degrees * 3.0f) * touchResponse.v) / fArr[1]) + progress4;
                                } else {
                                    f10 = progress4;
                                }
                                if (f10 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                        motionLayout.setState(TransitionState.FINISHED);
                                    } else {
                                        motionLayout.setState(TransitionState.FINISHED);
                                    }
                                } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                    motionLayout.setState(TransitionState.FINISHED);
                                } else {
                                    motionLayout.setState(TransitionState.FINISHED);
                                }
                            } else if (action2 == 2) {
                                motionEvent.getRawY();
                                motionEvent.getRawX();
                                width = motionLayout.getWidth() / 2.0f;
                                height = motionLayout.getHeight() / 2.0f;
                                i10 = touchResponse.f11683i;
                                if (i10 != -1) {
                                    View viewFindViewById7 = motionLayout.findViewById(i10);
                                    motionLayout.getLocationOnScreen(iArr);
                                    float right3 = iArr[0] + ((viewFindViewById7.getRight() + viewFindViewById7.getLeft()) / 2.0f);
                                    height = ((viewFindViewById7.getBottom() + viewFindViewById7.getTop()) / 2.0f) + iArr[1];
                                    width = right3;
                                } else {
                                    i11 = touchResponse.d;
                                    if (i11 != -1) {
                                        motionLayout.getLocationOnScreen(iArr);
                                        width = iArr[0] + ((viewFindViewById.getRight() + viewFindViewById.getLeft()) / 2.0f);
                                        height = ((viewFindViewById.getBottom() + viewFindViewById.getTop()) / 2.0f) + iArr[1];
                                    }
                                }
                                rawX2 = motionEvent.getRawX() - width;
                                rawY3 = motionEvent.getRawY() - height;
                                dAtan2 = Math.atan2(motionEvent.getRawY() - height, motionEvent.getRawX() - width);
                                fAtan2 = (float) (((dAtan2 - Math.atan2(touchResponse.q - height, touchResponse.p - width)) * 180.0d) / 3.141592653589793d);
                                if (fAtan2 > 330.0f) {
                                    fAtan2 -= 360.0f;
                                } else if (fAtan2 < -330.0f) {
                                    fAtan2 += 360.0f;
                                }
                                f11 = fAtan2;
                                if (Math.abs(f11) <= 0.01d) {
                                    progress5 = motionLayout.getProgress();
                                    if (touchResponse.m) {
                                        z2 = true;
                                        touchResponse.m = true;
                                        motionLayout.setProgress(progress5);
                                    } else {
                                        z2 = true;
                                    }
                                    i12 = touchResponse.d;
                                    if (i12 != -1) {
                                        boolean z8 = z2;
                                        f12 = rawY3;
                                        fArr2 = fArr;
                                        touchResponse.r.w(i12, progress5, touchResponse.f11682h, touchResponse.g, fArr2);
                                        fArr2[z8 ? 1 : 0] = (float) Math.toDegrees(fArr2[z8 ? 1 : 0]);
                                        r18 = z8;
                                    } else {
                                        boolean z9 = z2;
                                        f12 = rawY3;
                                        fArr2 = fArr;
                                        fArr2[z9 ? 1 : 0] = 360.0f;
                                        r18 = z9;
                                    }
                                    fMax2 = Math.max(Math.min(((f11 * touchResponse.v) / fArr2[r18]) + progress5, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    progress6 = motionLayout.getProgress();
                                    if (fMax2 != progress6) {
                                        if (progress6 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            motionLayout.s(z3);
                                        } else {
                                            if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            motionLayout.s(z3);
                                        }
                                        motionLayout.setProgress(fMax2);
                                        velocityTracker13 = myTracker3.f11643a;
                                        if (velocityTracker13 != null) {
                                            velocityTracker13.computeCurrentVelocity(1000);
                                        }
                                        velocityTracker14 = myTracker3.f11643a;
                                        if (velocityTracker14 != null) {
                                            xVelocity4 = velocityTracker14.getXVelocity();
                                        } else {
                                            xVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        velocityTracker15 = myTracker3.f11643a;
                                        if (velocityTracker15 != null) {
                                            yVelocity4 = velocityTracker15.getYVelocity();
                                        } else {
                                            yVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        double d5 = yVelocity4;
                                        double d6 = xVelocity4;
                                        motionLayout.u = (float) Math.toDegrees((float) ((Math.sin(Math.atan2(d5, d6) - dAtan2) * Math.hypot(d5, d6)) / Math.hypot(rawX2, f12)));
                                    } else {
                                        motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    touchResponse.p = motionEvent.getRawX();
                                    touchResponse.q = motionEvent.getRawY();
                                } else {
                                    progress5 = motionLayout.getProgress();
                                    if (touchResponse.m) {
                                        z2 = true;
                                        touchResponse.m = true;
                                        motionLayout.setProgress(progress5);
                                    } else {
                                        z2 = true;
                                    }
                                    i12 = touchResponse.d;
                                    if (i12 != -1) {
                                        boolean z10 = z2;
                                        f12 = rawY3;
                                        fArr2 = fArr;
                                        touchResponse.r.w(i12, progress5, touchResponse.f11682h, touchResponse.g, fArr2);
                                        fArr2[z10 ? 1 : 0] = (float) Math.toDegrees(fArr2[z10 ? 1 : 0]);
                                        r18 = z10;
                                    } else {
                                        boolean z11 = z2;
                                        f12 = rawY3;
                                        fArr2 = fArr;
                                        fArr2[z11 ? 1 : 0] = 360.0f;
                                        r18 = z11;
                                    }
                                    fMax2 = Math.max(Math.min(((f11 * touchResponse.v) / fArr2[r18]) + progress5, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    progress6 = motionLayout.getProgress();
                                    if (fMax2 != progress6) {
                                        if (progress6 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            motionLayout.s(z3);
                                        } else {
                                            if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            motionLayout.s(z3);
                                        }
                                        motionLayout.setProgress(fMax2);
                                        velocityTracker13 = myTracker3.f11643a;
                                        if (velocityTracker13 != null) {
                                            velocityTracker13.computeCurrentVelocity(1000);
                                        }
                                        velocityTracker14 = myTracker3.f11643a;
                                        if (velocityTracker14 != null) {
                                            xVelocity4 = velocityTracker14.getXVelocity();
                                        } else {
                                            xVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        velocityTracker15 = myTracker3.f11643a;
                                        if (velocityTracker15 != null) {
                                            yVelocity4 = velocityTracker15.getYVelocity();
                                        } else {
                                            yVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        double d7 = yVelocity4;
                                        double d8 = xVelocity4;
                                        motionLayout.u = (float) Math.toDegrees((float) ((Math.sin(Math.atan2(d7, d8) - dAtan2) * Math.hypot(d7, d8)) / Math.hypot(rawX2, f12)));
                                    } else {
                                        motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    touchResponse.p = motionEvent.getRawX();
                                    touchResponse.q = motionEvent.getRawY();
                                }
                            }
                        } else {
                            myTracker2 = (MyTracker) motionTracker3;
                            velocityTracker2 = myTracker2.f11643a;
                            if (velocityTracker2 != null) {
                                velocityTracker2.addMovement(motionEvent);
                            }
                            action = motionEvent.getAction();
                            if (action == 0) {
                                touchResponse.p = motionEvent.getRawX();
                                touchResponse.q = motionEvent.getRawY();
                                touchResponse.m = false;
                            } else if (action == 1) {
                                touchResponse.m = false;
                                velocityTracker3 = myTracker2.f11643a;
                                if (velocityTracker3 != null) {
                                    velocityTracker3.computeCurrentVelocity(1000);
                                }
                                velocityTracker4 = myTracker2.f11643a;
                                if (velocityTracker4 != null) {
                                    xVelocity = velocityTracker4.getXVelocity();
                                } else {
                                    xVelocity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                velocityTracker5 = myTracker2.f11643a;
                                if (velocityTracker5 != null) {
                                    yVelocity = velocityTracker5.getYVelocity();
                                } else {
                                    yVelocity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                progress = motionLayout.getProgress();
                                i3 = touchResponse.d;
                                motionLayout2 = touchResponse.r;
                                if (i3 != -1) {
                                    motionLayout2.w(i3, progress, touchResponse.f11682h, touchResponse.g, fArr);
                                    c2 = 1;
                                    c3 = 0;
                                } else {
                                    float fMin4 = Math.min(motionLayout2.getWidth(), motionLayout.getHeight());
                                    c2 = 1;
                                    fArr[1] = touchResponse.l * fMin4;
                                    c3 = 0;
                                    fArr[0] = fMin4 * touchResponse.f11685k;
                                }
                                f2 = touchResponse.f11685k;
                                f3 = fArr[c3];
                                f4 = fArr[c2];
                                if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    fAbs = xVelocity / f3;
                                } else {
                                    fAbs = yVelocity / f4;
                                }
                                if (Float.isNaN(fAbs)) {
                                    f5 = (fAbs / 3.0f) + progress;
                                } else {
                                    f5 = progress;
                                }
                                if (f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f5) {
                                        motionLayout.setState(TransitionState.FINISHED);
                                    } else {
                                        motionLayout.setState(TransitionState.FINISHED);
                                    }
                                } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f5) {
                                    motionLayout.setState(TransitionState.FINISHED);
                                } else {
                                    motionLayout.setState(TransitionState.FINISHED);
                                }
                            } else if (action == 2) {
                                rawY = motionEvent.getRawY() - touchResponse.q;
                                rawX = motionEvent.getRawX() - touchResponse.p;
                                if (Math.abs((touchResponse.l * rawY) + (touchResponse.f11685k * rawX)) <= touchResponse.x) {
                                    progress2 = motionLayout.getProgress();
                                    if (!touchResponse.m) {
                                        touchResponse.m = true;
                                        motionLayout.setProgress(progress2);
                                    }
                                    i5 = touchResponse.d;
                                    motionLayout3 = touchResponse.r;
                                    if (i5 != -1) {
                                        motionLayout3.w(i5, progress2, touchResponse.f11682h, touchResponse.g, fArr);
                                        c4 = 1;
                                        c5 = 0;
                                    } else {
                                        float fMin5 = Math.min(motionLayout3.getWidth(), motionLayout.getHeight());
                                        c4 = 1;
                                        fArr[1] = touchResponse.l * fMin5;
                                        c5 = 0;
                                        fArr[0] = fMin5 * touchResponse.f11685k;
                                    }
                                    if (Math.abs(((touchResponse.l * fArr[c4]) + (touchResponse.f11685k * fArr[c5])) * touchResponse.v) < 0.01d) {
                                        fArr[0] = 0.01f;
                                        fArr[c4] = 0.01f;
                                    }
                                    if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        f6 = rawX / fArr[0];
                                    } else {
                                        f6 = rawY / fArr[c4];
                                    }
                                    fMax = Math.max(Math.min(progress2 + f6, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    if (touchResponse.f11679c == 6) {
                                        fMax = Math.max(fMax, 0.01f);
                                    }
                                    if (touchResponse.f11679c == 7) {
                                        fMax = Math.min(fMax, 0.99f);
                                    }
                                    progress3 = motionLayout.getProgress();
                                    if (fMax != progress3) {
                                        if (progress3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            motionLayout.s(z);
                                        } else {
                                            if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            motionLayout.s(z);
                                        }
                                        motionLayout.setProgress(fMax);
                                        velocityTracker6 = myTracker2.f11643a;
                                        if (velocityTracker6 != null) {
                                            velocityTracker6.computeCurrentVelocity(1000);
                                        }
                                        velocityTracker7 = myTracker2.f11643a;
                                        if (velocityTracker7 != null) {
                                            xVelocity2 = velocityTracker7.getXVelocity();
                                        } else {
                                            xVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        velocityTracker8 = myTracker2.f11643a;
                                        if (velocityTracker8 != null) {
                                            yVelocity2 = velocityTracker8.getYVelocity();
                                        } else {
                                            yVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            f7 = xVelocity2 / fArr[0];
                                        } else {
                                            f7 = yVelocity2 / fArr[1];
                                        }
                                        motionLayout.u = f7;
                                    } else {
                                        motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    touchResponse.p = motionEvent.getRawX();
                                    touchResponse.q = motionEvent.getRawY();
                                } else {
                                    progress2 = motionLayout.getProgress();
                                    if (!touchResponse.m) {
                                        touchResponse.m = true;
                                        motionLayout.setProgress(progress2);
                                    }
                                    i5 = touchResponse.d;
                                    motionLayout3 = touchResponse.r;
                                    if (i5 != -1) {
                                        motionLayout3.w(i5, progress2, touchResponse.f11682h, touchResponse.g, fArr);
                                        c4 = 1;
                                        c5 = 0;
                                    } else {
                                        float fMin6 = Math.min(motionLayout3.getWidth(), motionLayout.getHeight());
                                        c4 = 1;
                                        fArr[1] = touchResponse.l * fMin6;
                                        c5 = 0;
                                        fArr[0] = fMin6 * touchResponse.f11685k;
                                    }
                                    if (Math.abs(((touchResponse.l * fArr[c4]) + (touchResponse.f11685k * fArr[c5])) * touchResponse.v) < 0.01d) {
                                        fArr[0] = 0.01f;
                                        fArr[c4] = 0.01f;
                                    }
                                    if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        f6 = rawX / fArr[0];
                                    } else {
                                        f6 = rawY / fArr[c4];
                                    }
                                    fMax = Math.max(Math.min(progress2 + f6, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    if (touchResponse.f11679c == 6) {
                                        fMax = Math.max(fMax, 0.01f);
                                    }
                                    if (touchResponse.f11679c == 7) {
                                        fMax = Math.min(fMax, 0.99f);
                                    }
                                    progress3 = motionLayout.getProgress();
                                    if (fMax != progress3) {
                                        if (progress3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            motionLayout.s(z);
                                        } else {
                                            if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            motionLayout.s(z);
                                        }
                                        motionLayout.setProgress(fMax);
                                        velocityTracker6 = myTracker2.f11643a;
                                        if (velocityTracker6 != null) {
                                            velocityTracker6.computeCurrentVelocity(1000);
                                        }
                                        velocityTracker7 = myTracker2.f11643a;
                                        if (velocityTracker7 != null) {
                                            xVelocity2 = velocityTracker7.getXVelocity();
                                        } else {
                                            xVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        velocityTracker8 = myTracker2.f11643a;
                                        if (velocityTracker8 != null) {
                                            yVelocity2 = velocityTracker8.getYVelocity();
                                        } else {
                                            yVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            f7 = xVelocity2 / fArr[0];
                                        } else {
                                            f7 = yVelocity2 / fArr[1];
                                        }
                                        motionLayout.u = f7;
                                    } else {
                                        motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    touchResponse.p = motionEvent.getRawX();
                                    touchResponse.q = motionEvent.getRawY();
                                }
                            }
                        }
                    }
                }
                motionScene2.r = motionEvent.getRawX();
                motionScene2.s = motionEvent.getRawY();
                if (motionEvent.getAction() == 1) {
                    myTracker = (MyTracker) motionTracker;
                    velocityTracker = myTracker.f11643a;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        motionTracker2 = null;
                        myTracker.f11643a = null;
                    } else {
                        motionTracker2 = null;
                    }
                    motionScene2.o = motionTracker2;
                    i2 = this.w;
                    if (i2 != -1) {
                        motionScene2.a(i2, this);
                    }
                }
            }
        } else if (!motionScene2.m) {
            transition = motionScene2.f11658c;
            if (transition != null && (touchResponse = transition.l) != null) {
                fArr = touchResponse.n;
                if (!motionScene2.n) {
                    motionTracker3 = motionScene2.o;
                    motionLayout = touchResponse.r;
                    if (touchResponse.f11684j) {
                        iArr = touchResponse.o;
                        myTracker3 = (MyTracker) motionTracker3;
                        velocityTracker9 = myTracker3.f11643a;
                        if (velocityTracker9 != null) {
                            velocityTracker9.addMovement(motionEvent);
                        }
                        action2 = motionEvent.getAction();
                        if (action2 == 0) {
                            touchResponse.p = motionEvent.getRawX();
                            touchResponse.q = motionEvent.getRawY();
                            touchResponse.m = false;
                        } else if (action2 == 1) {
                            touchResponse.m = false;
                            velocityTracker10 = myTracker3.f11643a;
                            if (velocityTracker10 != null) {
                                velocityTracker10.computeCurrentVelocity(16);
                            }
                            velocityTracker11 = myTracker3.f11643a;
                            if (velocityTracker11 != null) {
                                xVelocity3 = velocityTracker11.getXVelocity();
                            } else {
                                xVelocity3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            }
                            velocityTracker12 = myTracker3.f11643a;
                            if (velocityTracker12 != null) {
                                yVelocity3 = velocityTracker12.getYVelocity();
                            } else {
                                yVelocity3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            }
                            progress4 = motionLayout.getProgress();
                            float width4 = motionLayout.getWidth() / 2.0f;
                            float height4 = motionLayout.getHeight() / 2.0f;
                            i6 = touchResponse.f11683i;
                            if (i6 != -1) {
                                View viewFindViewById8 = motionLayout.findViewById(i6);
                                motionLayout.getLocationOnScreen(iArr);
                                right = iArr[0] + ((viewFindViewById8.getRight() + viewFindViewById8.getLeft()) / 2.0f);
                                f8 = iArr[1];
                                top = viewFindViewById8.getTop();
                                bottom = viewFindViewById8.getBottom();
                            } else {
                                i7 = touchResponse.d;
                                if (i7 != -1) {
                                    View viewFindViewById9 = motionLayout.findViewById(((MotionController) motionLayout.B.get(motionLayout.findViewById(i7))).f11617f.l);
                                    motionLayout.getLocationOnScreen(iArr);
                                    right = iArr[0] + ((viewFindViewById9.getRight() + viewFindViewById9.getLeft()) / 2.0f);
                                    f8 = iArr[1];
                                    top = viewFindViewById9.getTop();
                                    bottom = viewFindViewById9.getBottom();
                                } else {
                                    float rawX8 = motionEvent.getRawX() - width4;
                                    rawY2 = motionEvent.getRawY() - height4;
                                    float f25 = yVelocity3;
                                    double degrees6 = Math.toDegrees(Math.atan2(rawY2, rawX8));
                                    i8 = touchResponse.d;
                                    if (i8 != -1) {
                                        f9 = rawY2;
                                        touchResponse.r.w(i8, progress4, touchResponse.f11682h, touchResponse.g, fArr);
                                        fArr[1] = (float) Math.toDegrees(fArr[1]);
                                    } else {
                                        f9 = rawY2;
                                        fArr[1] = 360.0f;
                                    }
                                    degrees = ((float) (Math.toDegrees(Math.atan2(f25 + f9, xVelocity3 + rawX8)) - degrees6)) * 62.5f;
                                    if (Float.isNaN(degrees)) {
                                        f10 = (((degrees * 3.0f) * touchResponse.v) / fArr[1]) + progress4;
                                    } else {
                                        f10 = progress4;
                                    }
                                    if (f10 == Call.Parameters.DEFAULT_CAMERA_ZOOM && f10 != 1.0f && (i9 = touchResponse.f11679c) != 3) {
                                        float fAbs2 = (degrees * touchResponse.v) / fArr[1];
                                        float f26 = ((double) f10) < 0.5d ? Call.Parameters.DEFAULT_CAMERA_ZOOM : 1.0f;
                                        if (i9 == 6) {
                                            if (progress4 + fAbs2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                fAbs2 = Math.abs(fAbs2);
                                            }
                                            f26 = 1.0f;
                                        }
                                        if (touchResponse.f11679c == 7) {
                                            if (progress4 + fAbs2 > 1.0f) {
                                                fAbs2 = -Math.abs(fAbs2);
                                            }
                                            f26 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        motionLayout.E(f26, fAbs2 * 3.0f, touchResponse.f11679c);
                                        if (Call.Parameters.DEFAULT_CAMERA_ZOOM >= progress4 || 1.0f <= progress4) {
                                            motionLayout.setState(TransitionState.FINISHED);
                                        }
                                    } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10 || 1.0f <= f10) {
                                        motionLayout.setState(TransitionState.FINISHED);
                                    }
                                }
                            }
                            height4 = ((bottom + top) / 2.0f) + f8;
                            width4 = right;
                            float rawX9 = motionEvent.getRawX() - width4;
                            rawY2 = motionEvent.getRawY() - height4;
                            float f27 = yVelocity3;
                            double degrees7 = Math.toDegrees(Math.atan2(rawY2, rawX9));
                            i8 = touchResponse.d;
                            if (i8 != -1) {
                                f9 = rawY2;
                                touchResponse.r.w(i8, progress4, touchResponse.f11682h, touchResponse.g, fArr);
                                fArr[1] = (float) Math.toDegrees(fArr[1]);
                            } else {
                                f9 = rawY2;
                                fArr[1] = 360.0f;
                            }
                            degrees = ((float) (Math.toDegrees(Math.atan2(f27 + f9, xVelocity3 + rawX9)) - degrees7)) * 62.5f;
                            if (Float.isNaN(degrees)) {
                                f10 = (((degrees * 3.0f) * touchResponse.v) / fArr[1]) + progress4;
                            } else {
                                f10 = progress4;
                            }
                            if (f10 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                    motionLayout.setState(TransitionState.FINISHED);
                                } else {
                                    motionLayout.setState(TransitionState.FINISHED);
                                }
                            } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f10) {
                                motionLayout.setState(TransitionState.FINISHED);
                            } else {
                                motionLayout.setState(TransitionState.FINISHED);
                            }
                        } else if (action2 == 2) {
                            motionEvent.getRawY();
                            motionEvent.getRawX();
                            width = motionLayout.getWidth() / 2.0f;
                            height = motionLayout.getHeight() / 2.0f;
                            i10 = touchResponse.f11683i;
                            if (i10 != -1) {
                                View viewFindViewById10 = motionLayout.findViewById(i10);
                                motionLayout.getLocationOnScreen(iArr);
                                float right4 = iArr[0] + ((viewFindViewById10.getRight() + viewFindViewById10.getLeft()) / 2.0f);
                                height = ((viewFindViewById10.getBottom() + viewFindViewById10.getTop()) / 2.0f) + iArr[1];
                                width = right4;
                            } else {
                                i11 = touchResponse.d;
                                if (i11 != -1 && (viewFindViewById = motionLayout.findViewById(((MotionController) motionLayout.B.get(motionLayout.findViewById(i11))).f11617f.l)) != null) {
                                    motionLayout.getLocationOnScreen(iArr);
                                    width = iArr[0] + ((viewFindViewById.getRight() + viewFindViewById.getLeft()) / 2.0f);
                                    height = ((viewFindViewById.getBottom() + viewFindViewById.getTop()) / 2.0f) + iArr[1];
                                }
                            }
                            rawX2 = motionEvent.getRawX() - width;
                            rawY3 = motionEvent.getRawY() - height;
                            dAtan2 = Math.atan2(motionEvent.getRawY() - height, motionEvent.getRawX() - width);
                            fAtan2 = (float) (((dAtan2 - Math.atan2(touchResponse.q - height, touchResponse.p - width)) * 180.0d) / 3.141592653589793d);
                            if (fAtan2 > 330.0f) {
                                fAtan2 -= 360.0f;
                            } else if (fAtan2 < -330.0f) {
                                fAtan2 += 360.0f;
                            }
                            f11 = fAtan2;
                            if (Math.abs(f11) <= 0.01d || touchResponse.m) {
                                progress5 = motionLayout.getProgress();
                                if (touchResponse.m) {
                                    z2 = true;
                                    touchResponse.m = true;
                                    motionLayout.setProgress(progress5);
                                } else {
                                    z2 = true;
                                }
                                i12 = touchResponse.d;
                                if (i12 != -1) {
                                    boolean z12 = z2;
                                    f12 = rawY3;
                                    fArr2 = fArr;
                                    touchResponse.r.w(i12, progress5, touchResponse.f11682h, touchResponse.g, fArr2);
                                    fArr2[z12 ? 1 : 0] = (float) Math.toDegrees(fArr2[z12 ? 1 : 0]);
                                    r18 = z12;
                                } else {
                                    boolean z13 = z2;
                                    f12 = rawY3;
                                    fArr2 = fArr;
                                    fArr2[z13 ? 1 : 0] = 360.0f;
                                    r18 = z13;
                                }
                                fMax2 = Math.max(Math.min(((f11 * touchResponse.v) / fArr2[r18]) + progress5, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                progress6 = motionLayout.getProgress();
                                if (fMax2 != progress6) {
                                    if (progress6 != Call.Parameters.DEFAULT_CAMERA_ZOOM || progress6 == 1.0f) {
                                        if (progress6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        motionLayout.s(z3);
                                    }
                                    motionLayout.setProgress(fMax2);
                                    velocityTracker13 = myTracker3.f11643a;
                                    if (velocityTracker13 != null) {
                                        velocityTracker13.computeCurrentVelocity(1000);
                                    }
                                    velocityTracker14 = myTracker3.f11643a;
                                    if (velocityTracker14 != null) {
                                        xVelocity4 = velocityTracker14.getXVelocity();
                                    } else {
                                        xVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    velocityTracker15 = myTracker3.f11643a;
                                    if (velocityTracker15 != null) {
                                        yVelocity4 = velocityTracker15.getYVelocity();
                                    } else {
                                        yVelocity4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    double d9 = yVelocity4;
                                    double d10 = xVelocity4;
                                    motionLayout.u = (float) Math.toDegrees((float) ((Math.sin(Math.atan2(d9, d10) - dAtan2) * Math.hypot(d9, d10)) / Math.hypot(rawX2, f12)));
                                } else {
                                    motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                touchResponse.p = motionEvent.getRawX();
                                touchResponse.q = motionEvent.getRawY();
                            }
                        }
                    } else {
                        myTracker2 = (MyTracker) motionTracker3;
                        velocityTracker2 = myTracker2.f11643a;
                        if (velocityTracker2 != null) {
                            velocityTracker2.addMovement(motionEvent);
                        }
                        action = motionEvent.getAction();
                        if (action == 0) {
                            touchResponse.p = motionEvent.getRawX();
                            touchResponse.q = motionEvent.getRawY();
                            touchResponse.m = false;
                        } else if (action == 1) {
                            touchResponse.m = false;
                            velocityTracker3 = myTracker2.f11643a;
                            if (velocityTracker3 != null) {
                                velocityTracker3.computeCurrentVelocity(1000);
                            }
                            velocityTracker4 = myTracker2.f11643a;
                            if (velocityTracker4 != null) {
                                xVelocity = velocityTracker4.getXVelocity();
                            } else {
                                xVelocity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            }
                            velocityTracker5 = myTracker2.f11643a;
                            if (velocityTracker5 != null) {
                                yVelocity = velocityTracker5.getYVelocity();
                            } else {
                                yVelocity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            }
                            progress = motionLayout.getProgress();
                            i3 = touchResponse.d;
                            motionLayout2 = touchResponse.r;
                            if (i3 != -1) {
                                motionLayout2.w(i3, progress, touchResponse.f11682h, touchResponse.g, fArr);
                                c2 = 1;
                                c3 = 0;
                            } else {
                                float fMin7 = Math.min(motionLayout2.getWidth(), motionLayout.getHeight());
                                c2 = 1;
                                fArr[1] = touchResponse.l * fMin7;
                                c3 = 0;
                                fArr[0] = fMin7 * touchResponse.f11685k;
                            }
                            f2 = touchResponse.f11685k;
                            f3 = fArr[c3];
                            f4 = fArr[c2];
                            if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                fAbs = xVelocity / f3;
                            } else {
                                fAbs = yVelocity / f4;
                            }
                            if (Float.isNaN(fAbs)) {
                                f5 = (fAbs / 3.0f) + progress;
                            } else {
                                f5 = progress;
                            }
                            if (f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM && f5 != 1.0f && (i4 = touchResponse.f11679c) != 3) {
                                float f28 = ((double) f5) < 0.5d ? Call.Parameters.DEFAULT_CAMERA_ZOOM : 1.0f;
                                if (i4 == 6) {
                                    if (progress + fAbs < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        fAbs = Math.abs(fAbs);
                                    }
                                    f28 = 1.0f;
                                }
                                if (touchResponse.f11679c == 7) {
                                    if (progress + fAbs > 1.0f) {
                                        fAbs = -Math.abs(fAbs);
                                    }
                                    f28 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                motionLayout.E(f28, fAbs, touchResponse.f11679c);
                                if (Call.Parameters.DEFAULT_CAMERA_ZOOM >= progress || 1.0f <= progress) {
                                    motionLayout.setState(TransitionState.FINISHED);
                                }
                            } else if (Call.Parameters.DEFAULT_CAMERA_ZOOM < f5 || 1.0f <= f5) {
                                motionLayout.setState(TransitionState.FINISHED);
                            }
                        } else if (action == 2) {
                            rawY = motionEvent.getRawY() - touchResponse.q;
                            rawX = motionEvent.getRawX() - touchResponse.p;
                            if (Math.abs((touchResponse.l * rawY) + (touchResponse.f11685k * rawX)) <= touchResponse.x || touchResponse.m) {
                                progress2 = motionLayout.getProgress();
                                if (!touchResponse.m) {
                                    touchResponse.m = true;
                                    motionLayout.setProgress(progress2);
                                }
                                i5 = touchResponse.d;
                                motionLayout3 = touchResponse.r;
                                if (i5 != -1) {
                                    motionLayout3.w(i5, progress2, touchResponse.f11682h, touchResponse.g, fArr);
                                    c4 = 1;
                                    c5 = 0;
                                } else {
                                    float fMin8 = Math.min(motionLayout3.getWidth(), motionLayout.getHeight());
                                    c4 = 1;
                                    fArr[1] = touchResponse.l * fMin8;
                                    c5 = 0;
                                    fArr[0] = fMin8 * touchResponse.f11685k;
                                }
                                if (Math.abs(((touchResponse.l * fArr[c4]) + (touchResponse.f11685k * fArr[c5])) * touchResponse.v) < 0.01d) {
                                    fArr[0] = 0.01f;
                                    fArr[c4] = 0.01f;
                                }
                                if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f6 = rawX / fArr[0];
                                } else {
                                    f6 = rawY / fArr[c4];
                                }
                                fMax = Math.max(Math.min(progress2 + f6, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                if (touchResponse.f11679c == 6) {
                                    fMax = Math.max(fMax, 0.01f);
                                }
                                if (touchResponse.f11679c == 7) {
                                    fMax = Math.min(fMax, 0.99f);
                                }
                                progress3 = motionLayout.getProgress();
                                if (fMax != progress3) {
                                    if (progress3 != Call.Parameters.DEFAULT_CAMERA_ZOOM || progress3 == 1.0f) {
                                        if (progress3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        motionLayout.s(z);
                                    }
                                    motionLayout.setProgress(fMax);
                                    velocityTracker6 = myTracker2.f11643a;
                                    if (velocityTracker6 != null) {
                                        velocityTracker6.computeCurrentVelocity(1000);
                                    }
                                    velocityTracker7 = myTracker2.f11643a;
                                    if (velocityTracker7 != null) {
                                        xVelocity2 = velocityTracker7.getXVelocity();
                                    } else {
                                        xVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    velocityTracker8 = myTracker2.f11643a;
                                    if (velocityTracker8 != null) {
                                        yVelocity2 = velocityTracker8.getYVelocity();
                                    } else {
                                        yVelocity2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    if (touchResponse.f11685k != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        f7 = xVelocity2 / fArr[0];
                                    } else {
                                        f7 = yVelocity2 / fArr[1];
                                    }
                                    motionLayout.u = f7;
                                } else {
                                    motionLayout.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                touchResponse.p = motionEvent.getRawX();
                                touchResponse.q = motionEvent.getRawY();
                            }
                        }
                    }
                }
            }
            motionScene2.r = motionEvent.getRawX();
            motionScene2.s = motionEvent.getRawY();
            if (motionEvent.getAction() == 1 && (motionTracker = motionScene2.o) != null) {
                myTracker = (MyTracker) motionTracker;
                velocityTracker = myTracker.f11643a;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    motionTracker2 = null;
                    myTracker.f11643a = null;
                } else {
                    motionTracker2 = null;
                }
                motionScene2.o = motionTracker2;
                i2 = this.w;
                if (i2 != -1) {
                    motionScene2.a(i2, this);
                }
            }
        }
        MotionScene.Transition transition6 = this.r.f11658c;
        if ((transition6.r & 4) != 0) {
            return transition6.l.m;
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.e1 == null) {
                this.e1 = new CopyOnWriteArrayList();
            }
            this.e1.add(motionHelper);
            if (motionHelper.f11623j) {
                if (this.c1 == null) {
                    this.c1 = new ArrayList();
                }
                this.c1.add(motionHelper);
            }
            if (motionHelper.f11624k) {
                if (this.d1 == null) {
                    this.d1 = new ArrayList();
                }
                this.d1.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList arrayList = this.c1;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList arrayList2 = this.d1;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    public final void r(float f2) {
        MotionScene motionScene = this.r;
        if (motionScene == null) {
            return;
        }
        float f3 = this.F;
        float f4 = this.E;
        if (f3 != f4 && this.I) {
            this.F = f4;
        }
        float f5 = this.F;
        if (f5 == f2) {
            return;
        }
        this.N = false;
        this.H = f2;
        MotionScene.Transition transition = motionScene.f11658c;
        this.D = (transition != null ? transition.f11671h : motionScene.f11663j) / 1000.0f;
        setProgress(f2);
        this.s = null;
        this.t = this.r.d();
        this.I = false;
        this.C = getNanoTime();
        this.J = true;
        this.E = f5;
        this.F = f5;
        invalidate();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public final void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (!this.k1 && this.w == -1 && (motionScene = this.r) != null && (transition = motionScene.f11658c) != null) {
            int i2 = transition.q;
            if (i2 == 0) {
                return;
            }
            if (i2 == 2) {
                int childCount = getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    ((MotionController) this.B.get(getChildAt(i3))).d = true;
                }
                return;
            }
        }
        super.requestLayout();
    }

    public final void s(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            MotionController motionController = (MotionController) this.B.get(getChildAt(i2));
            if (motionController != null && "button".equals(Debug.c(motionController.f11614b)) && motionController.A != null) {
                int i3 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = motionController.A;
                    if (i3 < keyTriggerArr.length) {
                        keyTriggerArr[i3].f(z ? -100.0f : 100.0f, motionController.f11614b);
                        i3++;
                    }
                }
            }
        }
    }

    public void setDebugMode(int i2) {
        this.L = i2;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z) {
        this.x1 = z;
    }

    public void setInteractionEnabled(boolean z) {
        this.A = z;
    }

    public void setInterpolatedProgress(float f2) {
        if (this.r != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolatorD = this.r.d();
            if (interpolatorD != null) {
                setProgress(interpolatorD.getInterpolation(f2));
                return;
            }
        }
        setProgress(f2);
    }

    public void setOnHide(float f2) {
        ArrayList arrayList = this.d1;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((MotionHelper) this.d1.get(i2)).setProgress(f2);
            }
        }
    }

    public void setOnShow(float f2) {
        ArrayList arrayList = this.c1;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((MotionHelper) this.c1.get(i2)).setProgress(f2);
            }
        }
    }

    public void setProgress(float f2) {
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            int i2 = (f2 > 1.0f ? 1 : (f2 == 1.0f ? 0 : -1));
        }
        if (!isAttachedToWindow()) {
            if (this.u1 == null) {
                this.u1 = new StateCache();
            }
            this.u1.f11644a = f2;
            return;
        }
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (this.F == 1.0f && this.w == this.x) {
                setState(TransitionState.MOVING);
            }
            this.w = this.v;
            if (this.F == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                setState(TransitionState.FINISHED);
            }
        } else if (f2 >= 1.0f) {
            if (this.F == Call.Parameters.DEFAULT_CAMERA_ZOOM && this.w == this.v) {
                setState(TransitionState.MOVING);
            }
            this.w = this.x;
            if (this.F == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.w = -1;
            setState(TransitionState.MOVING);
        }
        if (this.r == null) {
            return;
        }
        this.I = true;
        this.H = f2;
        this.E = f2;
        this.G = -1L;
        this.C = -1L;
        this.s = null;
        this.J = true;
        invalidate();
    }

    public void setScene(MotionScene motionScene) {
        TouchResponse touchResponse;
        this.r = motionScene;
        boolean zF = f();
        motionScene.p = zF;
        MotionScene.Transition transition = motionScene.f11658c;
        if (transition != null && (touchResponse = transition.l) != null) {
            touchResponse.c(zF);
        }
        B();
    }

    public void setStartState(int i2) {
        if (isAttachedToWindow()) {
            this.w = i2;
            return;
        }
        if (this.u1 == null) {
            this.u1 = new StateCache();
        }
        StateCache stateCache = this.u1;
        stateCache.f11646c = i2;
        stateCache.d = i2;
    }

    public void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.w == -1) {
            return;
        }
        TransitionState transitionState3 = this.y1;
        this.y1 = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            u();
        }
        int iOrdinal = transitionState3.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 && transitionState == transitionState2) {
                v();
                return;
            }
            return;
        }
        if (transitionState == transitionState4) {
            u();
        }
        if (transitionState == transitionState2) {
            v();
        }
    }

    public void setTransition(int i2) {
        MotionScene.Transition transition;
        float f2;
        MotionScene motionScene = this.r;
        if (motionScene != null) {
            Iterator it = motionScene.d.iterator();
            do {
                if (!it.hasNext()) {
                    transition = null;
                    break;
                }
                transition = (MotionScene.Transition) it.next();
            } while (transition.f11666a != i2);
            this.v = transition.d;
            this.x = transition.f11668c;
            if (!isAttachedToWindow()) {
                if (this.u1 == null) {
                    this.u1 = new StateCache();
                }
                StateCache stateCache = this.u1;
                stateCache.f11646c = this.v;
                stateCache.d = this.x;
                return;
            }
            int i3 = this.w;
            if (i3 == this.v) {
                f2 = 0.0f;
            } else {
                f2 = i3 == this.x ? 1.0f : Float.NaN;
            }
            MotionScene motionScene2 = this.r;
            motionScene2.f11658c = transition;
            TouchResponse touchResponse = transition.l;
            if (touchResponse != null) {
                touchResponse.c(motionScene2.p);
            }
            this.z1.e(this.r.b(this.v), this.r.b(this.x));
            B();
            if (this.F != f2) {
                if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    s(true);
                    this.r.b(this.v).c(this);
                } else if (f2 == 1.0f) {
                    s(false);
                    this.r.b(this.x).c(this);
                }
            }
            this.F = Float.isNaN(f2) ? 0.0f : f2;
            if (!Float.isNaN(f2)) {
                setProgress(f2);
            } else {
                Debug.a();
                r(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
        }
    }

    public void setTransitionDuration(int i2) {
        MotionScene motionScene = this.r;
        if (motionScene == null) {
            return;
        }
        MotionScene.Transition transition = motionScene.f11658c;
        if (transition != null) {
            transition.f11671h = Math.max(i2, 8);
        } else {
            motionScene.f11663j = i2;
        }
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.K = transitionListener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.u1 == null) {
            this.u1 = new StateCache();
        }
        StateCache stateCache = this.u1;
        stateCache.getClass();
        stateCache.f11644a = bundle.getFloat("motion.progress");
        stateCache.f11645b = bundle.getFloat("motion.velocity");
        stateCache.f11646c = bundle.getInt("motion.StartState");
        stateCache.d = bundle.getInt("motion.EndState");
        if (isAttachedToWindow()) {
            this.u1.a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:127:0x01da  */
    /* JADX WARN: Code duplicated, block: B:129:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:143:0x020e  */
    /* JADX WARN: Code duplicated, block: B:180:0x0182 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00db A[PHI: r3
      0x00db: PHI (r3v50 float) = (r3v49 float), (r3v51 float), (r3v51 float) binds: [B:47:0x00a9, B:58:0x00cf, B:60:0x00d3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x0106  */
    /* JADX WARN: Code duplicated, block: B:74:0x010d  */
    /* JADX WARN: Code duplicated, block: B:86:0x012b  */
    /* JADX WARN: Code duplicated, block: B:89:0x0142  */
    /* JADX WARN: Code duplicated, block: B:90:0x0144  */
    /* JADX WARN: Code duplicated, block: B:93:0x014d  */
    /* JADX WARN: Code duplicated, block: B:96:0x0164  */
    /* JADX WARN: Code duplicated, block: B:98:0x0173  */
    public final void t(boolean z) {
        boolean z2;
        char c2;
        int childCount;
        long nanoTime;
        Interpolator interpolator;
        float interpolation;
        Interpolator interpolator2;
        int i2;
        int i3;
        int i4;
        int i5;
        View childAt;
        MotionController motionController;
        boolean z3;
        if (this.G == -1) {
            this.G = getNanoTime();
        }
        float f2 = this.F;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 < 1.0f) {
            this.w = -1;
        }
        boolean z4 = false;
        if (this.b1 || (this.J && (z || this.H != f2))) {
            float fSignum = Math.signum(this.H - f2);
            long nanoTime2 = getNanoTime();
            MotionInterpolator motionInterpolator = this.s;
            float f3 = motionInterpolator == null ? (((nanoTime2 - this.G) * fSignum) * 1.0E-9f) / this.D : 0.0f;
            float f4 = this.F + f3;
            if (this.I) {
                f4 = this.H;
            }
            if ((fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f4 < this.H) && (fSignum > Call.Parameters.DEFAULT_CAMERA_ZOOM || f4 > this.H)) {
                z2 = false;
            } else {
                f4 = this.H;
                this.J = false;
                z2 = true;
            }
            this.F = f4;
            this.E = f4;
            this.G = nanoTime2;
            if (motionInterpolator == null || z2) {
                this.u = f3;
            } else {
                if (this.N) {
                    float interpolation2 = motionInterpolator.getInterpolation((nanoTime2 - this.C) * 1.0E-9f);
                    MotionInterpolator motionInterpolator2 = this.s;
                    StopLogic stopLogic = this.O;
                    c2 = motionInterpolator2 == stopLogic ? stopLogic.f11559c.b() ? (char) 2 : (char) 1 : (char) 0;
                    this.F = interpolation2;
                    this.G = nanoTime2;
                    MotionInterpolator motionInterpolator3 = this.s;
                    if (motionInterpolator3 != null) {
                        float fA = motionInterpolator3.a();
                        this.u = fA;
                        if (Math.abs(fA) * this.D <= 1.0E-5f && c2 == 2) {
                            this.J = false;
                        }
                        if (fA > Call.Parameters.DEFAULT_CAMERA_ZOOM && interpolation2 >= 1.0f) {
                            this.F = 1.0f;
                            this.J = false;
                            interpolation2 = 1.0f;
                        }
                        if (fA >= Call.Parameters.DEFAULT_CAMERA_ZOOM || interpolation2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            f4 = interpolation2;
                        } else {
                            this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            this.J = false;
                            f4 = 0.0f;
                        }
                    } else {
                        f4 = interpolation2;
                    }
                } else {
                    float interpolation3 = motionInterpolator.getInterpolation(f4);
                    MotionInterpolator motionInterpolator4 = this.s;
                    if (motionInterpolator4 != null) {
                        this.u = motionInterpolator4.a();
                    } else {
                        this.u = ((motionInterpolator4.getInterpolation(f4 + f3) - interpolation3) * fSignum) / f3;
                    }
                    f4 = interpolation3;
                }
                if (Math.abs(this.u) > 1.0E-5f) {
                    setState(TransitionState.MOVING);
                }
                if (c2 != 1) {
                    if ((fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM && f4 >= this.H) || (fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM && f4 <= this.H)) {
                        f4 = this.H;
                        this.J = false;
                    }
                    if (f4 < 1.0f || f4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        this.J = false;
                        setState(TransitionState.FINISHED);
                    }
                }
                childCount = getChildCount();
                this.b1 = false;
                nanoTime = getNanoTime();
                this.r1 = f4;
                interpolator = this.t;
                if (interpolator == null) {
                    interpolation = f4;
                } else {
                    interpolation = interpolator.getInterpolation(f4);
                }
                interpolator2 = this.t;
                if (interpolator2 != null) {
                    float interpolation4 = interpolator2.getInterpolation((fSignum / this.D) + f4);
                    this.u = interpolation4;
                    this.u = interpolation4 - this.t.getInterpolation(f4);
                }
                for (i2 = 0; i2 < childCount; i2++) {
                    childAt = getChildAt(i2);
                    motionController = (MotionController) this.B.get(childAt);
                    if (motionController != null) {
                        this.b1 = motionController.d(interpolation, nanoTime, childAt, this.s1) | this.b1;
                    }
                }
                boolean z5 = (fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM && f4 >= this.H) || (fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM && f4 <= this.H);
                if (!this.b1 && !this.J && z5) {
                    setState(TransitionState.FINISHED);
                }
                if (this.k1) {
                    requestLayout();
                }
                this.b1 = (!z5) | this.b1;
                if (f4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM && (i5 = this.v) != -1 && this.w != i5) {
                    this.w = i5;
                    this.r.b(i5).a(this);
                    setState(TransitionState.FINISHED);
                    z4 = true;
                }
                if (f4 >= 1.0d) {
                    i3 = this.w;
                    i4 = this.x;
                    if (i3 != i4) {
                        this.w = i4;
                        this.r.b(i4).a(this);
                        setState(TransitionState.FINISHED);
                        z4 = true;
                    }
                }
                if (!this.b1 || this.J) {
                    invalidate();
                } else if ((fSignum > Call.Parameters.DEFAULT_CAMERA_ZOOM && f4 == 1.0f) || (fSignum < Call.Parameters.DEFAULT_CAMERA_ZOOM && f4 == Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                    setState(TransitionState.FINISHED);
                }
                if (!this.b1 && !this.J && ((fSignum > Call.Parameters.DEFAULT_CAMERA_ZOOM && f4 == 1.0f) || (fSignum < Call.Parameters.DEFAULT_CAMERA_ZOOM && f4 == Call.Parameters.DEFAULT_CAMERA_ZOOM))) {
                    z();
                }
            }
            c2 = 0;
            if (Math.abs(this.u) > 1.0E-5f) {
                setState(TransitionState.MOVING);
            }
            if (c2 != 1) {
                if (fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f4 = this.H;
                    this.J = false;
                } else {
                    f4 = this.H;
                    this.J = false;
                }
                if (f4 < 1.0f) {
                    this.J = false;
                    setState(TransitionState.FINISHED);
                } else {
                    this.J = false;
                    setState(TransitionState.FINISHED);
                }
            }
            childCount = getChildCount();
            this.b1 = false;
            nanoTime = getNanoTime();
            this.r1 = f4;
            interpolator = this.t;
            if (interpolator == null) {
                interpolation = f4;
            } else {
                interpolation = interpolator.getInterpolation(f4);
            }
            interpolator2 = this.t;
            if (interpolator2 != null) {
                float interpolation5 = interpolator2.getInterpolation((fSignum / this.D) + f4);
                this.u = interpolation5;
                this.u = interpolation5 - this.t.getInterpolation(f4);
            }
            while (i2 < childCount) {
                childAt = getChildAt(i2);
                motionController = (MotionController) this.B.get(childAt);
                if (motionController != null) {
                    this.b1 = motionController.d(interpolation, nanoTime, childAt, this.s1) | this.b1;
                }
            }
            if (fSignum <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            }
            if (!this.b1) {
                setState(TransitionState.FINISHED);
            }
            if (this.k1) {
                requestLayout();
            }
            this.b1 = (!z5) | this.b1;
            if (f4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.w = i5;
                this.r.b(i5).a(this);
                setState(TransitionState.FINISHED);
                z4 = true;
            }
            if (f4 >= 1.0d) {
                i3 = this.w;
                i4 = this.x;
                if (i3 != i4) {
                    this.w = i4;
                    this.r.b(i4).a(this);
                    setState(TransitionState.FINISHED);
                    z4 = true;
                }
            }
            if (this.b1) {
                invalidate();
            } else {
                invalidate();
            }
            if (!this.b1) {
                z();
            }
        }
        float f5 = this.F;
        if (f5 < 1.0f) {
            if (f5 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                int i6 = this.w;
                int i7 = this.v;
                z3 = i6 == i7 ? z4 : true;
                this.w = i7;
            }
            this.A1 |= z4;
            if (z4 && !this.t1) {
                requestLayout();
            }
            this.E = this.F;
        }
        int i8 = this.w;
        int i9 = this.x;
        z3 = i8 == i9 ? z4 : true;
        this.w = i9;
        z4 = z3;
        this.A1 |= z4;
        if (z4) {
            requestLayout();
        }
        this.E = this.F;
    }

    @Override // android.view.View
    public final String toString() {
        Context context = getContext();
        return Debug.b(this.v, context) + "->" + Debug.b(this.x, context) + " (pos:" + this.F + " Dpos/Dt:" + this.u;
    }

    public final void u() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        CopyOnWriteArrayList copyOnWriteArrayList2;
        if ((this.K == null && ((copyOnWriteArrayList2 = this.e1) == null || copyOnWriteArrayList2.isEmpty())) || this.j1 == this.E) {
            return;
        }
        if (this.i1 != -1 && (copyOnWriteArrayList = this.e1) != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((TransitionListener) it.next()).getClass();
            }
        }
        this.i1 = -1;
        this.j1 = this.E;
        CopyOnWriteArrayList copyOnWriteArrayList3 = this.e1;
        if (copyOnWriteArrayList3 != null) {
            Iterator it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                ((TransitionListener) it2.next()).getClass();
            }
        }
    }

    public final void v() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if ((this.K != null || ((copyOnWriteArrayList = this.e1) != null && !copyOnWriteArrayList.isEmpty())) && this.i1 == -1) {
            this.i1 = this.w;
            ArrayList arrayList = this.E1;
            int iIntValue = !arrayList.isEmpty() ? ((Integer) cj.c(1, arrayList)).intValue() : -1;
            int i2 = this.w;
            if (iIntValue != i2 && i2 != -1) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        A();
        w21 w21Var = this.v1;
        if (w21Var != null) {
            w21Var.run();
            this.v1 = null;
        }
    }

    public final void w(int i2, float f2, float f3, float f4, float[] fArr) {
        double[] dArr;
        View viewC = c(i2);
        MotionController motionController = (MotionController) this.B.get(viewC);
        if (motionController == null) {
            if (viewC == null) {
                return;
            }
            viewC.getContext().getResources().getResourceName(i2);
            return;
        }
        MotionPaths motionPaths = motionController.f11617f;
        float[] fArr2 = motionController.v;
        float fA = motionController.a(f2, fArr2);
        CurveFit[] curveFitArr = motionController.f11620j;
        int i3 = 0;
        if (curveFitArr != null) {
            double d = fA;
            curveFitArr[0].e(d, motionController.q);
            motionController.f11620j[0].c(d, motionController.p);
            float f5 = fArr2[0];
            while (true) {
                dArr = motionController.q;
                if (i3 >= dArr.length) {
                    break;
                }
                dArr[i3] = dArr[i3] * ((double) f5);
                i3++;
            }
            ArcCurveFit arcCurveFit = motionController.f11621k;
            if (arcCurveFit != null) {
                double[] dArr2 = motionController.p;
                if (dArr2.length > 0) {
                    arcCurveFit.c(d, dArr2);
                    motionController.f11621k.e(d, motionController.q);
                    int[] iArr = motionController.o;
                    double[] dArr3 = motionController.q;
                    double[] dArr4 = motionController.p;
                    motionPaths.getClass();
                    MotionPaths.e(f3, f4, fArr, iArr, dArr3, dArr4);
                }
            } else {
                int[] iArr2 = motionController.o;
                double[] dArr5 = motionController.p;
                motionPaths.getClass();
                MotionPaths.e(f3, f4, fArr, iArr2, dArr, dArr5);
            }
        } else {
            MotionPaths motionPaths2 = motionController.g;
            float f6 = motionPaths2.f11651f - motionPaths.f11651f;
            float f7 = motionPaths2.g - motionPaths.g;
            float f8 = motionPaths2.f11652h - motionPaths.f11652h;
            float f9 = (motionPaths2.f11653i - motionPaths.f11653i) + f7;
            fArr[0] = ((f8 + f6) * f3) + ((1.0f - f3) * f6);
            fArr[1] = (f9 * f4) + ((1.0f - f4) * f7);
        }
        viewC.getY();
    }

    public final boolean x(float f2, float f3, View view, MotionEvent motionEvent) {
        boolean z;
        boolean zOnTouchEvent;
        if (!(view instanceof ViewGroup)) {
            z = false;
            break;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z = false;
                break;
            }
            View childAt = viewGroup.getChildAt(childCount);
            if (x((childAt.getLeft() + f2) - view.getScrollX(), (childAt.getTop() + f3) - view.getScrollY(), childAt, motionEvent)) {
                z = true;
                break;
            }
            childCount--;
        }
        if (!z) {
            float right = (view.getRight() + f2) - view.getLeft();
            float bottom = (view.getBottom() + f3) - view.getTop();
            RectF rectF = this.B1;
            rectF.set(f2, f3, right, bottom);
            if (motionEvent.getAction() != 0 || rectF.contains(motionEvent.getX(), motionEvent.getY())) {
                float f4 = -f2;
                float f5 = -f3;
                Matrix matrix = view.getMatrix();
                if (matrix.isIdentity()) {
                    motionEvent.offsetLocation(f4, f5);
                    zOnTouchEvent = view.onTouchEvent(motionEvent);
                    motionEvent.offsetLocation(-f4, -f5);
                } else {
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.offsetLocation(f4, f5);
                    if (this.D1 == null) {
                        this.D1 = new Matrix();
                    }
                    matrix.invert(this.D1);
                    motionEventObtain.transform(this.D1);
                    zOnTouchEvent = view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (zOnTouchEvent) {
                    return true;
                }
            }
        }
        return z;
    }

    public final void y(AttributeSet attributeSet) {
        MotionScene motionScene;
        MotionScene motionScene2;
        F1 = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.o);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z = true;
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 2) {
                    this.r = new MotionScene(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == 1) {
                    this.w = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == 4) {
                    this.H = typedArrayObtainStyledAttributes.getFloat(index, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    this.J = true;
                } else if (index == 0) {
                    z = typedArrayObtainStyledAttributes.getBoolean(index, z);
                } else if (index == 5) {
                    if (this.L == 0) {
                        this.L = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == 3) {
                    this.L = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (!z) {
                this.r = null;
            }
        }
        if (this.L != 0 && (motionScene2 = this.r) != null) {
            int iG = motionScene2.g();
            MotionScene motionScene3 = this.r;
            ConstraintSet constraintSetB = motionScene3.b(motionScene3.g());
            Debug.b(iG, getContext());
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (constraintSetB.k(childAt.getId()) == null) {
                    Debug.c(childAt);
                }
            }
            Integer[] numArr = (Integer[]) constraintSetB.g.keySet().toArray(new Integer[0]);
            int length = numArr.length;
            int[] iArr = new int[length];
            for (int i4 = 0; i4 < length; i4++) {
                iArr[i4] = numArr[i4].intValue();
            }
            for (int i5 = 0; i5 < length; i5++) {
                int i6 = iArr[i5];
                Debug.b(i6, getContext());
                findViewById(iArr[i5]);
                int i7 = constraintSetB.j(i6).f11771e.d;
                int i8 = constraintSetB.j(i6).f11771e.f11785c;
            }
            SparseIntArray sparseIntArray = new SparseIntArray();
            SparseIntArray sparseIntArray2 = new SparseIntArray();
            for (MotionScene.Transition transition : this.r.d) {
                MotionScene.Transition transition2 = this.r.f11658c;
                int i9 = transition.d;
                int i10 = transition.f11668c;
                Debug.b(i9, getContext());
                Debug.b(i10, getContext());
                sparseIntArray.get(i9);
                sparseIntArray2.get(i10);
                sparseIntArray.put(i9, i10);
                sparseIntArray2.put(i10, i9);
                this.r.b(i9);
                this.r.b(i10);
            }
        }
        if (this.w != -1 || (motionScene = this.r) == null) {
            return;
        }
        this.w = motionScene.g();
        this.v = this.r.g();
        MotionScene.Transition transition3 = this.r.f11658c;
        this.x = transition3 != null ? transition3.f11668c : -1;
    }

    public final void z() {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        View viewFindViewById;
        View viewFindViewById2;
        MotionScene motionScene = this.r;
        if (motionScene == null) {
            return;
        }
        if (motionScene.a(this.w, this)) {
            requestLayout();
            return;
        }
        int i2 = this.w;
        View viewFindViewById3 = null;
        if (i2 != -1) {
            MotionScene motionScene2 = this.r;
            ArrayList<MotionScene.Transition> arrayList = motionScene2.f11660f;
            ArrayList<MotionScene.Transition> arrayList2 = motionScene2.d;
            for (MotionScene.Transition transition2 : arrayList2) {
                if (transition2.m.size() > 0) {
                    Iterator it = transition2.m.iterator();
                    while (it.hasNext()) {
                        int i3 = ((MotionScene.Transition.TransitionOnClick) it.next()).f11676c;
                        if (i3 != -1 && (viewFindViewById2 = findViewById(i3)) != null) {
                            viewFindViewById2.setOnClickListener(null);
                        }
                    }
                }
            }
            for (MotionScene.Transition transition3 : arrayList) {
                if (transition3.m.size() > 0) {
                    Iterator it2 = transition3.m.iterator();
                    while (it2.hasNext()) {
                        int i4 = ((MotionScene.Transition.TransitionOnClick) it2.next()).f11676c;
                        if (i4 != -1 && (viewFindViewById = findViewById(i4)) != null) {
                            viewFindViewById.setOnClickListener(null);
                        }
                    }
                }
            }
            for (MotionScene.Transition transition4 : arrayList2) {
                if (transition4.m.size() > 0) {
                    Iterator it3 = transition4.m.iterator();
                    while (it3.hasNext()) {
                        ((MotionScene.Transition.TransitionOnClick) it3.next()).a(this, i2, transition4);
                    }
                }
            }
            for (MotionScene.Transition transition5 : arrayList) {
                if (transition5.m.size() > 0) {
                    Iterator it4 = transition5.m.iterator();
                    while (it4.hasNext()) {
                        ((MotionScene.Transition.TransitionOnClick) it4.next()).a(this, i2, transition5);
                    }
                }
            }
        }
        if (!this.r.n() || (transition = this.r.f11658c) == null || (touchResponse = transition.l) == null) {
            return;
        }
        MotionLayout motionLayout = touchResponse.r;
        int i5 = touchResponse.d;
        if (i5 != -1 && (viewFindViewById3 = motionLayout.findViewById(i5)) == null) {
            Debug.b(touchResponse.d, motionLayout.getContext());
        }
        if (viewFindViewById3 instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById3;
            nestedScrollView.setOnTouchListener(new TouchResponse.AnonymousClass1());
            nestedScrollView.setOnScrollChangeListener(new TouchResponse.AnonymousClass2());
        }
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.t = null;
        this.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.v = -1;
        this.w = -1;
        this.x = -1;
        this.y = 0;
        this.z = 0;
        this.A = true;
        this.B = new HashMap();
        this.C = 0L;
        this.D = 1.0f;
        this.E = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.H = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.J = false;
        this.L = 0;
        this.N = false;
        this.O = new StopLogic();
        this.P = new DecelerateInterpolator();
        this.T = false;
        this.b1 = false;
        this.c1 = null;
        this.d1 = null;
        this.e1 = null;
        this.f1 = 0;
        this.g1 = -1L;
        this.h1 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.i1 = 0;
        this.j1 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.k1 = false;
        this.s1 = new KeyCache();
        this.t1 = false;
        this.v1 = null;
        new HashMap();
        this.w1 = new Rect();
        this.x1 = false;
        this.y1 = TransitionState.UNDEFINED;
        this.z1 = new Model();
        this.A1 = false;
        this.B1 = new RectF();
        this.C1 = null;
        this.D1 = null;
        this.E1 = new ArrayList();
        y(attributeSet);
    }

    public void setTransition(MotionScene.Transition transition) {
        TouchResponse touchResponse;
        MotionScene motionScene = this.r;
        motionScene.f11658c = transition;
        if (transition != null && (touchResponse = transition.l) != null) {
            touchResponse.c(motionScene.p);
        }
        setState(TransitionState.SETUP);
        int i2 = this.w;
        MotionScene.Transition transition2 = this.r.f11658c;
        if (i2 == (transition2 == null ? -1 : transition2.f11668c)) {
            this.F = 1.0f;
            this.E = 1.0f;
            this.H = 1.0f;
        } else {
            this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.E = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.H = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        this.G = (transition.r & 1) != 0 ? -1L : getNanoTime();
        int iG = this.r.g();
        MotionScene motionScene2 = this.r;
        MotionScene.Transition transition3 = motionScene2.f11658c;
        int i3 = transition3 != null ? transition3.f11668c : -1;
        if (iG == this.v && i3 == this.x) {
            return;
        }
        this.v = iG;
        this.x = i3;
        motionScene2.m(iG, i3);
        ConstraintSet constraintSetB = this.r.b(this.v);
        ConstraintSet constraintSetB2 = this.r.b(this.x);
        Model model = this.z1;
        model.e(constraintSetB, constraintSetB2);
        int i4 = this.v;
        int i5 = this.x;
        model.f11640e = i4;
        model.f11641f = i5;
        model.f();
        B();
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.t = null;
        this.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.v = -1;
        this.w = -1;
        this.x = -1;
        this.y = 0;
        this.z = 0;
        this.A = true;
        this.B = new HashMap();
        this.C = 0L;
        this.D = 1.0f;
        this.E = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.H = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.J = false;
        this.L = 0;
        this.N = false;
        this.O = new StopLogic();
        this.P = new DecelerateInterpolator();
        this.T = false;
        this.b1 = false;
        this.c1 = null;
        this.d1 = null;
        this.e1 = null;
        this.f1 = 0;
        this.g1 = -1L;
        this.h1 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.i1 = 0;
        this.j1 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.k1 = false;
        this.s1 = new KeyCache();
        this.t1 = false;
        this.v1 = null;
        new HashMap();
        this.w1 = new Rect();
        this.x1 = false;
        this.y1 = TransitionState.UNDEFINED;
        this.z1 = new Model();
        this.A1 = false;
        this.B1 = new RectF();
        this.C1 = null;
        this.D1 = null;
        this.E1 = new ArrayList();
        y(attributeSet);
    }
}

package com.canhub.cropper;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ScaleGestureDetector;
import android.view.View;
import defpackage.md;
import defpackage.v40;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001:\u0003UVWB\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0015\u0010'\u001a\u00020\n2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\u0015\u0010*\u001a\u00020\n2\u0006\u0010)\u001a\u00020\u0015¢\u0006\u0004\b*\u0010\u0018J\u0015\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020\u001d¢\u0006\u0004\b,\u0010 J\u0015\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u001d¢\u0006\u0004\b.\u0010 J\u0015\u00101\u001a\u00020\n2\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102R(\u0010&\u001a\u0004\u0018\u00010%2\b\u00103\u001a\u0004\u0018\u00010%8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u00103\u001a\u0004\u0018\u00010\r8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R(\u0010@\u001a\u0004\u0018\u00010\u00112\b\u00103\u001a\u0004\u0018\u00010\u00118\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R$\u0010G\u001a\u00020A2\u0006\u0010B\u001a\u00020A8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR$\u0010H\u001a\u00020!2\u0006\u0010H\u001a\u00020!8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bI\u0010J\"\u0004\bK\u0010$R$\u0010L\u001a\u00020!2\u0006\u0010L\u001a\u00020!8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010J\"\u0004\bN\u0010$R(\u0010T\u001a\u0004\u0018\u00010O2\b\u0010B\u001a\u0004\u0018\u00010O8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010S¨\u0006X"}, d2 = {"Lcom/canhub/cropper/CropOverlayView;", "Landroid/view/View;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;", "listener", "", "setCropWindowChangeListener", "(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V", "Lcom/canhub/cropper/CropImageView$CropShape;", "cropShape", "setCropShape", "(Lcom/canhub/cropper/CropImageView$CropShape;)V", "Lcom/canhub/cropper/CropImageView$CropCornerShape;", "cropCornerShape", "setCropCornerShape", "(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V", "", "isEnabled", "setCropperTextLabelVisibility", "(Z)V", "", "textLabel", "setCropLabelText", "(Ljava/lang/String;)V", "", "textSize", "setCropLabelTextSize", "(F)V", "", "textColor", "setCropLabelTextColor", "(I)V", "Lcom/canhub/cropper/CropImageView$Guidelines;", "guidelines", "setGuidelines", "(Lcom/canhub/cropper/CropImageView$Guidelines;)V", "fixAspectRatio", "setFixedAspectRatio", "snapRadius", "setSnapRadius", "cornerRadius", "setCropCornerRadius", "Lcom/canhub/cropper/CropImageOptions;", "options", "setInitialAttributeValues", "(Lcom/canhub/cropper/CropImageOptions;)V", "value", "F", "Lcom/canhub/cropper/CropImageView$Guidelines;", "getGuidelines", "()Lcom/canhub/cropper/CropImageView$Guidelines;", "G", "Lcom/canhub/cropper/CropImageView$CropShape;", "getCropShape", "()Lcom/canhub/cropper/CropImageView$CropShape;", "H", "Lcom/canhub/cropper/CropImageView$CropCornerShape;", "getCornerShape", "()Lcom/canhub/cropper/CropImageView$CropCornerShape;", "cornerShape", "Landroid/graphics/RectF;", "rect", "getCropWindowRect", "()Landroid/graphics/RectF;", "setCropWindowRect", "(Landroid/graphics/RectF;)V", "cropWindowRect", "aspectRatioX", "getAspectRatioX", "()I", "setAspectRatioX", "aspectRatioY", "getAspectRatioY", "setAspectRatioY", "Landroid/graphics/Rect;", "getInitialCropWindowRect", "()Landroid/graphics/Rect;", "setInitialCropWindowRect", "(Landroid/graphics/Rect;)V", "initialCropWindowRect", "Companion", "CropWindowChangeListener", "ScaleListener", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CropOverlayView extends View {
    public static final Companion P = new Companion(null);
    public CropWindowMoveHandler A;
    public boolean B;
    public int C;
    public int D;
    public float E;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    public CropImageView.Guidelines guidelines;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    public CropImageView.CropShape cropShape;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    public CropImageView.CropCornerShape cornerShape;
    public boolean I;
    public String J;
    public float K;
    public int L;
    public final Rect M;
    public boolean N;
    public final float O;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f25086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f25087c;
    public CropImageOptions d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ScaleGestureDetector f25088e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f25089f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CropWindowHandler f25090h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CropWindowChangeListener f25091i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RectF f25092j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Paint f25093k;
    public Paint l;
    public Paint m;
    public Paint n;
    public Paint o;
    public Integer p;
    public final Path q;
    public final float[] r;
    public final RectF s;
    public int t;
    public int u;
    public float v;
    public float w;
    public float x;
    public float y;
    public float z;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropOverlayView$Companion;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Paint a(float f2, int i2) {
            if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return null;
            }
            Paint paint = new Paint();
            paint.setColor(i2);
            paint.setStrokeWidth(f2);
            paint.setStyle(Paint.Style.STROKE);
            paint.setAntiAlias(true);
            return paint;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bà\u0080\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface CropWindowChangeListener {
        void a(boolean z);
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/canhub/cropper/CropOverlayView$ScaleListener;", "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;", "<init>", "(Lcom/canhub/cropper/CropOverlayView;)V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            scaleGestureDetector.getClass();
            CropOverlayView cropOverlayView = CropOverlayView.this;
            RectF rectFG = cropOverlayView.f25090h.g();
            float focusX = scaleGestureDetector.getFocusX();
            float focusY = scaleGestureDetector.getFocusY();
            float currentSpanY = scaleGestureDetector.getCurrentSpanY() / 2.0f;
            float currentSpanX = scaleGestureDetector.getCurrentSpanX() / 2.0f;
            float f2 = focusY - currentSpanY;
            float f3 = focusX - currentSpanX;
            float f4 = focusX + currentSpanX;
            float f5 = focusY + currentSpanY;
            if (f3 >= f4 || f2 > f5 || f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM || f4 > cropOverlayView.f25090h.c() || f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM || f5 > cropOverlayView.f25090h.b()) {
                return true;
            }
            rectFG.set(f3, f2, f4, f5);
            CropWindowHandler cropWindowHandler = cropOverlayView.f25090h;
            cropWindowHandler.getClass();
            cropWindowHandler.f25097a.set(rectFG);
            cropOverlayView.invalidate();
            return true;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f25096b;

        static {
            int[] iArr = new int[CropImageView.CropShape.values().length];
            try {
                iArr[CropImageView.CropShape.RECTANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CropImageView.CropShape.RECTANGLE_VERTICAL_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CropImageView.CropShape.RECTANGLE_HORIZONTAL_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CropImageView.CropShape.OVAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f25095a = iArr;
            int[] iArr2 = new int[CropImageView.CropCornerShape.values().length];
            try {
                iArr2[CropImageView.CropCornerShape.OVAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[CropImageView.CropCornerShape.RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            f25096b = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CropOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.g = true;
        this.f25090h = new CropWindowHandler();
        this.f25092j = new RectF();
        this.q = new Path();
        this.r = new float[8];
        this.s = new RectF();
        this.E = this.C / this.D;
        this.J = "";
        this.K = 20.0f;
        this.L = -1;
        this.M = new Rect();
        this.O = TypedValue.applyDimension(1, 200.0f, Resources.getSystem().getDisplayMetrics());
    }

    public final boolean a(RectF rectF) {
        float f2;
        float f3;
        Rect rect = BitmapUtils.f25037a;
        float[] fArr = this.r;
        float fN = BitmapUtils.n(fArr);
        float fP = BitmapUtils.p(fArr);
        float fO = BitmapUtils.o(fArr);
        float fL = BitmapUtils.l(fArr);
        float f4 = fArr[0];
        float f5 = fArr[6];
        RectF rectF2 = this.s;
        if (f4 == f5 || fArr[1] == fArr[7]) {
            rectF2.set(fN, fP, fO, fL);
            return false;
        }
        float f6 = fArr[0];
        float f7 = fArr[1];
        float f8 = fArr[4];
        float f9 = fArr[5];
        float f10 = fArr[6];
        float f11 = fArr[7];
        if (f11 < f7) {
            float f12 = fArr[3];
            if (f7 < f12) {
                float f13 = fArr[2];
                f2 = f11;
                f11 = f12;
                f3 = f10;
                f7 = f9;
                f10 = f13;
                f6 = f8;
            } else {
                f10 = f6;
                f11 = f7;
                f7 = f12;
                f6 = fArr[2];
                f3 = f8;
                f2 = f9;
            }
        } else {
            f2 = fArr[3];
            if (f7 > f2) {
                f3 = fArr[2];
            } else {
                f3 = f6;
                f6 = f10;
                f2 = f7;
                f7 = f11;
                f10 = f8;
                f11 = f9;
            }
        }
        float f14 = (f7 - f2) / (f6 - f3);
        float f15 = (-1.0f) / f14;
        float f16 = f2 - (f14 * f3);
        float f17 = f2 - (f3 * f15);
        float f18 = f11 - (f14 * f10);
        float f19 = f11 - (f10 * f15);
        float fCenterY = rectF.centerY() - rectF.top;
        float fCenterX = rectF.centerX();
        float f20 = rectF.left;
        float f21 = fCenterY / (fCenterX - f20);
        float f22 = -f21;
        float f23 = rectF.top;
        float f24 = f23 - (f20 * f21);
        float f25 = rectF.right;
        float f26 = f23 - (f22 * f25);
        float f27 = f14 - f21;
        float f28 = (f24 - f16) / f27;
        float fMax = Math.max(fN, f28 < f25 ? f28 : fN);
        float f29 = (f24 - f17) / (f15 - f21);
        if (f29 >= rectF.right) {
            f29 = fMax;
        }
        float fMax2 = Math.max(fMax, f29);
        float f30 = f15 - f22;
        float f31 = (f26 - f19) / f30;
        float fMax3 = Math.max(fMax2, f31 < rectF.right ? f31 : fMax2);
        float f32 = (f26 - f17) / f30;
        if (f32 <= rectF.left) {
            f32 = fO;
        }
        float fMin = Math.min(fO, f32);
        float f33 = (f26 - f18) / (f14 - f22);
        if (f33 <= rectF.left) {
            f33 = fMin;
        }
        float fMin2 = Math.min(fMin, f33);
        float f34 = (f24 - f18) / f27;
        if (f34 <= rectF.left) {
            f34 = fMin2;
        }
        float fMin3 = Math.min(fMin2, f34);
        float fMax4 = Math.max(fP, Math.max((f14 * fMax3) + f16, (f15 * fMin3) + f17));
        float fMin4 = Math.min(fL, Math.min((f15 * fMax3) + f19, (f14 * fMin3) + f18));
        rectF2.left = fMax3;
        rectF2.top = fMax4;
        rectF2.right = fMin3;
        rectF2.bottom = fMin4;
        return true;
    }

    public final void b(Canvas canvas, RectF rectF, float f2, float f3) {
        CropImageView.CropShape cropShape = this.cropShape;
        int i2 = cropShape == null ? -1 : WhenMappings.f25095a[cropShape.ordinal()];
        if (i2 == 1) {
            float f4 = this.f25086b;
            CropImageView.CropCornerShape cropCornerShape = this.cornerShape;
            int i3 = cropCornerShape == null ? -1 : WhenMappings.f25096b[cropCornerShape.ordinal()];
            if (i3 != -1) {
                if (i3 != 1) {
                    if (i3 == 2) {
                        d(canvas, rectF, f2, f3);
                        return;
                    } else {
                        v40.g();
                        return;
                    }
                }
                float f5 = rectF.left - f2;
                float f6 = rectF.top - f2;
                Paint paint = this.l;
                paint.getClass();
                canvas.drawCircle(f5, f6, f4, paint);
                float f7 = rectF.right + f2;
                float f8 = rectF.top - f2;
                Paint paint2 = this.l;
                paint2.getClass();
                canvas.drawCircle(f7, f8, f4, paint2);
                float f9 = rectF.left - f2;
                float f10 = rectF.bottom + f2;
                Paint paint3 = this.l;
                paint3.getClass();
                canvas.drawCircle(f9, f10, f4, paint3);
                float f11 = rectF.right + f2;
                float f12 = rectF.bottom + f2;
                Paint paint4 = this.l;
                paint4.getClass();
                canvas.drawCircle(f11, f12, f4, paint4);
                return;
            }
            return;
        }
        if (i2 == 2) {
            float fCenterX = rectF.centerX() - this.w;
            float f13 = rectF.top - f2;
            float fCenterX2 = this.w + rectF.centerX();
            float f14 = rectF.top - f2;
            Paint paint5 = this.l;
            paint5.getClass();
            canvas.drawLine(fCenterX, f13, fCenterX2, f14, paint5);
            float fCenterX3 = rectF.centerX() - this.w;
            float f15 = rectF.bottom + f2;
            float fCenterX4 = rectF.centerX() + this.w;
            float f16 = rectF.bottom + f2;
            Paint paint6 = this.l;
            paint6.getClass();
            canvas.drawLine(fCenterX3, f15, fCenterX4, f16, paint6);
            return;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                d(canvas, rectF, f2, f3);
                return;
            } else {
                md.k("Unrecognized crop shape");
                return;
            }
        }
        float f17 = rectF.left - f2;
        float fCenterY = rectF.centerY() - this.w;
        float f18 = rectF.left - f2;
        float fCenterY2 = this.w + rectF.centerY();
        Paint paint7 = this.l;
        paint7.getClass();
        canvas.drawLine(f17, fCenterY, f18, fCenterY2, paint7);
        float f19 = rectF.right + f2;
        float fCenterY3 = rectF.centerY() - this.w;
        float f20 = rectF.right + f2;
        float fCenterY4 = rectF.centerY() + this.w;
        Paint paint8 = this.l;
        paint8.getClass();
        canvas.drawLine(f19, fCenterY3, f20, fCenterY4, paint8);
    }

    public final void c(Canvas canvas) {
        if (this.m != null) {
            Paint paint = this.f25093k;
            float strokeWidth = paint != null ? paint.getStrokeWidth() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
            RectF rectFG = this.f25090h.g();
            rectFG.inset(strokeWidth, strokeWidth);
            float fWidth = rectFG.width() / 3.0f;
            float fHeight = rectFG.height() / 3.0f;
            CropImageView.CropShape cropShape = this.cropShape;
            int i2 = cropShape == null ? -1 : WhenMappings.f25095a[cropShape.ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                float f2 = rectFG.left + fWidth;
                float f3 = rectFG.right - fWidth;
                float f4 = rectFG.top;
                float f5 = rectFG.bottom;
                Paint paint2 = this.m;
                paint2.getClass();
                canvas.drawLine(f2, f4, f2, f5, paint2);
                float f6 = rectFG.top;
                float f7 = rectFG.bottom;
                Paint paint3 = this.m;
                paint3.getClass();
                canvas.drawLine(f3, f6, f3, f7, paint3);
                float f8 = rectFG.top + fHeight;
                float f9 = rectFG.bottom - fHeight;
                float f10 = rectFG.left;
                float f11 = rectFG.right;
                Paint paint4 = this.m;
                paint4.getClass();
                canvas.drawLine(f10, f8, f11, f8, paint4);
                float f12 = rectFG.left;
                float f13 = rectFG.right;
                Paint paint5 = this.m;
                paint5.getClass();
                canvas.drawLine(f12, f9, f13, f9, paint5);
                return;
            }
            if (i2 != 4) {
                md.k("Unrecognized crop shape");
                return;
            }
            float fWidth2 = (rectFG.width() / 2.0f) - strokeWidth;
            float fHeight2 = (rectFG.height() / 2.0f) - strokeWidth;
            float f14 = rectFG.left + fWidth;
            float f15 = rectFG.right - fWidth;
            float fSin = (float) (Math.sin(Math.acos((fWidth2 - fWidth) / fWidth2)) * ((double) fHeight2));
            float f16 = (rectFG.top + fHeight2) - fSin;
            float f17 = (rectFG.bottom - fHeight2) + fSin;
            Paint paint6 = this.m;
            paint6.getClass();
            canvas.drawLine(f14, f16, f14, f17, paint6);
            float f18 = (rectFG.top + fHeight2) - fSin;
            float f19 = (rectFG.bottom - fHeight2) + fSin;
            Paint paint7 = this.m;
            paint7.getClass();
            canvas.drawLine(f15, f18, f15, f19, paint7);
            float f20 = rectFG.top + fHeight;
            float f21 = rectFG.bottom - fHeight;
            float fCos = (float) (Math.cos(Math.asin((fHeight2 - fHeight) / fHeight2)) * ((double) fWidth2));
            float f22 = (rectFG.left + fWidth2) - fCos;
            float f23 = (rectFG.right - fWidth2) + fCos;
            Paint paint8 = this.m;
            paint8.getClass();
            canvas.drawLine(f22, f20, f23, f20, paint8);
            float f24 = (rectFG.left + fWidth2) - fCos;
            float f25 = (rectFG.right - fWidth2) + fCos;
            Paint paint9 = this.m;
            paint9.getClass();
            canvas.drawLine(f24, f21, f25, f21, paint9);
        }
    }

    public final void d(Canvas canvas, RectF rectF, float f2, float f3) {
        float f4 = rectF.left - f2;
        float f5 = rectF.top;
        float f6 = f5 + this.w;
        Paint paint = this.l;
        paint.getClass();
        canvas.drawLine(f4, f5 - f3, f4, f6, paint);
        float f7 = rectF.left;
        float f8 = rectF.top - f2;
        float f9 = f7 + this.w;
        Paint paint2 = this.l;
        paint2.getClass();
        canvas.drawLine(f7 - f3, f8, f9, f8, paint2);
        float f10 = rectF.right + f2;
        float f11 = rectF.top;
        float f12 = f11 + this.w;
        Paint paint3 = this.l;
        paint3.getClass();
        canvas.drawLine(f10, f11 - f3, f10, f12, paint3);
        float f13 = rectF.right;
        float f14 = rectF.top - f2;
        float f15 = f13 - this.w;
        Paint paint4 = this.l;
        paint4.getClass();
        canvas.drawLine(f13 + f3, f14, f15, f14, paint4);
        float f16 = rectF.left - f2;
        float f17 = rectF.bottom;
        float f18 = f17 - this.w;
        Paint paint5 = this.l;
        paint5.getClass();
        canvas.drawLine(f16, f17 + f3, f16, f18, paint5);
        float f19 = rectF.left;
        float f20 = rectF.bottom + f2;
        float f21 = f19 + this.w;
        Paint paint6 = this.l;
        paint6.getClass();
        canvas.drawLine(f19 - f3, f20, f21, f20, paint6);
        float f22 = rectF.right + f2;
        float f23 = rectF.bottom;
        float f24 = f23 - this.w;
        Paint paint7 = this.l;
        paint7.getClass();
        canvas.drawLine(f22, f23 + f3, f22, f24, paint7);
        float f25 = rectF.right;
        float f26 = rectF.bottom + f2;
        float f27 = f25 - this.w;
        Paint paint8 = this.l;
        paint8.getClass();
        canvas.drawLine(f25 + f3, f26, f27, f26, paint8);
    }

    public final void e(RectF rectF) {
        float fWidth = rectF.width();
        CropWindowHandler cropWindowHandler = this.f25090h;
        if (fWidth < cropWindowHandler.e()) {
            float fE = (cropWindowHandler.e() - rectF.width()) / 2.0f;
            rectF.left -= fE;
            rectF.right += fE;
        }
        if (rectF.height() < cropWindowHandler.d()) {
            float fD = (cropWindowHandler.d() - rectF.height()) / 2.0f;
            rectF.top -= fD;
            rectF.bottom += fD;
        }
        if (rectF.width() > cropWindowHandler.c()) {
            float fWidth2 = (rectF.width() - cropWindowHandler.c()) / 2.0f;
            rectF.left += fWidth2;
            rectF.right -= fWidth2;
        }
        if (rectF.height() > cropWindowHandler.b()) {
            float fHeight = (rectF.height() - cropWindowHandler.b()) / 2.0f;
            rectF.top += fHeight;
            rectF.bottom -= fHeight;
        }
        a(rectF);
        RectF rectF2 = this.s;
        if (rectF2.width() > Call.Parameters.DEFAULT_CAMERA_ZOOM && rectF2.height() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float fMax = Math.max(rectF2.left, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            float fMax2 = Math.max(rectF2.top, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            float fMin = Math.min(rectF2.right, getWidth());
            float fMin2 = Math.min(rectF2.bottom, getHeight());
            if (rectF.left < fMax) {
                rectF.left = fMax;
            }
            if (rectF.top < fMax2) {
                rectF.top = fMax2;
            }
            if (rectF.right > fMin) {
                rectF.right = fMin;
            }
            if (rectF.bottom > fMin2) {
                rectF.bottom = fMin2;
            }
        }
        if (!this.B || Math.abs(rectF.width() - (rectF.height() * this.E)) <= 0.1d) {
            return;
        }
        if (rectF.width() > rectF.height() * this.E) {
            float fAbs = Math.abs((rectF.height() * this.E) - rectF.width()) / 2.0f;
            rectF.left += fAbs;
            rectF.right -= fAbs;
        } else {
            float fAbs2 = Math.abs((rectF.width() / this.E) - rectF.height()) / 2.0f;
            rectF.top += fAbs2;
            rectF.bottom -= fAbs2;
        }
    }

    public final void f() {
        Rect rect = BitmapUtils.f25037a;
        float[] fArr = this.r;
        float fMax = Math.max(BitmapUtils.n(fArr), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float fMax2 = Math.max(BitmapUtils.p(fArr), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float fMin = Math.min(BitmapUtils.o(fArr), getWidth());
        float fMin2 = Math.min(BitmapUtils.l(fArr), getHeight());
        if (fMin <= fMax || fMin2 <= fMax2) {
            return;
        }
        RectF rectF = new RectF();
        this.N = true;
        float f2 = this.x;
        float f3 = fMin - fMax;
        float f4 = f2 * f3;
        float f5 = fMin2 - fMax2;
        float f6 = f2 * f5;
        Rect rect2 = this.M;
        int iWidth = rect2.width();
        CropWindowHandler cropWindowHandler = this.f25090h;
        if (iWidth > 0 && rect2.height() > 0) {
            float f7 = (rect2.left / cropWindowHandler.f25105k) + fMax;
            rectF.left = f7;
            rectF.top = (rect2.top / cropWindowHandler.l) + fMax2;
            rectF.right = (rect2.width() / cropWindowHandler.f25105k) + f7;
            rectF.bottom = (rect2.height() / cropWindowHandler.l) + rectF.top;
            rectF.left = Math.max(fMax, rectF.left);
            rectF.top = Math.max(fMax2, rectF.top);
            rectF.right = Math.min(fMin, rectF.right);
            rectF.bottom = Math.min(fMin2, rectF.bottom);
        } else if (!this.B || fMin <= fMax || fMin2 <= fMax2) {
            rectF.left = fMax + f4;
            rectF.top = fMax2 + f6;
            rectF.right = fMin - f4;
            rectF.bottom = fMin2 - f6;
        } else if (f3 / f5 > this.E) {
            rectF.top = fMax2 + f6;
            rectF.bottom = fMin2 - f6;
            float width = getWidth() / 2.0f;
            this.E = this.C / this.D;
            float fMax3 = Math.max(cropWindowHandler.e(), rectF.height() * this.E) / 2.0f;
            rectF.left = width - fMax3;
            rectF.right = width + fMax3;
        } else {
            rectF.left = fMax + f4;
            rectF.right = fMin - f4;
            float height = getHeight() / 2.0f;
            float fMax4 = Math.max(cropWindowHandler.d(), rectF.width() / this.E) / 2.0f;
            rectF.top = height - fMax4;
            rectF.bottom = height + fMax4;
        }
        e(rectF);
        cropWindowHandler.getClass();
        cropWindowHandler.f25097a.set(rectF);
    }

    public final void g() {
        if (this.N) {
            setCropWindowRect(BitmapUtils.f25038b);
            f();
            invalidate();
        }
    }

    /* JADX INFO: renamed from: getAspectRatioX, reason: from getter */
    public final int getC() {
        return this.C;
    }

    /* JADX INFO: renamed from: getAspectRatioY, reason: from getter */
    public final int getD() {
        return this.D;
    }

    public final CropImageView.CropCornerShape getCornerShape() {
        return this.cornerShape;
    }

    public final CropImageView.CropShape getCropShape() {
        return this.cropShape;
    }

    public final RectF getCropWindowRect() {
        return this.f25090h.g();
    }

    public final CropImageView.Guidelines getGuidelines() {
        return this.guidelines;
    }

    /* JADX INFO: renamed from: getInitialCropWindowRect, reason: from getter */
    public final Rect getM() {
        return this.M;
    }

    public final void h(int i2, int i3, float[] fArr) {
        float[] fArr2 = this.r;
        if (fArr == null || !Arrays.equals(fArr2, fArr)) {
            if (fArr == null) {
                Arrays.fill(fArr2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            } else {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            }
            this.t = i2;
            this.u = i3;
            RectF rectFG = this.f25090h.g();
            if (rectFG.width() == Call.Parameters.DEFAULT_CAMERA_ZOOM || rectFG.height() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f();
            }
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i2;
        int i3;
        Canvas canvas2;
        Paint paint;
        canvas.getClass();
        super.onDraw(canvas);
        CropWindowHandler cropWindowHandler = this.f25090h;
        RectF rectFG = cropWindowHandler.g();
        Rect rect = BitmapUtils.f25037a;
        float[] fArr = this.r;
        float fMax = Math.max(BitmapUtils.n(fArr), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float fMax2 = Math.max(BitmapUtils.p(fArr), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float fMin = Math.min(BitmapUtils.o(fArr), getWidth());
        float fMin2 = Math.min(BitmapUtils.l(fArr), getHeight());
        CropImageView.CropShape cropShape = this.cropShape;
        int i4 = cropShape == null ? -1 : WhenMappings.f25095a[cropShape.ordinal()];
        Path path = this.q;
        if (i4 == 1 || i4 == 2 || i4 == 3) {
            i2 = 4;
            i3 = 3;
            if (fArr[0] == fArr[6] || fArr[1] == fArr[7]) {
                float f2 = rectFG.top;
                Paint paint2 = this.n;
                paint2.getClass();
                canvas2 = canvas;
                canvas2.drawRect(fMax, fMax2, fMin, f2, paint2);
                float f3 = rectFG.bottom;
                Paint paint3 = this.n;
                paint3.getClass();
                canvas2.drawRect(fMax, f3, fMin, fMin2, paint3);
                float f4 = rectFG.top;
                float f5 = rectFG.left;
                float f6 = rectFG.bottom;
                Paint paint4 = this.n;
                paint4.getClass();
                canvas2.drawRect(fMax, f4, f5, f6, paint4);
                float f7 = rectFG.right;
                float f8 = rectFG.top;
                float f9 = rectFG.bottom;
                Paint paint5 = this.n;
                paint5.getClass();
                canvas2.drawRect(f7, f8, fMin, f9, paint5);
            } else {
                path.reset();
                path.moveTo(fArr[0], fArr[1]);
                path.lineTo(fArr[2], fArr[3]);
                path.lineTo(fArr[4], fArr[5]);
                path.lineTo(fArr[6], fArr[7]);
                path.close();
                canvas.save();
                canvas.clipOutPath(path);
                Paint paint6 = this.n;
                paint6.getClass();
                canvas2 = canvas;
                canvas2.drawRect(fMax, fMax2, fMin, fMin2, paint6);
                canvas2.restore();
            }
        } else {
            if (i4 != 4) {
                md.k("Unrecognized crop shape");
                return;
            }
            path.reset();
            float f10 = rectFG.left;
            float f11 = rectFG.top;
            i2 = 4;
            float f12 = rectFG.right;
            float f13 = rectFG.bottom;
            i3 = 3;
            RectF rectF = this.f25092j;
            rectF.set(f10, f11, f12, f13);
            path.addOval(rectF, Path.Direction.CW);
            canvas.save();
            canvas.clipOutPath(path);
            Paint paint7 = this.n;
            paint7.getClass();
            canvas.drawRect(fMax, fMax2, fMin, fMin2, paint7);
            canvas.restore();
            canvas2 = canvas;
        }
        RectF rectF2 = cropWindowHandler.f25097a;
        if (rectF2.width() >= 100.0f && rectF2.height() >= 100.0f) {
            CropImageView.Guidelines guidelines = this.guidelines;
            if (guidelines == CropImageView.Guidelines.ON) {
                c(canvas);
            } else if (guidelines == CropImageView.Guidelines.ON_TOUCH && this.A != null) {
                c(canvas);
            }
        }
        CropImageOptions cropImageOptions = this.d;
        float f14 = cropImageOptions != null ? cropImageOptions.z : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i5 = cropImageOptions != null ? cropImageOptions.C : -1;
        P.getClass();
        this.l = Companion.a(f14, i5);
        if (this.I) {
            RectF rectFG2 = cropWindowHandler.g();
            float f15 = (rectFG2.left + rectFG2.right) / 2.0f;
            float f16 = rectFG2.top - 50.0f;
            Paint paint8 = this.o;
            if (paint8 != null) {
                paint8.setTextSize(this.K);
                paint8.setColor(this.L);
            }
            String str = this.J;
            Paint paint9 = this.o;
            paint9.getClass();
            canvas2.drawText(str, f15, f16, paint9);
            canvas2.save();
        }
        Paint paint10 = this.f25093k;
        if (paint10 != null) {
            float strokeWidth = paint10.getStrokeWidth();
            RectF rectFG3 = cropWindowHandler.g();
            float f17 = strokeWidth / 2.0f;
            rectFG3.inset(f17, f17);
            CropImageView.CropShape cropShape2 = this.cropShape;
            int i6 = cropShape2 == null ? -1 : WhenMappings.f25095a[cropShape2.ordinal()];
            if (i6 == 1 || i6 == 2 || i6 == i3) {
                Paint paint11 = this.f25093k;
                paint11.getClass();
                canvas2.drawRect(rectFG3, paint11);
            } else if (i6 != i2) {
                md.k("Unrecognized crop shape");
                return;
            } else {
                Paint paint12 = this.f25093k;
                paint12.getClass();
                canvas2.drawOval(rectFG3, paint12);
            }
        }
        if (this.l != null) {
            Paint paint13 = this.f25093k;
            float strokeWidth2 = paint13 != null ? paint13.getStrokeWidth() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
            Paint paint14 = this.l;
            paint14.getClass();
            float strokeWidth3 = paint14.getStrokeWidth();
            float f18 = (strokeWidth3 - strokeWidth2) / 2.0f;
            float f19 = strokeWidth3 / 2.0f;
            float f20 = f19 + f18;
            CropImageView.CropShape cropShape3 = this.cropShape;
            int i7 = cropShape3 == null ? -1 : WhenMappings.f25095a[cropShape3.ordinal()];
            if (i7 == 1 || i7 == 2 || i7 == 3) {
                f19 += this.v;
            } else if (i7 != 4) {
                md.k("Unrecognized crop shape");
                return;
            }
            RectF rectFG4 = cropWindowHandler.g();
            rectFG4.inset(f19, f19);
            b(canvas2, rectFG4, f18, f20);
            if (this.cornerShape == CropImageView.CropCornerShape.OVAL) {
                Integer num = this.f25087c;
                if (num != null) {
                    int iIntValue = num.intValue();
                    paint = new Paint();
                    paint.setColor(iIntValue);
                    paint.setStyle(Paint.Style.FILL);
                    paint.setAntiAlias(true);
                } else {
                    paint = null;
                }
                this.l = paint;
                b(canvas2, rectFG4, f18, f20);
            }
        }
        RectF rectFG5 = cropWindowHandler.g();
        List<Rect> systemGestureExclusionRects = getSystemGestureExclusionRects();
        systemGestureExclusionRects.getClass();
        Rect rect2 = systemGestureExclusionRects.size() > 0 ? systemGestureExclusionRects.get(0) : new Rect();
        List<Rect> systemGestureExclusionRects2 = getSystemGestureExclusionRects();
        systemGestureExclusionRects2.getClass();
        Rect rect3 = 1 < systemGestureExclusionRects2.size() ? systemGestureExclusionRects2.get(1) : new Rect();
        List<Rect> systemGestureExclusionRects3 = getSystemGestureExclusionRects();
        systemGestureExclusionRects3.getClass();
        Rect rect4 = 2 < systemGestureExclusionRects3.size() ? systemGestureExclusionRects3.get(2) : new Rect();
        float f21 = rectFG5.left;
        float f22 = this.y;
        int i8 = (int) (f21 - f22);
        rect2.left = i8;
        int i9 = (int) (rectFG5.right + f22);
        rect2.right = i9;
        float f23 = rectFG5.top;
        int i10 = (int) (f23 - f22);
        rect2.top = i10;
        float f24 = this.O;
        float f25 = 0.3f * f24;
        rect2.bottom = (int) (i10 + f25);
        rect3.left = i8;
        rect3.right = i9;
        float f26 = rectFG5.bottom;
        int i11 = (int) (((f23 + f26) / 2.0f) - (0.2f * f24));
        rect3.top = i11;
        rect3.bottom = (int) ((f24 * 0.4f) + i11);
        rect4.left = rect2.left;
        rect4.right = rect2.right;
        int i12 = (int) (f26 + f22);
        rect4.bottom = i12;
        rect4.top = (int) (i12 - f25);
        setSystemGestureExclusionRects(CollectionsKt.P(rect2, rect3, rect4));
    }

    /* JADX WARN: Code duplicated, block: B:168:0x0446  */
    /* JADX WARN: Code duplicated, block: B:175:0x0462  */
    /* JADX WARN: Code duplicated, block: B:177:0x046c  */
    /* JADX WARN: Code duplicated, block: B:182:0x047d  */
    /* JADX WARN: Code duplicated, block: B:184:0x048d  */
    /* JADX WARN: Code duplicated, block: B:189:0x0498  */
    /* JADX WARN: Code duplicated, block: B:191:0x04a8  */
    /* JADX WARN: Code duplicated, block: B:196:0x04b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:197:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:207:0x04dd  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d0  */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
    
        if (r2 != 3) goto L14;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instruction units count: 1312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropOverlayView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setAspectRatioX(int i2) {
        if (i2 <= 0) {
            md.n("Cannot set aspect ratio value to a number less than or equal to 0.");
            return;
        }
        if (this.C != i2) {
            this.C = i2;
            this.E = i2 / this.D;
            if (this.N) {
                f();
                invalidate();
            }
        }
    }

    public final void setAspectRatioY(int i2) {
        if (i2 <= 0) {
            md.n("Cannot set aspect ratio value to a number less than or equal to 0.");
            return;
        }
        if (this.D != i2) {
            this.D = i2;
            this.E = this.C / i2;
            if (this.N) {
                f();
                invalidate();
            }
        }
    }

    public final void setCropCornerRadius(float cornerRadius) {
        this.f25086b = cornerRadius;
    }

    public final void setCropCornerShape(CropImageView.CropCornerShape cropCornerShape) {
        cropCornerShape.getClass();
        if (this.cornerShape != cropCornerShape) {
            this.cornerShape = cropCornerShape;
            invalidate();
        }
    }

    public final void setCropLabelText(String textLabel) {
        if (textLabel != null) {
            this.J = textLabel;
        }
    }

    public final void setCropLabelTextColor(int textColor) {
        this.L = textColor;
        invalidate();
    }

    public final void setCropLabelTextSize(float textSize) {
        this.K = textSize;
        invalidate();
    }

    public final void setCropShape(CropImageView.CropShape cropShape) {
        cropShape.getClass();
        if (this.cropShape != cropShape) {
            this.cropShape = cropShape;
            invalidate();
        }
    }

    public final void setCropWindowChangeListener(CropWindowChangeListener listener) {
        this.f25091i = listener;
    }

    public final void setCropWindowRect(RectF rectF) {
        rectF.getClass();
        CropWindowHandler cropWindowHandler = this.f25090h;
        cropWindowHandler.getClass();
        cropWindowHandler.f25097a.set(rectF);
    }

    public final void setCropperTextLabelVisibility(boolean isEnabled) {
        this.I = isEnabled;
        invalidate();
    }

    public final void setFixedAspectRatio(boolean fixAspectRatio) {
        if (this.B != fixAspectRatio) {
            this.B = fixAspectRatio;
            if (this.N) {
                f();
                invalidate();
            }
        }
    }

    public final void setGuidelines(CropImageView.Guidelines guidelines) {
        guidelines.getClass();
        if (this.guidelines != guidelines) {
            this.guidelines = guidelines;
            if (this.N) {
                invalidate();
            }
        }
    }

    public final void setInitialAttributeValues(CropImageOptions options) {
        CropWindowChangeListener cropWindowChangeListener;
        options.getClass();
        int i2 = options.w;
        int i3 = options.v;
        boolean z = options.u;
        boolean zC = Intrinsics.c(this.d, options);
        CropImageOptions cropImageOptions = this.d;
        boolean z2 = (cropImageOptions != null && z == cropImageOptions.u && i3 == cropImageOptions.v && i2 == cropImageOptions.w) ? false : true;
        this.d = options;
        int i4 = options.J;
        float f2 = options.l1;
        int i5 = options.m1;
        int i6 = options.M;
        int i7 = options.L;
        int i8 = options.K;
        CropWindowHandler cropWindowHandler = this.f25090h;
        cropWindowHandler.g = i4;
        float f3 = i8;
        cropWindowHandler.f25102h = f3;
        float f4 = i7;
        cropWindowHandler.f25103i = f4;
        float f5 = i6;
        cropWindowHandler.f25104j = f5;
        if (zC) {
            return;
        }
        cropWindowHandler.f25099c = options.H;
        cropWindowHandler.d = options.I;
        cropWindowHandler.g = i4;
        cropWindowHandler.f25102h = f3;
        cropWindowHandler.f25103i = f4;
        cropWindowHandler.f25104j = f5;
        this.L = i5;
        this.K = f2;
        String str = options.n1;
        if (str == null) {
            str = "";
        }
        this.J = str;
        this.I = options.l;
        this.f25086b = options.f25067f;
        this.cornerShape = options.f25066e;
        this.cropShape = options.d;
        this.z = options.g;
        setEnabled(options.r);
        this.guidelines = options.f25069i;
        this.B = z;
        setAspectRatioX(i3);
        setAspectRatioY(i2);
        boolean z3 = options.p;
        this.f25089f = z3;
        if (z3 && this.f25088e == null) {
            this.f25088e = new ScaleGestureDetector(getContext(), new ScaleListener());
        }
        this.g = options.q;
        this.y = options.f25068h;
        this.x = options.t;
        float f6 = options.x;
        int i9 = options.y;
        P.getClass();
        this.f25093k = Companion.a(f6, i9);
        this.v = options.A;
        this.w = options.B;
        this.f25087c = Integer.valueOf(options.D);
        this.l = Companion.a(options.z, options.C);
        this.m = Companion.a(options.E, options.F);
        int i10 = options.G;
        Paint paint = new Paint();
        paint.setColor(i10);
        this.n = paint;
        Paint paint2 = new Paint();
        paint2.setStrokeWidth(1.0f);
        paint2.setTextSize(f2);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setTextAlign(Paint.Align.CENTER);
        paint2.setColor(i5);
        this.o = paint2;
        if (z2) {
            f();
        }
        invalidate();
        if (!z2 || (cropWindowChangeListener = this.f25091i) == null) {
            return;
        }
        cropWindowChangeListener.a(false);
    }

    public final void setInitialCropWindowRect(Rect rect) {
        if (rect == null) {
            rect = BitmapUtils.f25037a;
        }
        this.M.set(rect);
        if (this.N) {
            f();
            invalidate();
            CropWindowChangeListener cropWindowChangeListener = this.f25091i;
            if (cropWindowChangeListener != null) {
                cropWindowChangeListener.a(false);
            }
        }
    }

    public final void setSnapRadius(float snapRadius) {
        this.z = snapRadius;
    }

    public /* synthetic */ CropOverlayView(Context context, AttributeSet attributeSet, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CropOverlayView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        context.getClass();
    }
}

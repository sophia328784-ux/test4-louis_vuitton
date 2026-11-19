package com.sightcall.mediacapture.presenter.views.collimator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.sightcall.mediacapture.R;
import defpackage.SCCollimator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 (2\u00020\u0001:\u0001(B\u0013\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001d\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bB%\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\nH\u0014J\b\u0010#\u001a\u00020 H\u0002J\b\u0010$\u001a\u00020 H\u0002J\u0010\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020'H\u0014R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u0013@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;", "Landroid/view/View;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "value", "LSCCollimator;", "collimator", "getCollimator", "()LSCCollimator;", "setCollimator", "(LSCCollimator;)V", "", "focusCornerRadius", "getFocusCornerRadius", "()F", "setFocusCornerRadius", "(F)V", "focusPaint", "Landroid/graphics/Paint;", "focusPath", "Landroid/graphics/Path;", "focusRect", "Landroid/graphics/RectF;", "onMeasure", "", "widthMeasureSpec", "heightMeasureSpec", "redrawFocusPath", "calculateFocusRect", "onDraw", "canvas", "Landroid/graphics/Canvas;", "Companion", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CollimatorView extends View {
    private static final float DEFAULT_VALUE = 0.0f;
    private SCCollimator collimator;
    private float focusCornerRadius;
    private Paint focusPaint;
    private Path focusPath;
    private RectF focusRect;

    public CollimatorView(Context context, AttributeSet attributeSet, int i2) {
        Resources.Theme theme;
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i2);
        this.focusPaint = new Paint();
        this.focusPath = new Path();
        if (context != null && (theme = context.getTheme()) != null && (typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.CollimatorView, 0, 0)) != null) {
            setFocusCornerRadius(typedArrayObtainStyledAttributes.getDimension(R.styleable.CollimatorView_focusCornerRadius, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        }
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.focusPaint = paint;
    }

    private final void calculateFocusRect() {
        SCCollimator sCCollimator = this.collimator;
        SCCollimator.Rect rectA = sCCollimator != null ? sCCollimator.a(getMeasuredWidth(), getMeasuredHeight()) : new SCCollimator.Rect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float f2 = rectA.f54b;
        float f3 = rectA.f53a;
        this.focusRect = new RectF(f2, f3, rectA.f55c + f2, rectA.d + f3);
    }

    private final void redrawFocusPath() {
        calculateFocusRect();
        Path path = new Path();
        RectF rectF = this.focusRect;
        if (rectF == null) {
            Intrinsics.h("focusRect");
            throw null;
        }
        float f2 = this.focusCornerRadius;
        path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        this.focusPath = path;
    }

    public final SCCollimator getCollimator() {
        return this.collimator;
    }

    public final float getFocusCornerRadius() {
        return this.focusCornerRadius;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        canvas.drawPath(this.focusPath, this.focusPaint);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        redrawFocusPath();
    }

    public final void setCollimator(SCCollimator sCCollimator) {
        this.collimator = sCCollimator;
        redrawFocusPath();
        invalidate();
    }

    public final void setFocusCornerRadius(float f2) {
        this.focusCornerRadius = f2;
        redrawFocusPath();
        invalidate();
    }

    public CollimatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CollimatorView(Context context) {
        this(context, null, 0);
    }
}

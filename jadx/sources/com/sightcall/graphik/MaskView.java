package com.sightcall.graphik;

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
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001d\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bB%\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ\u0018\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\nH\u0014J\b\u0010.\u001a\u00020+H\u0002J\b\u0010/\u001a\u00020+H\u0002J\u0010\u00100\u001a\u00020+2\u0006\u00101\u001a\u000202H\u0014R$\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0010R$\u0010\u0015\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0010\"\u0004\b\u0017\u0010\u0012R\u0011\u0010\u0018\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0010R\u0014\u0010\u001a\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0010R$\u0010\u001c\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\u0011\u0010\u001f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b \u0010\u0010R$\u0010!\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0010\"\u0004\b#\u0010\u0012R\u000e\u0010$\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082.¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/sightcall/graphik/MaskView;", "Landroid/view/View;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "value", "", "focusRatio", "getFocusRatio", "()F", "setFocusRatio", "(F)V", "focusWidth", "getFocusWidth", "focusMarginWidth", "getFocusMarginWidth", "setFocusMarginWidth", "focusWidthPercent", "getFocusWidthPercent", "focusHeight", "getFocusHeight", "focusMarginHeight", "getFocusMarginHeight", "setFocusMarginHeight", "focusHeightPercent", "getFocusHeightPercent", "focusCornerRadius", "getFocusCornerRadius", "setFocusCornerRadius", "focusPaint", "Landroid/graphics/Paint;", "focusPath", "Landroid/graphics/Path;", "focusRect", "Landroid/graphics/RectF;", "onMeasure", "", "widthMeasureSpec", "heightMeasureSpec", "redrawFocusPath", "calculateFocusRect", "onDraw", "canvas", "Landroid/graphics/Canvas;", "graphik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MaskView extends View {
    public static final int $stable = 8;
    private float focusCornerRadius;
    private float focusMarginHeight;
    private float focusMarginWidth;
    private Paint focusPaint;
    private Path focusPath;
    private float focusRatio;
    private RectF focusRect;

    public MaskView(Context context, AttributeSet attributeSet, int i2) {
        Resources.Theme theme;
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i2);
        this.focusPaint = new Paint();
        this.focusPath = new Path();
        if (context != null && (theme = context.getTheme()) != null && (typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.MaskView, 0, 0)) != null) {
            setFocusRatio(typedArrayObtainStyledAttributes.getFloat(R.styleable.MaskView_focusRatio, Call.Parameters.DEFAULT_CAMERA_ZOOM));
            setFocusMarginWidth(typedArrayObtainStyledAttributes.getDimension(R.styleable.MaskView_focusMarginWidth, Call.Parameters.DEFAULT_CAMERA_ZOOM));
            setFocusMarginHeight(typedArrayObtainStyledAttributes.getDimension(R.styleable.MaskView_focusMarginHeight, Call.Parameters.DEFAULT_CAMERA_ZOOM));
            setFocusCornerRadius(typedArrayObtainStyledAttributes.getDimension(R.styleable.MaskView_focusCornerRadius, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        }
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.focusPaint = paint;
    }

    private final void calculateFocusRect() {
        float measuredWidth = (getMeasuredWidth() - getFocusWidth()) / 2.0f;
        float measuredHeight = (getMeasuredHeight() - getFocusHeight()) / 2.0f;
        this.focusRect = new RectF(measuredWidth, measuredHeight, getMeasuredWidth() - measuredWidth, getMeasuredHeight() - measuredHeight);
    }

    private final float getFocusHeight() {
        return (Math.min(getMeasuredWidth(), getMeasuredHeight()) - (this.focusMarginHeight * 2.0f)) * this.focusRatio;
    }

    private final float getFocusWidth() {
        return getMeasuredWidth() - (this.focusMarginWidth * 2.0f);
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

    public final float getFocusCornerRadius() {
        return this.focusCornerRadius;
    }

    public final float getFocusHeightPercent() {
        return getFocusHeight() / getMeasuredHeight();
    }

    public final float getFocusMarginHeight() {
        return this.focusMarginHeight;
    }

    public final float getFocusMarginWidth() {
        return this.focusMarginWidth;
    }

    public final float getFocusRatio() {
        return this.focusRatio;
    }

    public final float getFocusWidthPercent() {
        return getFocusWidth() / getMeasuredWidth();
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

    public final void setFocusCornerRadius(float f2) {
        this.focusCornerRadius = f2;
        redrawFocusPath();
        invalidate();
    }

    public final void setFocusMarginHeight(float f2) {
        this.focusMarginHeight = f2;
        redrawFocusPath();
        invalidate();
    }

    public final void setFocusMarginWidth(float f2) {
        this.focusMarginWidth = f2;
        redrawFocusPath();
        invalidate();
    }

    public final void setFocusRatio(float f2) {
        this.focusRatio = f2;
        redrawFocusPath();
        invalidate();
    }

    public MaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaskView(Context context) {
        this(context, null, 0);
    }
}

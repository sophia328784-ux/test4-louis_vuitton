package com.google.android.material.tooltip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.view.View;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.shape.MarkerEdgeTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.OffsetEdgeTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class TooltipDrawable extends MaterialShapeDrawable implements TextDrawableHelper.TextDrawableDelegate {
    public static final /* synthetic */ int t0 = 0;
    public CharSequence I;
    public final Context J;
    public final Paint.FontMetrics K;
    public final TextDrawableHelper L;
    public final View.OnLayoutChangeListener M;
    public final Rect N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public boolean S;
    public int T;
    public int V;
    public float W;
    public float X;
    public float Y;
    public float Z;
    public float h0;

    public TooltipDrawable(Context context, int i2) {
        super(context, null, 0, i2);
        this.K = new Paint.FontMetrics();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.L = textDrawableHelper;
        this.M = new View.OnLayoutChangeListener() { // from class: com.google.android.material.tooltip.TooltipDrawable.1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                int i11 = TooltipDrawable.t0;
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int i12 = iArr[0];
                TooltipDrawable tooltipDrawable = TooltipDrawable.this;
                tooltipDrawable.V = i12;
                view.getWindowVisibleDisplayFrame(tooltipDrawable.N);
            }
        };
        this.N = new Rect();
        this.W = 1.0f;
        this.X = 1.0f;
        this.Y = 0.5f;
        this.Z = 0.5f;
        this.h0 = 1.0f;
        this.J = context;
        float f2 = context.getResources().getDisplayMetrics().density;
        TextPaint textPaint = textDrawableHelper.f32731a;
        textPaint.density = f2;
        textPaint.setTextAlign(Paint.Align.CENTER);
    }

    public final float D() {
        int i2;
        Rect rect = this.N;
        if (((rect.right - getBounds().right) - this.V) - this.R < 0) {
            i2 = ((rect.right - getBounds().right) - this.V) - this.R;
        } else {
            if (((rect.left - getBounds().left) - this.V) + this.R <= 0) {
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            i2 = ((rect.left - getBounds().left) - this.V) + this.R;
        }
        return i2;
    }

    public final OffsetEdgeTreatment E() {
        float f2 = -D();
        float fWidth = (float) ((((double) getBounds().width()) - (Math.sqrt(2.0d) * ((double) this.T))) / 2.0d);
        return new OffsetEdgeTreatment(new MarkerEdgeTreatment(this.T), Math.min(Math.max(f2, -fWidth), fWidth));
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Canvas canvas2;
        canvas.save();
        float fD = D();
        float f2 = (float) (-((Math.sqrt(2.0d) * ((double) this.T)) - ((double) this.T)));
        canvas.scale(this.W, this.X, (getBounds().width() * this.Y) + getBounds().left, (getBounds().height() * this.Z) + getBounds().top);
        canvas.translate(fD, f2);
        super.draw(canvas);
        if (this.I == null) {
            canvas2 = canvas;
        } else {
            Rect bounds = getBounds();
            float fCenterY = bounds.centerY();
            TextDrawableHelper textDrawableHelper = this.L;
            TextPaint textPaint = textDrawableHelper.f32731a;
            Paint.FontMetrics fontMetrics = this.K;
            textPaint.getFontMetrics(fontMetrics);
            int i2 = (int) (fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f));
            if (textDrawableHelper.g != null) {
                textPaint.drawableState = getState();
                textDrawableHelper.g.d(this.J, textDrawableHelper.f32731a, textDrawableHelper.f32732b);
                textPaint.setAlpha((int) (this.h0 * 255.0f));
            }
            CharSequence charSequence = this.I;
            canvas2 = canvas;
            canvas2.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), i2, textPaint);
        }
        canvas2.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) Math.max(this.L.f32731a.getTextSize(), this.Q);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float f2 = this.O * 2;
        CharSequence charSequence = this.I;
        return (int) Math.max(f2 + (charSequence == null ? Call.Parameters.DEFAULT_CAMERA_ZOOM : this.L.a(charSequence.toString())), this.P);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.S) {
            ShapeAppearanceModel shapeAppearanceModel = this.f32936c.f32945a;
            shapeAppearanceModel.getClass();
            ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
            builder.f32976k = E();
            setShapeAppearanceModel(builder.a());
        }
    }
}

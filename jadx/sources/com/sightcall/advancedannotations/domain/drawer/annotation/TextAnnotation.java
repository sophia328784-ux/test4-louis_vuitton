package com.sightcall.advancedannotations.domain.drawer.annotation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.sightcall.advancedannotations.R;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommandKt;
import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.AnnotationScale;
import com.sightcall.advancedannotations.domain.drawer.DrawableView;
import com.sightcall.advancedannotations.domain.drawer.TextParameters;
import com.sightcall.libraries.ui.Views;
import defpackage.hn0;
import defpackage.hv0;
import defpackage.m21;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B1\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020 2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010!\u001a\u00020 2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010!\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\tH\u0016J\u0010\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000fH\u0016J\b\u0010#\u001a\u00020 H\u0002J\b\u0010$\u001a\u00020 H\u0016J\b\u0010%\u001a\u00020 H\u0016J\b\u0010&\u001a\u00020 H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetScale;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetText;", "view", "Landroid/view/ViewGroup;", "initialPosition", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "scale", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "parameters", "Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;)V", "circleRadius", "", "cornerRadius", "textView", "Landroid/widget/TextView;", "fill", "Landroid/graphics/Paint;", "textPosition", "position", "getFill", "annotationColor", "content", "Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;", "reloadLayout", "", "set", "text", "updateTextViewPosition", "moveToFront", "updateLayout", "delete", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TextAnnotation extends Annotation implements SetColor, SetScale, SetPosition, SetText {
    private final float circleRadius;
    private final DrawableView content;
    private final float cornerRadius;
    private Paint fill;
    private final AnnotationPosition initialPosition;
    private final TextParameters parameters;
    private AnnotationPosition position;
    private AnnotationPosition textPosition;
    private final TextView textView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextAnnotation(ViewGroup viewGroup, AnnotationPosition annotationPosition, AnnotationColor annotationColor, AnnotationScale annotationScale, TextParameters textParameters) {
        super(viewGroup);
        viewGroup.getClass();
        annotationPosition.getClass();
        annotationColor.getClass();
        textParameters.getClass();
        this.initialPosition = annotationPosition;
        this.parameters = textParameters;
        this.circleRadius = getDimension(R.dimen.text_radius);
        this.cornerRadius = getDimension(R.dimen.text_radius_effect);
        TextView textView = new TextView(viewGroup.getContext());
        this.textView = textView;
        this.fill = getFill(annotationColor);
        this.textPosition = textParameters.getPosition();
        this.position = annotationPosition;
        Context context = viewGroup.getContext();
        context.getClass();
        DrawableView drawableView = new DrawableView(context, null, 0, 6, null);
        drawableView.setOnDraw(new m21(this, viewGroup, 2));
        this.content = drawableView;
        viewGroup.addView(drawableView, viewGroup.getWidth(), viewGroup.getHeight());
        viewGroup.addView(textView, new ViewGroup.LayoutParams(AnnotationCommandKt.forView(MathKt.c(getDimension(R.dimen.text_width)), (View) viewGroup), -2));
        int dimension = (int) getDimension(R.dimen.text_horizontal_padding);
        int dimension2 = (int) getDimension(R.dimen.text_vertical_padding);
        textView.setPadding(dimension, dimension2, dimension, dimension2);
        Views.onFirstLayout(textView, new hv0(this, 11));
        textView.setText(textParameters.getMessage());
        set(annotationColor);
        set(annotationScale == null ? new AnnotationScale(2) : annotationScale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit content$lambda$0$0(TextAnnotation textAnnotation, ViewGroup viewGroup, Canvas canvas) {
        canvas.getClass();
        canvas.drawLine(AnnotationCommandKt.xFor(textAnnotation.position, viewGroup), AnnotationCommandKt.yFor(textAnnotation.position, viewGroup), AnnotationCommandKt.xFor(textAnnotation.textPosition, viewGroup), AnnotationCommandKt.yFor(textAnnotation.textPosition, viewGroup), textAnnotation.fill);
        canvas.drawCircle(AnnotationCommandKt.xFor(textAnnotation.position, viewGroup), AnnotationCommandKt.yFor(textAnnotation.position, viewGroup), textAnnotation.circleRadius, textAnnotation.fill);
        RectF rectF = new RectF(textAnnotation.textView.getX(), textAnnotation.textView.getY(), textAnnotation.textView.getX() + textAnnotation.textView.getWidth(), textAnnotation.textView.getY() + textAnnotation.textView.getHeight());
        float f2 = textAnnotation.cornerRadius;
        canvas.drawRoundRect(rectF, f2, f2, textAnnotation.fill);
        return Unit.f71739a;
    }

    private final Paint getFill(AnnotationColor annotationColor) {
        Paint paint = new Paint(3);
        paint.setColor(AnnotationCommandKt.toColor(annotationColor));
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeWidth(getDimension(R.dimen.text_stroke_width));
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        return paint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit lambda$0$0(TextAnnotation textAnnotation) {
        textAnnotation.updateTextViewPosition();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void reloadLayout$lambda$1(TextAnnotation textAnnotation) {
        textAnnotation.updateTextViewPosition();
        textAnnotation.updateLayout();
    }

    private final void updateTextViewPosition() {
        this.textView.setX(AnnotationCommandKt.xFor(this.textPosition, getView()) - (this.textView.getWidth() / 2.0f));
        this.textView.setY(AnnotationCommandKt.yFor(this.textPosition, getView()) - (this.textView.getHeight() / 2.0f));
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void delete() {
        ViewParent parent = this.content.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.content);
        }
        ViewParent parent2 = this.textView.getParent();
        ViewGroup viewGroup2 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
        if (viewGroup2 != null) {
            viewGroup2.removeView(this.textView);
        }
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void moveToFront() {
        this.content.bringToFront();
        this.textView.bringToFront();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void reloadLayout() {
        TextView textView = this.textView;
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            r81.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            return;
        }
        layoutParams.width = AnnotationCommandKt.forView(MathKt.c(getDimension(R.dimen.text_width)), (View) getView());
        textView.setLayoutParams(layoutParams);
        this.textView.requestLayout();
        new Handler(Looper.getMainLooper()).post(new hn0(this, 29));
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetPosition
    public void set(AnnotationPosition position) {
        position.getClass();
        if (Intrinsics.c(this.position, position)) {
            return;
        }
        this.position = position;
        AnnotationPosition position2 = this.parameters.getPosition();
        this.textPosition = new AnnotationPosition(position.getX() + (position2.getX() - this.initialPosition.getX()), position.getY() + (position2.getY() - this.initialPosition.getY()));
        updateTextViewPosition();
        needsUpdate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void updateLayout() {
        this.content.invalidate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetScale
    public void set(AnnotationScale scale) {
        scale.getClass();
        this.textView.setTextSize(0, scale.textScaleForView(getView()));
        needsUpdate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetColor
    public void set(AnnotationColor color) {
        color.getClass();
        this.fill = getFill(color);
        this.textView.setTextColor(AnnotationCommandKt.toColor(AnnotationCommandKt.getStroke(color)));
        needsUpdate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetText
    public void set(TextParameters text) {
        text.getClass();
        this.textView.setText(text.getMessage());
        this.textPosition = text.getPosition();
        updateTextViewPosition();
        needsUpdate();
    }
}

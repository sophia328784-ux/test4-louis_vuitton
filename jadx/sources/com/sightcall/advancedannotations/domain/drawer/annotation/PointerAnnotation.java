package com.sightcall.advancedannotations.domain.drawer.annotation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.sightcall.advancedannotations.R;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommandKt;
import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.DrawableView;
import com.sightcall.libraries.ui.ConstraintSet;
import defpackage.tb0;
import defpackage.xg0;
import kotlin.Metadata;
import kotlin.Unit;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000  2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001 B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\tH\u0002J\b\u0010\u0017\u001a\u00020\u0012H\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0016J\b\u0010\u001e\u001a\u00020\u001bH\u0016J\b\u0010\u001f\u001a\u00020\u001bH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;", "view", "Landroid/view/ViewGroup;", "position", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V", "strokeWidth", "", "outlineWidth", "cornerRadius", "pointerRadius", "outline", "Landroid/graphics/Paint;", "stroke", "getStroke", "annotationColor", "fill", "getFill", "content", "Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;", "reloadLayout", "", "set", "moveToFront", "updateLayout", "delete", "Companion", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PointerAnnotation extends Annotation implements SetPosition, SetColor {
    private static final int FILL_OPACITY = 51;
    private final DrawableView content;
    private final float cornerRadius;
    private Paint fill;
    private final Paint outline;
    private final float outlineWidth;
    private final float pointerRadius;
    private AnnotationPosition position;
    private Paint stroke;
    private final float strokeWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerAnnotation(ViewGroup viewGroup, AnnotationPosition annotationPosition, AnnotationColor annotationColor) {
        super(viewGroup);
        viewGroup.getClass();
        annotationPosition.getClass();
        annotationColor.getClass();
        this.position = annotationPosition;
        float dimension = getDimension(R.dimen.path_stroke_width);
        this.strokeWidth = dimension;
        float dimension2 = getDimension(R.dimen.path_outline_width);
        this.outlineWidth = dimension2;
        float dimension3 = getDimension(R.dimen.path_radius_effect);
        this.cornerRadius = dimension3;
        this.pointerRadius = getDimension(R.dimen.pointer_radius);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dimension + dimension2);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setPathEffect(new CornerPathEffect(dimension3));
        this.outline = paint;
        this.stroke = getStroke(annotationColor);
        this.fill = getFill();
        Context context = viewGroup.getContext();
        context.getClass();
        DrawableView drawableView = new DrawableView(context, null, 0, 6, null);
        drawableView.setOnDraw(new xg0(this, viewGroup, 24));
        this.content = drawableView;
        viewGroup.addView(drawableView);
        ConstraintLayout constraintLayout = viewGroup instanceof ConstraintLayout ? (ConstraintLayout) viewGroup : null;
        if (constraintLayout != null) {
            ConstraintSet.applyConstraints(constraintLayout, new tb0(this, 29));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(PointerAnnotation pointerAnnotation, androidx.constraintlayout.widget.ConstraintSet constraintSet) {
        constraintSet.getClass();
        ConstraintSet.layoutOver$default(constraintSet, pointerAnnotation.content, null, 2, null);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit content$lambda$0$0(PointerAnnotation pointerAnnotation, ViewGroup viewGroup, Canvas canvas) {
        canvas.getClass();
        canvas.save();
        canvas.translate(AnnotationCommandKt.xFor(pointerAnnotation.position, viewGroup), AnnotationCommandKt.yFor(pointerAnnotation.position, viewGroup));
        canvas.drawCircle(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, pointerAnnotation.pointerRadius, pointerAnnotation.outline);
        canvas.drawCircle(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, pointerAnnotation.pointerRadius, pointerAnnotation.fill);
        canvas.drawCircle(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, pointerAnnotation.pointerRadius - 1.0f, pointerAnnotation.stroke);
        canvas.restore();
        return Unit.f71739a;
    }

    private final Paint getFill() {
        Paint paint = this.stroke;
        paint.setStyle(Paint.Style.FILL);
        paint.setAlpha(51);
        return paint;
    }

    private final Paint getStroke(AnnotationColor annotationColor) {
        Paint paint = new Paint(3);
        paint.setColor(AnnotationCommandKt.toColor(annotationColor));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.strokeWidth);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setPathEffect(new CornerPathEffect(this.cornerRadius));
        return paint;
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void delete() {
        ViewParent parent = this.content.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.content);
        }
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void moveToFront() {
        this.content.bringToFront();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void reloadLayout() {
        updateLayout();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetColor
    public void set(AnnotationColor color) {
        color.getClass();
        this.stroke = getStroke(color);
        this.fill = getFill();
        needsUpdate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void updateLayout() {
        this.content.invalidate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetPosition
    public void set(AnnotationPosition position) {
        position.getClass();
        this.position = position;
        needsUpdate();
    }
}

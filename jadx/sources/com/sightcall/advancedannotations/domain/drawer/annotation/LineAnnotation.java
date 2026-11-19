package com.sightcall.advancedannotations.domain.drawer.annotation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.sightcall.advancedannotations.R;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommandKt;
import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.DrawableView;
import com.sightcall.libraries.ui.ConstraintSet;
import defpackage.k60;
import defpackage.l00;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\nH\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010!\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010\"\u001a\u00020 H\u0016J\b\u0010#\u001a\u00020 H\u0016J\u0010\u0010$\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010%\u001a\u00020 2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010%\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010&\u001a\u00020 H\u0016J\b\u0010'\u001a\u00020 H\u0016J\u0010\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020*H\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/AddPosition;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;", "view", "Landroid/view/ViewGroup;", "position", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V", "strokeWidth", "", "outlineWidth", "cornerRadius", "offsetX", "", "offsetY", "positions", "", "outline", "Landroid/graphics/Paint;", "stroke", "getStroke", "annotationColor", "path", "Landroid/graphics/Path;", "content", "Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;", "startAtPosition", "", "addPosition", "reloadLayout", "moveToFront", "add", "set", "delete", "updateLayout", "applyAnimationValue", "value", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LineAnnotation extends Annotation implements AddPosition, SetColor, SetPosition {
    private final DrawableView content;
    private final float cornerRadius;
    private double offsetX;
    private double offsetY;
    private final Paint outline;
    private final float outlineWidth;
    private final Path path;
    private final AnnotationPosition position;
    private final List<AnnotationPosition> positions;
    private Paint stroke;
    private final float strokeWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LineAnnotation(ViewGroup viewGroup, AnnotationPosition annotationPosition, AnnotationColor annotationColor) {
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
        this.positions = new ArrayList();
        Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dimension + dimension2);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setPathEffect(new CornerPathEffect(dimension3));
        this.outline = paint;
        this.stroke = getStroke(annotationColor);
        this.path = new Path();
        Context context = viewGroup.getContext();
        context.getClass();
        DrawableView drawableView = new DrawableView(context, null, 0, 6, null);
        drawableView.setOnDraw(new k60(this, viewGroup, 8));
        this.content = drawableView;
        setInitialAnimationValue(this.stroke.getAlpha());
        setTargetAnimationValue(0);
        viewGroup.addView(drawableView);
        ConstraintLayout constraintLayout = viewGroup instanceof ConstraintLayout ? (ConstraintLayout) viewGroup : null;
        if (constraintLayout != null) {
            ConstraintSet.applyConstraints(constraintLayout, new l00(this, 26));
        }
        startAtPosition(annotationPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(LineAnnotation lineAnnotation, androidx.constraintlayout.widget.ConstraintSet constraintSet) {
        constraintSet.getClass();
        ConstraintSet.layoutOver$default(constraintSet, lineAnnotation.content, null, 2, null);
        return Unit.f71739a;
    }

    private final void addPosition(AnnotationPosition position) {
        this.positions.add(position);
        this.path.lineTo(AnnotationCommandKt.xFor(position, getView()), AnnotationCommandKt.yFor(position, getView()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit content$lambda$0$0(LineAnnotation lineAnnotation, ViewGroup viewGroup, Canvas canvas) {
        canvas.getClass();
        canvas.translate((float) (lineAnnotation.offsetX * ((double) viewGroup.getWidth())), (float) (lineAnnotation.offsetY * ((double) viewGroup.getHeight())));
        canvas.drawPath(lineAnnotation.path, lineAnnotation.outline);
        canvas.drawPath(lineAnnotation.path, lineAnnotation.stroke);
        return Unit.f71739a;
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

    private final void startAtPosition(AnnotationPosition position) {
        this.positions.clear();
        this.path.moveTo(AnnotationCommandKt.xFor(position, getView()), AnnotationCommandKt.yFor(position, getView()));
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.AddPosition
    public void add(AnnotationPosition position) {
        position.getClass();
        addPosition(position);
        needsUpdate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void applyAnimationValue(int value) {
        this.outline.setAlpha(value);
        this.stroke.setAlpha(value);
        updateLayout();
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
        this.path.reset();
        this.path.moveTo(AnnotationCommandKt.xFor(this.position, getView()), AnnotationCommandKt.yFor(this.position, getView()));
        for (AnnotationPosition annotationPosition : this.positions) {
            this.path.lineTo(AnnotationCommandKt.xFor(annotationPosition, getView()), AnnotationCommandKt.yFor(annotationPosition, getView()));
        }
        updateLayout();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetPosition
    public void set(AnnotationPosition position) {
        position.getClass();
        this.offsetX = position.getX() - this.position.getX();
        this.offsetY = position.getY() - this.position.getY();
        needsUpdate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.Annotation
    public void updateLayout() {
        this.content.invalidate();
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.annotation.SetColor
    public void set(AnnotationColor color) {
        color.getClass();
        this.stroke = getStroke(color);
        needsUpdate();
    }
}

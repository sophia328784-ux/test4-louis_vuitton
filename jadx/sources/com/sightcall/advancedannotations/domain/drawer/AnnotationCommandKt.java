package com.sightcall.advancedannotations.domain.drawer;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.math.MathKt;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u001c\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\tH\u0000\u001a\f\u0010\n\u001a\u00020\u000b*\u00020\u000bH\u0000\u001a\f\u0010\f\u001a\u00020\r*\u00020\u000bH\u0000\u001a\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u0014\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u000f\u001a\u00020\r*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0010\u001a\u00020\r*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0016\u0010\u000f\u001a\u00020\u0001*\u0004\u0018\u00010\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¨\u0006\u0012"}, d2 = {"xFor", "", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "view", "Landroid/view/View;", "yFor", "distanceWith", "", "position", "Landroid/view/ViewGroup;", "getStroke", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "toColor", "", "fromViewScale", "forView", "fromView", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "advancedannotations_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class AnnotationCommandKt {
    public static final double distanceWith(AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, ViewGroup viewGroup) {
        annotationPosition.getClass();
        annotationPosition2.getClass();
        viewGroup.getClass();
        return Math.sqrt(Math.pow(yFor(annotationPosition, viewGroup) - yFor(annotationPosition2, viewGroup), 2.0d) + Math.pow(xFor(annotationPosition, viewGroup) - xFor(annotationPosition2, viewGroup), 2.0d));
    }

    public static final float forView(AnnotationScale annotationScale, View view) {
        view.getClass();
        return annotationScale != null ? annotationScale.valueForView(view) : fromViewScale(view);
    }

    public static final int fromView(int i2, View view) {
        view.getClass();
        return MathKt.c(i2 / fromViewScale(view));
    }

    private static final float fromViewScale(View view) {
        return Math.max(view.getWidth(), view.getHeight()) / 640.0f;
    }

    public static final AnnotationColor getStroke(AnnotationColor annotationColor) {
        annotationColor.getClass();
        int i2 = Integer.parseInt(annotationColor.getValue(), CharsKt.checkRadix(16));
        return new AnnotationColor(((i2 & 255) * 722) + ((((i2 >> 2) & 255) * 7152) + (((i2 >> 4) & 255) * 2126)) < 1280000 ? "F0F0F0" : "101010");
    }

    public static final int toColor(AnnotationColor annotationColor) {
        annotationColor.getClass();
        return Color.parseColor("#" + annotationColor.getValue());
    }

    public static final float xFor(AnnotationPosition annotationPosition, View view) {
        annotationPosition.getClass();
        view.getClass();
        return (float) (annotationPosition.getX() * ((double) view.getWidth()));
    }

    public static final float yFor(AnnotationPosition annotationPosition, View view) {
        annotationPosition.getClass();
        view.getClass();
        return (float) (annotationPosition.getY() * ((double) view.getHeight()));
    }

    public static final int forView(int i2, View view) {
        view.getClass();
        return MathKt.c(i2 * fromViewScale(view));
    }

    public static final float forView(float f2, View view) {
        view.getClass();
        return f2 * fromViewScale(view);
    }
}

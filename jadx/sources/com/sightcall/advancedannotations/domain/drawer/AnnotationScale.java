package com.sightcall.advancedannotations.domain.drawer;

import android.view.View;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\b\u0080\b\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\t\u0010\u0012\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0016\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u000fHÖ\u0081\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0019"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "", "percentage", "", "<init>", "(I)V", "valueForView", "", "view", "Landroid/view/View;", "isZero", "", "isHundred", "textScaleForView", "percentString", "", "getPercentString", "()Ljava/lang/String;", "component1", "copy", "equals", "other", "hashCode", "toString", "Companion", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AnnotationScale {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final float WidthReference = 640.0f;
    private final int percentage;

    public AnnotationScale(int i2) {
        this.percentage = i2;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final int getPercentage() {
        return this.percentage;
    }

    public static /* synthetic */ AnnotationScale copy$default(AnnotationScale annotationScale, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = annotationScale.percentage;
        }
        return annotationScale.copy(i2);
    }

    public final AnnotationScale copy(int percentage) {
        return new AnnotationScale(percentage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AnnotationScale) && this.percentage == ((AnnotationScale) other).percentage;
    }

    public final String getPercentString() {
        return String.valueOf(this.percentage);
    }

    public int hashCode() {
        return Integer.hashCode(this.percentage);
    }

    public final boolean isHundred() {
        return this.percentage == 100;
    }

    public final boolean isZero() {
        return this.percentage == 0;
    }

    public final float textScaleForView(View view) {
        view.getClass();
        return AnnotationCommandKt.forView((this.percentage * 4) + 7, view);
    }

    public String toString() {
        return n00.m(this.percentage, "AnnotationScale(percentage=", ")");
    }

    public final float valueForView(View view) {
        view.getClass();
        return AnnotationCommandKt.forView(this.percentage / 100.0f, view);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;", "", "<init>", "()V", "WidthReference", "", "fromView", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "view", "Landroid/view/View;", "value", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AnnotationScale fromView(View view, float value) {
            view.getClass();
            return new AnnotationScale(AnnotationCommandKt.fromView(MathKt.c(value * 100.0f), view));
        }

        private Companion() {
        }
    }
}

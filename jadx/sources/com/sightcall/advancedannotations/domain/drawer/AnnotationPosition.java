package com.sightcall.advancedannotations.domain.drawer;

import android.view.View;
import com.sightcall.advancedannotations.domain.event.EventInterpreterImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.CharsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "", "x", "", "y", "<init>", "(DD)V", "getX", "()D", "getY", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AnnotationPosition {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final double x;
    private final double y;

    public AnnotationPosition(double d, double d2) {
        this.x = d;
        this.y = d2;
    }

    public static /* synthetic */ AnnotationPosition copy$default(AnnotationPosition annotationPosition, double d, double d2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            d = annotationPosition.x;
        }
        if ((i2 & 2) != 0) {
            d2 = annotationPosition.y;
        }
        return annotationPosition.copy(d, d2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final double getX() {
        return this.x;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final double getY() {
        return this.y;
    }

    public final AnnotationPosition copy(double x, double y) {
        return new AnnotationPosition(x, y);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnnotationPosition)) {
            return false;
        }
        AnnotationPosition annotationPosition = (AnnotationPosition) other;
        return Double.compare(this.x, annotationPosition.x) == 0 && Double.compare(this.y, annotationPosition.y) == 0;
    }

    public final double getX() {
        return this.x;
    }

    public final double getY() {
        return this.y;
    }

    public int hashCode() {
        return Double.hashCode(this.y) + (Double.hashCode(this.x) * 31);
    }

    public String toString() {
        return "AnnotationPosition(x=" + this.x + ", y=" + this.y + ")";
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0002\b\tJ\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0000¢\u0006\u0002\b\t¨\u0006\u000e"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;", "", "<init>", "()V", "from", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "x", "", "y", "from$advancedannotations_release", MvelScriptManager.VAR_EVENT, "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;", "view", "Landroid/view/View;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AnnotationPosition from$advancedannotations_release(String x, String y) {
            x.getClass();
            y.getClass();
            return new AnnotationPosition(((double) Integer.parseInt(x, CharsKt.checkRadix(10))) / 1000.0d, ((double) Integer.parseInt(y, CharsKt.checkRadix(10))) / 1000.0d);
        }

        private Companion() {
        }

        public final AnnotationPosition from$advancedannotations_release(EventInterpreterImpl.TouchEvent event, View view) {
            event.getClass();
            view.getClass();
            return new AnnotationPosition(((double) event.getX()) / ((double) view.getWidth()), ((double) event.getY()) / ((double) view.getHeight()));
        }
    }
}

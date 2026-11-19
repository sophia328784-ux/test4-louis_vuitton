package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/graphics/Outline;", "", "Rectangle", "Rounded", "Generic", "Landroidx/compose/ui/graphics/Outline$Generic;", "Landroidx/compose/ui/graphics/Outline$Rectangle;", "Landroidx/compose/ui/graphics/Outline$Rounded;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Outline {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/Outline$Generic;", "Landroidx/compose/ui/graphics/Outline;", "Landroidx/compose/ui/graphics/Path;", "path", "<init>", "(Landroidx/compose/ui/graphics/Path;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Generic extends Outline {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Path f8902a;

        public Generic(Path path) {
            super(null);
            this.f8902a = path;
        }

        @Override // androidx.compose.ui.graphics.Outline
        /* JADX INFO: renamed from: a */
        public final Rect getF8903a() {
            return this.f8902a.getBounds();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/Outline$Rectangle;", "Landroidx/compose/ui/graphics/Outline;", "Landroidx/compose/ui/geometry/Rect;", "rect", "<init>", "(Landroidx/compose/ui/geometry/Rect;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Rectangle extends Outline {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Rect f8903a;

        public Rectangle(Rect rect) {
            super(null);
            this.f8903a = rect;
        }

        @Override // androidx.compose.ui.graphics.Outline
        /* JADX INFO: renamed from: a, reason: from getter */
        public final Rect getF8903a() {
            return this.f8903a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Rectangle) {
                return Intrinsics.c(this.f8903a, ((Rectangle) obj).f8903a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f8903a.hashCode();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/Outline$Rounded;", "Landroidx/compose/ui/graphics/Outline;", "Landroidx/compose/ui/geometry/RoundRect;", "roundRect", "<init>", "(Landroidx/compose/ui/geometry/RoundRect;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Rounded extends Outline {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RoundRect f8904a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AndroidPath f8905b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Rounded(RoundRect roundRect) {
            super(null);
            AndroidPath androidPathA = null;
            this.f8904a = roundRect;
            if (!RoundRectKt.d(roundRect)) {
                androidPathA = AndroidPath_androidKt.a();
                androidPathA.s(roundRect, Path.Direction.CounterClockwise);
            }
            this.f8905b = androidPathA;
        }

        @Override // androidx.compose.ui.graphics.Outline
        /* JADX INFO: renamed from: a */
        public final Rect getF8903a() {
            RoundRect roundRect = this.f8904a;
            return new Rect(roundRect.f8814a, roundRect.f8815b, roundRect.f8816c, roundRect.d);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Rounded) {
                return Intrinsics.c(this.f8904a, ((Rounded) obj).f8904a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f8904a.hashCode();
        }
    }

    public Outline(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: renamed from: a */
    public abstract Rect getF8903a();
}

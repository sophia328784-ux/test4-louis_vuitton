package androidx.compose.ui.graphics.vector;

import defpackage.a;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0013\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0082\u0001\u0013\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'¨\u0006("}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode;", "", "Close", "RelativeMoveTo", "MoveTo", "RelativeLineTo", "LineTo", "RelativeHorizontalTo", "HorizontalTo", "RelativeVerticalTo", "VerticalTo", "RelativeCurveTo", "CurveTo", "RelativeReflectiveCurveTo", "ReflectiveCurveTo", "RelativeQuadTo", "QuadTo", "RelativeReflectiveQuadTo", "ReflectiveQuadTo", "RelativeArcTo", "ArcTo", "Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;", "Landroidx/compose/ui/graphics/vector/PathNode$Close;", "Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;", "Landroidx/compose/ui/graphics/vector/PathNode$LineTo;", "Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;", "Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class PathNode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f9108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f9109b;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "horizontalEllipseRadius", "verticalEllipseRadius", "theta", "", "isMoreThanHalf", "isPositiveArc", "arcStartX", "arcStartY", "<init>", "(FFFZZFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ArcTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9110c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9111e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f9112f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f9113h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float f9114i;

        /* JADX WARN: Illegal instructions before constructor call */
        public ArcTo(float f2, float f3, float f4, boolean z, boolean z2, float f5, float f6) {
            boolean z3 = false;
            super(z3, z3, 3, null);
            this.f9110c = f2;
            this.d = f3;
            this.f9111e = f4;
            this.f9112f = z;
            this.g = z2;
            this.f9113h = f5;
            this.f9114i = f6;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ArcTo)) {
                return false;
            }
            ArcTo arcTo = (ArcTo) obj;
            return Float.compare(this.f9110c, arcTo.f9110c) == 0 && Float.compare(this.d, arcTo.d) == 0 && Float.compare(this.f9111e, arcTo.f9111e) == 0 && this.f9112f == arcTo.f9112f && this.g == arcTo.g && Float.compare(this.f9113h, arcTo.f9113h) == 0 && Float.compare(this.f9114i, arcTo.f9114i) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9114i) + pq0.b(o60.b(o60.b(pq0.b(pq0.b(Float.hashCode(this.f9110c) * 31, 31, this.d), 31, this.f9111e), 31, this.f9112f), 31, this.g), 31, this.f9113h);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ArcTo(horizontalEllipseRadius=");
            sb.append(this.f9110c);
            sb.append(", verticalEllipseRadius=");
            sb.append(this.d);
            sb.append(", theta=");
            sb.append(this.f9111e);
            sb.append(", isMoreThanHalf=");
            sb.append(this.f9112f);
            sb.append(", isPositiveArc=");
            sb.append(this.g);
            sb.append(", arcStartX=");
            sb.append(this.f9113h);
            sb.append(", arcStartY=");
            return a.m(sb, this.f9114i, ')');
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$Close;", "Landroidx/compose/ui/graphics/vector/PathNode;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Close extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Close f9115c;

        static {
            boolean z = false;
            f9115c = new Close(z, z, 3, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "x1", "y1", "x2", "y2", "x3", "y3", "<init>", "(FFFFFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class CurveTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9116c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9117e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f9118f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f9119h;

        public CurveTo(float f2, float f3, float f4, float f5, float f6, float f7) {
            super(true, false, 2, null);
            this.f9116c = f2;
            this.d = f3;
            this.f9117e = f4;
            this.f9118f = f5;
            this.g = f6;
            this.f9119h = f7;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CurveTo)) {
                return false;
            }
            CurveTo curveTo = (CurveTo) obj;
            return Float.compare(this.f9116c, curveTo.f9116c) == 0 && Float.compare(this.d, curveTo.d) == 0 && Float.compare(this.f9117e, curveTo.f9117e) == 0 && Float.compare(this.f9118f, curveTo.f9118f) == 0 && Float.compare(this.g, curveTo.g) == 0 && Float.compare(this.f9119h, curveTo.f9119h) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9119h) + pq0.b(pq0.b(pq0.b(pq0.b(Float.hashCode(this.f9116c) * 31, 31, this.d), 31, this.f9117e), 31, this.f9118f), 31, this.g);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CurveTo(x1=");
            sb.append(this.f9116c);
            sb.append(", y1=");
            sb.append(this.d);
            sb.append(", x2=");
            sb.append(this.f9117e);
            sb.append(", y2=");
            sb.append(this.f9118f);
            sb.append(", x3=");
            sb.append(this.g);
            sb.append(", y3=");
            return a.m(sb, this.f9119h, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "x", "<init>", "(F)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class HorizontalTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9120c;

        /* JADX WARN: Illegal instructions before constructor call */
        public HorizontalTo(float f2) {
            boolean z = false;
            super(z, z, 3, null);
            this.f9120c = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HorizontalTo) && Float.compare(this.f9120c, ((HorizontalTo) obj).f9120c) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9120c);
        }

        public final String toString() {
            return a.m(new StringBuilder("HorizontalTo(x="), this.f9120c, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$LineTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "x", "y", "<init>", "(FF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class LineTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9121c;
        public final float d;

        /* JADX WARN: Illegal instructions before constructor call */
        public LineTo(float f2, float f3) {
            boolean z = false;
            super(z, z, 3, null);
            this.f9121c = f2;
            this.d = f3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LineTo)) {
                return false;
            }
            LineTo lineTo = (LineTo) obj;
            return Float.compare(this.f9121c, lineTo.f9121c) == 0 && Float.compare(this.d, lineTo.d) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.f9121c) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("LineTo(x=");
            sb.append(this.f9121c);
            sb.append(", y=");
            return a.m(sb, this.d, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "x", "y", "<init>", "(FF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class MoveTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9122c;
        public final float d;

        /* JADX WARN: Illegal instructions before constructor call */
        public MoveTo(float f2, float f3) {
            boolean z = false;
            super(z, z, 3, null);
            this.f9122c = f2;
            this.d = f3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MoveTo)) {
                return false;
            }
            MoveTo moveTo = (MoveTo) obj;
            return Float.compare(this.f9122c, moveTo.f9122c) == 0 && Float.compare(this.d, moveTo.d) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.f9122c) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MoveTo(x=");
            sb.append(this.f9122c);
            sb.append(", y=");
            return a.m(sb, this.d, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "x1", "y1", "x2", "y2", "<init>", "(FFFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class QuadTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9123c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9124e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f9125f;

        public QuadTo(float f2, float f3, float f4, float f5) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f9123c = f2;
            this.d = f3;
            this.f9124e = f4;
            this.f9125f = f5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof QuadTo)) {
                return false;
            }
            QuadTo quadTo = (QuadTo) obj;
            return Float.compare(this.f9123c, quadTo.f9123c) == 0 && Float.compare(this.d, quadTo.d) == 0 && Float.compare(this.f9124e, quadTo.f9124e) == 0 && Float.compare(this.f9125f, quadTo.f9125f) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9125f) + pq0.b(pq0.b(Float.hashCode(this.f9123c) * 31, 31, this.d), 31, this.f9124e);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("QuadTo(x1=");
            sb.append(this.f9123c);
            sb.append(", y1=");
            sb.append(this.d);
            sb.append(", x2=");
            sb.append(this.f9124e);
            sb.append(", y2=");
            return a.m(sb, this.f9125f, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "x1", "y1", "x2", "y2", "<init>", "(FFFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ReflectiveCurveTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9126c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9127e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f9128f;

        public ReflectiveCurveTo(float f2, float f3, float f4, float f5) {
            super(true, false, 2, null);
            this.f9126c = f2;
            this.d = f3;
            this.f9127e = f4;
            this.f9128f = f5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReflectiveCurveTo)) {
                return false;
            }
            ReflectiveCurveTo reflectiveCurveTo = (ReflectiveCurveTo) obj;
            return Float.compare(this.f9126c, reflectiveCurveTo.f9126c) == 0 && Float.compare(this.d, reflectiveCurveTo.d) == 0 && Float.compare(this.f9127e, reflectiveCurveTo.f9127e) == 0 && Float.compare(this.f9128f, reflectiveCurveTo.f9128f) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9128f) + pq0.b(pq0.b(Float.hashCode(this.f9126c) * 31, 31, this.d), 31, this.f9127e);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ReflectiveCurveTo(x1=");
            sb.append(this.f9126c);
            sb.append(", y1=");
            sb.append(this.d);
            sb.append(", x2=");
            sb.append(this.f9127e);
            sb.append(", y2=");
            return a.m(sb, this.f9128f, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "x", "y", "<init>", "(FF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ReflectiveQuadTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9129c;
        public final float d;

        public ReflectiveQuadTo(float f2, float f3) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f9129c = f2;
            this.d = f3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReflectiveQuadTo)) {
                return false;
            }
            ReflectiveQuadTo reflectiveQuadTo = (ReflectiveQuadTo) obj;
            return Float.compare(this.f9129c, reflectiveQuadTo.f9129c) == 0 && Float.compare(this.d, reflectiveQuadTo.d) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.f9129c) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ReflectiveQuadTo(x=");
            sb.append(this.f9129c);
            sb.append(", y=");
            return a.m(sb, this.d, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "horizontalEllipseRadius", "verticalEllipseRadius", "theta", "", "isMoreThanHalf", "isPositiveArc", "arcStartDx", "arcStartDy", "<init>", "(FFFZZFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeArcTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9130c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9131e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f9132f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f9133h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float f9134i;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeArcTo(float f2, float f3, float f4, boolean z, boolean z2, float f5, float f6) {
            boolean z3 = false;
            super(z3, z3, 3, null);
            this.f9130c = f2;
            this.d = f3;
            this.f9131e = f4;
            this.f9132f = z;
            this.g = z2;
            this.f9133h = f5;
            this.f9134i = f6;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeArcTo)) {
                return false;
            }
            RelativeArcTo relativeArcTo = (RelativeArcTo) obj;
            return Float.compare(this.f9130c, relativeArcTo.f9130c) == 0 && Float.compare(this.d, relativeArcTo.d) == 0 && Float.compare(this.f9131e, relativeArcTo.f9131e) == 0 && this.f9132f == relativeArcTo.f9132f && this.g == relativeArcTo.g && Float.compare(this.f9133h, relativeArcTo.f9133h) == 0 && Float.compare(this.f9134i, relativeArcTo.f9134i) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9134i) + pq0.b(o60.b(o60.b(pq0.b(pq0.b(Float.hashCode(this.f9130c) * 31, 31, this.d), 31, this.f9131e), 31, this.f9132f), 31, this.g), 31, this.f9133h);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RelativeArcTo(horizontalEllipseRadius=");
            sb.append(this.f9130c);
            sb.append(", verticalEllipseRadius=");
            sb.append(this.d);
            sb.append(", theta=");
            sb.append(this.f9131e);
            sb.append(", isMoreThanHalf=");
            sb.append(this.f9132f);
            sb.append(", isPositiveArc=");
            sb.append(this.g);
            sb.append(", arcStartDx=");
            sb.append(this.f9133h);
            sb.append(", arcStartDy=");
            return a.m(sb, this.f9134i, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "dx1", "dy1", "dx2", "dy2", "dx3", "dy3", "<init>", "(FFFFFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeCurveTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9135c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9136e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f9137f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f9138h;

        public RelativeCurveTo(float f2, float f3, float f4, float f5, float f6, float f7) {
            super(true, false, 2, null);
            this.f9135c = f2;
            this.d = f3;
            this.f9136e = f4;
            this.f9137f = f5;
            this.g = f6;
            this.f9138h = f7;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeCurveTo)) {
                return false;
            }
            RelativeCurveTo relativeCurveTo = (RelativeCurveTo) obj;
            return Float.compare(this.f9135c, relativeCurveTo.f9135c) == 0 && Float.compare(this.d, relativeCurveTo.d) == 0 && Float.compare(this.f9136e, relativeCurveTo.f9136e) == 0 && Float.compare(this.f9137f, relativeCurveTo.f9137f) == 0 && Float.compare(this.g, relativeCurveTo.g) == 0 && Float.compare(this.f9138h, relativeCurveTo.f9138h) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9138h) + pq0.b(pq0.b(pq0.b(pq0.b(Float.hashCode(this.f9135c) * 31, 31, this.d), 31, this.f9136e), 31, this.f9137f), 31, this.g);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RelativeCurveTo(dx1=");
            sb.append(this.f9135c);
            sb.append(", dy1=");
            sb.append(this.d);
            sb.append(", dx2=");
            sb.append(this.f9136e);
            sb.append(", dy2=");
            sb.append(this.f9137f);
            sb.append(", dx3=");
            sb.append(this.g);
            sb.append(", dy3=");
            return a.m(sb, this.f9138h, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "dx", "<init>", "(F)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeHorizontalTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9139c;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeHorizontalTo(float f2) {
            boolean z = false;
            super(z, z, 3, null);
            this.f9139c = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RelativeHorizontalTo) && Float.compare(this.f9139c, ((RelativeHorizontalTo) obj).f9139c) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9139c);
        }

        public final String toString() {
            return a.m(new StringBuilder("RelativeHorizontalTo(dx="), this.f9139c, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "dx", "dy", "<init>", "(FF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeLineTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9140c;
        public final float d;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeLineTo(float f2, float f3) {
            boolean z = false;
            super(z, z, 3, null);
            this.f9140c = f2;
            this.d = f3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeLineTo)) {
                return false;
            }
            RelativeLineTo relativeLineTo = (RelativeLineTo) obj;
            return Float.compare(this.f9140c, relativeLineTo.f9140c) == 0 && Float.compare(this.d, relativeLineTo.d) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.f9140c) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RelativeLineTo(dx=");
            sb.append(this.f9140c);
            sb.append(", dy=");
            return a.m(sb, this.d, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "dx", "dy", "<init>", "(FF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeMoveTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9141c;
        public final float d;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeMoveTo(float f2, float f3) {
            boolean z = false;
            super(z, z, 3, null);
            this.f9141c = f2;
            this.d = f3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeMoveTo)) {
                return false;
            }
            RelativeMoveTo relativeMoveTo = (RelativeMoveTo) obj;
            return Float.compare(this.f9141c, relativeMoveTo.f9141c) == 0 && Float.compare(this.d, relativeMoveTo.d) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.f9141c) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RelativeMoveTo(dx=");
            sb.append(this.f9141c);
            sb.append(", dy=");
            return a.m(sb, this.d, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "dx1", "dy1", "dx2", "dy2", "<init>", "(FFFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeQuadTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9142c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9143e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f9144f;

        public RelativeQuadTo(float f2, float f3, float f4, float f5) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f9142c = f2;
            this.d = f3;
            this.f9143e = f4;
            this.f9144f = f5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeQuadTo)) {
                return false;
            }
            RelativeQuadTo relativeQuadTo = (RelativeQuadTo) obj;
            return Float.compare(this.f9142c, relativeQuadTo.f9142c) == 0 && Float.compare(this.d, relativeQuadTo.d) == 0 && Float.compare(this.f9143e, relativeQuadTo.f9143e) == 0 && Float.compare(this.f9144f, relativeQuadTo.f9144f) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9144f) + pq0.b(pq0.b(Float.hashCode(this.f9142c) * 31, 31, this.d), 31, this.f9143e);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RelativeQuadTo(dx1=");
            sb.append(this.f9142c);
            sb.append(", dy1=");
            sb.append(this.d);
            sb.append(", dx2=");
            sb.append(this.f9143e);
            sb.append(", dy2=");
            return a.m(sb, this.f9144f, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "dx1", "dy1", "dx2", "dy2", "<init>", "(FFFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeReflectiveCurveTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9145c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9146e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f9147f;

        public RelativeReflectiveCurveTo(float f2, float f3, float f4, float f5) {
            super(true, false, 2, null);
            this.f9145c = f2;
            this.d = f3;
            this.f9146e = f4;
            this.f9147f = f5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeReflectiveCurveTo)) {
                return false;
            }
            RelativeReflectiveCurveTo relativeReflectiveCurveTo = (RelativeReflectiveCurveTo) obj;
            return Float.compare(this.f9145c, relativeReflectiveCurveTo.f9145c) == 0 && Float.compare(this.d, relativeReflectiveCurveTo.d) == 0 && Float.compare(this.f9146e, relativeReflectiveCurveTo.f9146e) == 0 && Float.compare(this.f9147f, relativeReflectiveCurveTo.f9147f) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9147f) + pq0.b(pq0.b(Float.hashCode(this.f9145c) * 31, 31, this.d), 31, this.f9146e);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RelativeReflectiveCurveTo(dx1=");
            sb.append(this.f9145c);
            sb.append(", dy1=");
            sb.append(this.d);
            sb.append(", dx2=");
            sb.append(this.f9146e);
            sb.append(", dy2=");
            return a.m(sb, this.f9147f, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "dx", "dy", "<init>", "(FF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeReflectiveQuadTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9148c;
        public final float d;

        public RelativeReflectiveQuadTo(float f2, float f3) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f9148c = f2;
            this.d = f3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeReflectiveQuadTo)) {
                return false;
            }
            RelativeReflectiveQuadTo relativeReflectiveQuadTo = (RelativeReflectiveQuadTo) obj;
            return Float.compare(this.f9148c, relativeReflectiveQuadTo.f9148c) == 0 && Float.compare(this.d, relativeReflectiveQuadTo.d) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.f9148c) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RelativeReflectiveQuadTo(dx=");
            sb.append(this.f9148c);
            sb.append(", dy=");
            return a.m(sb, this.d, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "dy", "<init>", "(F)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class RelativeVerticalTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9149c;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeVerticalTo(float f2) {
            boolean z = false;
            super(z, z, 3, null);
            this.f9149c = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RelativeVerticalTo) && Float.compare(this.f9149c, ((RelativeVerticalTo) obj).f9149c) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9149c);
        }

        public final String toString() {
            return a.m(new StringBuilder("RelativeVerticalTo(dy="), this.f9149c, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "", "y", "<init>", "(F)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class VerticalTo extends PathNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9150c;

        /* JADX WARN: Illegal instructions before constructor call */
        public VerticalTo(float f2) {
            boolean z = false;
            super(z, z, 3, null);
            this.f9150c = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VerticalTo) && Float.compare(this.f9150c, ((VerticalTo) obj).f9150c) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f9150c);
        }

        public final String toString() {
            return a.m(new StringBuilder("VerticalTo(y="), this.f9150c, ')');
        }
    }

    public /* synthetic */ PathNode(boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, null);
    }

    public PathNode(boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9108a = z;
        this.f9109b = z2;
    }
}

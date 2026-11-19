package androidx.constraintlayout.compose;

import androidx.constraintlayout.core.parser.CLObject;
import com.batch.android.s.b;
import defpackage.tr;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u00002\u00020\u0001:\u0003\u0007\b\tB\u0013\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006¨\u0006\n"}, d2 = {"Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;", "", "Landroidx/constraintlayout/core/parser/CLObject;", "extendFrom", "<init>", "(Landroidx/constraintlayout/core/parser/CLObject;)V", "()V", "BaselineAnchor", "HorizontalAnchor", "VerticalAnchor", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class ConstraintLayoutBaseScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CLObject f11238a;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$BaselineAnchor;", "", b.a.f24015b, "Landroidx/constraintlayout/compose/LayoutReference;", "reference", "<init>", "(Ljava/lang/Object;Landroidx/constraintlayout/compose/LayoutReference;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class BaselineAnchor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f11239a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutReference f11240b;

        public BaselineAnchor(Object obj, LayoutReference layoutReference) {
            this.f11239a = obj;
            this.f11240b = layoutReference;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BaselineAnchor)) {
                return false;
            }
            BaselineAnchor baselineAnchor = (BaselineAnchor) obj;
            return Intrinsics.c(this.f11239a, baselineAnchor.f11239a) && Intrinsics.c(this.f11240b, baselineAnchor.f11240b);
        }

        public final int hashCode() {
            return this.f11240b.hashCode() + (this.f11239a.hashCode() * 31);
        }

        public final String toString() {
            return "BaselineAnchor(id=" + this.f11239a + ", reference=" + this.f11240b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$HorizontalAnchor;", "", b.a.f24015b, "", "index", "Landroidx/constraintlayout/compose/LayoutReference;", "reference", "<init>", "(Ljava/lang/Object;ILandroidx/constraintlayout/compose/LayoutReference;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class HorizontalAnchor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f11241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LayoutReference f11243c;

        public HorizontalAnchor(Object obj, int i2, LayoutReference layoutReference) {
            this.f11241a = obj;
            this.f11242b = i2;
            this.f11243c = layoutReference;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HorizontalAnchor)) {
                return false;
            }
            HorizontalAnchor horizontalAnchor = (HorizontalAnchor) obj;
            return Intrinsics.c(this.f11241a, horizontalAnchor.f11241a) && this.f11242b == horizontalAnchor.f11242b && Intrinsics.c(this.f11243c, horizontalAnchor.f11243c);
        }

        public final int hashCode() {
            return this.f11243c.hashCode() + tr.b(this.f11242b, this.f11241a.hashCode() * 31, 31);
        }

        public final String toString() {
            return "HorizontalAnchor(id=" + this.f11241a + ", index=" + this.f11242b + ", reference=" + this.f11243c + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;", "", b.a.f24015b, "", "index", "Landroidx/constraintlayout/compose/LayoutReference;", "reference", "<init>", "(Ljava/lang/Object;ILandroidx/constraintlayout/compose/LayoutReference;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class VerticalAnchor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f11244a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11245b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LayoutReference f11246c;

        public VerticalAnchor(Object obj, int i2, LayoutReference layoutReference) {
            this.f11244a = obj;
            this.f11245b = i2;
            this.f11246c = layoutReference;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VerticalAnchor)) {
                return false;
            }
            VerticalAnchor verticalAnchor = (VerticalAnchor) obj;
            return Intrinsics.c(this.f11244a, verticalAnchor.f11244a) && this.f11245b == verticalAnchor.f11245b && Intrinsics.c(this.f11246c, verticalAnchor.f11246c);
        }

        public final int hashCode() {
            return this.f11246c.hashCode() + tr.b(this.f11245b, this.f11244a.hashCode() * 31, 31);
        }

        public final String toString() {
            return "VerticalAnchor(id=" + this.f11244a + ", index=" + this.f11245b + ", reference=" + this.f11246c + ')';
        }
    }

    public ConstraintLayoutBaseScope(CLObject cLObject) {
        new ArrayList();
        this.f11238a = cLObject != null ? cLObject.clone() : new CLObject(new char[0]);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConstraintLayoutBaseScope)) {
            return false;
        }
        return Intrinsics.c(this.f11238a, ((ConstraintLayoutBaseScope) obj).f11238a);
    }

    public final int hashCode() {
        return this.f11238a.hashCode();
    }

    public ConstraintLayoutBaseScope() {
        this(null);
    }
}

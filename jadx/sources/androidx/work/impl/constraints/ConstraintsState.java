package androidx.work.impl.constraints;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/work/impl/constraints/ConstraintsState;", "", "ConstraintsMet", "ConstraintsNotMet", "Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;", "Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ConstraintsState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;", "Landroidx/work/impl/constraints/ConstraintsState;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ConstraintsMet extends ConstraintsState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ConstraintsMet f20419a = new ConstraintsMet(null);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;", "Landroidx/work/impl/constraints/ConstraintsState;", "", "reason", "<init>", "(I)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ConstraintsNotMet extends ConstraintsState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f20420a;

        public ConstraintsNotMet(int i2) {
            super(null);
            this.f20420a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConstraintsNotMet) && this.f20420a == ((ConstraintsNotMet) obj).f20420a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f20420a);
        }

        public final String toString() {
            return tr.k(new StringBuilder("ConstraintsNotMet(reason="), this.f20420a, ')');
        }
    }

    public ConstraintsState(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

package androidx.constraintlayout.compose;

import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.state.ConstraintSetParser;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/constraintlayout/compose/RawConstraintSet;", "Landroidx/constraintlayout/compose/ConstraintSet;", "Landroidx/constraintlayout/core/parser/CLObject;", "clObject", "<init>", "(Landroidx/constraintlayout/core/parser/CLObject;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RawConstraintSet implements ConstraintSet {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CLObject f11274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintSetParser.LayoutVariables f11275c = new ConstraintSetParser.LayoutVariables();

    public RawConstraintSet(CLObject cLObject) {
        this.f11274b = cLObject;
    }

    @Override // androidx.constraintlayout.compose.ConstraintSet
    public final void a(State state, List list) throws CLParsingException {
        ConstraintSetParser.h(this.f11274b, state, this.f11275c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!RawConstraintSet.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return Intrinsics.c(this.f11274b, ((RawConstraintSet) obj).f11274b);
    }

    public final int hashCode() {
        return this.f11274b.hashCode();
    }
}

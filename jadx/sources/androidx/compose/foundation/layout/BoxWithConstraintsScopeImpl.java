package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;", "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;", "Landroidx/compose/foundation/layout/BoxScope;", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "<init>", "(Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class BoxWithConstraintsScopeImpl implements BoxWithConstraintsScope, BoxScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Density f4939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4940b;

    public BoxWithConstraintsScopeImpl(Density density, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4939a = density;
        this.f4940b = j2;
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* JADX INFO: renamed from: c, reason: from getter */
    public final long getF4940b() {
        return this.f4940b;
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    public final float e() {
        long j2 = this.f4940b;
        if (Constraints.d(j2)) {
            return this.f4939a.k1(Constraints.h(j2));
        }
        Dp.f11004c.getClass();
        return Dp.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxWithConstraintsScopeImpl)) {
            return false;
        }
        BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj;
        return Intrinsics.c(this.f4939a, boxWithConstraintsScopeImpl.f4939a) && Constraints.b(this.f4940b, boxWithConstraintsScopeImpl.f4940b);
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    public final Modifier g(Modifier modifier, Alignment alignment) {
        return BoxScopeInstance.f4938a.g(modifier, alignment);
    }

    public final int hashCode() {
        int iHashCode = this.f4939a.hashCode() * 31;
        Constraints.Companion companion = Constraints.f10998b;
        return Long.hashCode(this.f4940b) + iHashCode;
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    public final float i() {
        long j2 = this.f4940b;
        if (Constraints.c(j2)) {
            return this.f4939a.k1(Constraints.g(j2));
        }
        Dp.f11004c.getClass();
        return Dp.d;
    }

    public final String toString() {
        return "BoxWithConstraintsScopeImpl(density=" + this.f4939a + ", constraints=" + ((Object) Constraints.l(this.f4940b)) + ')';
    }
}

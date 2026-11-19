package androidx.constraintlayout.compose;

import androidx.compose.ui.layout.LayoutIdParentData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B(\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0017\u0010\b\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/constraintlayout/compose/ConstraintLayoutParentData;", "Landroidx/compose/ui/layout/LayoutIdParentData;", "Landroidx/constraintlayout/compose/ConstrainedLayoutReference;", "ref", "Lkotlin/Function1;", "Landroidx/constraintlayout/compose/ConstrainScope;", "", "Lkotlin/ExtensionFunctionType;", "constrain", "<init>", "(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class ConstraintLayoutParentData implements LayoutIdParentData {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstrainedLayoutReference f11248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f11249c;
    public final Object d;

    public ConstraintLayoutParentData(ConstrainedLayoutReference constrainedLayoutReference, Function1<? super ConstrainScope, Unit> function1) {
        this.f11248b = constrainedLayoutReference;
        this.f11249c = function1;
        this.d = constrainedLayoutReference.f11234b;
    }

    @Override // androidx.compose.ui.layout.LayoutIdParentData
    /* JADX INFO: renamed from: S0, reason: from getter */
    public final Object getD() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ConstraintLayoutParentData)) {
            return false;
        }
        ConstraintLayoutParentData constraintLayoutParentData = (ConstraintLayoutParentData) obj;
        return Intrinsics.c(this.f11248b.f11234b, constraintLayoutParentData.f11248b.f11234b) && this.f11249c == constraintLayoutParentData.f11249c;
    }

    public final int hashCode() {
        return this.f11249c.hashCode() + (this.f11248b.f11234b.hashCode() * 31);
    }
}

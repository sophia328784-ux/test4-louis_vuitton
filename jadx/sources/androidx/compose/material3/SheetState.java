package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SnapSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.Density;
import defpackage.av0;
import defpackage.bo0;
import defpackage.hv0;
import defpackage.j5;
import defpackage.md;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0012BU\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eBC\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u0011¨\u0006\u0013"}, d2 = {"Landroidx/compose/material3/SheetState;", "", "", "skipPartiallyExpanded", "Lkotlin/Function0;", "", "positionalThreshold", "velocityThreshold", "Landroidx/compose/material3/SheetValue;", "initialValue", "Lkotlin/Function1;", "confirmValueChange", "skipHiddenState", "<init>", "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V", "Landroidx/compose/ui/unit/Density;", "density", "(ZLandroidx/compose/ui/unit/Density;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V", "Companion", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SheetState {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f7207h = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f7208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f7209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f7210c;
    public AnimationSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnchoredDraggableState f7211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public FiniteAnimationSpec f7212f;
    public FiniteAnimationSpec g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/SheetState$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public SheetState(boolean z, Function0<Float> function0, Function0<Float> function1, SheetValue sheetValue, Function1<? super SheetValue, Boolean> function2, boolean z2) {
        this.f7208a = z;
        this.f7209b = function2;
        this.f7210c = z2;
        if (z && sheetValue == SheetValue.PartiallyExpanded) {
            md.n("The initial value must not be set to PartiallyExpanded if skipPartiallyExpanded is set to true.");
            throw null;
        }
        if (z2 && sheetValue == SheetValue.Hidden) {
            md.n("The initial value must not be set to Hidden if skipHiddenState is set to true.");
            throw null;
        }
        this.d = SheetDefaultsKt.f7202b;
        this.f7211e = new AnchoredDraggableState(sheetValue, new bo0(function0, 8), function1, new hv0(this, 4), function2);
        this.f7212f = new SnapSpec(0);
        this.g = new SnapSpec(0);
    }

    public static Object a(SheetState sheetState, SheetValue sheetValue, FiniteAnimationSpec finiteAnimationSpec, SuspendLambda suspendLambda) {
        float fA = ((SnapshotMutableFloatStateImpl) sheetState.f7211e.l).a();
        AnchoredDraggableState anchoredDraggableState = sheetState.f7211e;
        SheetState$animateTo$2 sheetState$animateTo$2 = new SheetState$animateTo$2(sheetState, fA, finiteAnimationSpec, null);
        int i2 = AnchoredDraggableState.p;
        Object objB = anchoredDraggableState.b(sheetValue, MutatePriority.Default, sheetState$animateTo$2, suspendLambda);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    public final Object b(SuspendLambda suspendLambda) {
        Object objA;
        SheetValue sheetValue = SheetValue.Expanded;
        return (((Boolean) this.f7209b.invoke(sheetValue)).booleanValue() && (objA = a(this, sheetValue, this.f7212f, suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objA : Unit.f71739a;
    }

    public final SheetValue c() {
        return (SheetValue) ((SnapshotMutableStateImpl) this.f7211e.g).getF10755b();
    }

    public final Object d(SuspendLambda suspendLambda) {
        Object objA;
        if (this.f7210c) {
            md.k("Attempted to animate to hidden when skipHiddenState was enabled. Set skipHiddenState to false to use this function.");
            return null;
        }
        SheetValue sheetValue = SheetValue.Hidden;
        return (((Boolean) this.f7209b.invoke(sheetValue)).booleanValue() && (objA = a(this, sheetValue, this.g, suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objA : Unit.f71739a;
    }

    public final boolean e() {
        return ((SnapshotMutableStateImpl) this.f7211e.g).getF10755b() != SheetValue.Hidden;
    }

    public final Object f(SuspendLambda suspendLambda) {
        Object objA;
        if (this.f7208a) {
            md.k("Attempted to animate to partial expanded when skipPartiallyExpanded was enabled. Set skipPartiallyExpanded to false to use this function.");
            return null;
        }
        SheetValue sheetValue = SheetValue.PartiallyExpanded;
        return (((Boolean) this.f7209b.invoke(sheetValue)).booleanValue() && (objA = a(this, sheetValue, this.g, suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objA : Unit.f71739a;
    }

    public final Object g(SuspendLambda suspendLambda) {
        Object objA;
        DraggableAnchors draggableAnchorsE = this.f7211e.e();
        SheetValue sheetValue = SheetValue.PartiallyExpanded;
        if (!draggableAnchorsE.d(sheetValue)) {
            sheetValue = SheetValue.Expanded;
        }
        return (((Boolean) this.f7209b.invoke(sheetValue)).booleanValue() && (objA = a(this, sheetValue, this.f7212f, suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objA : Unit.f71739a;
    }

    public /* synthetic */ SheetState(boolean z, Function0 function0, Function0 function1, SheetValue sheetValue, Function1 function2, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, function0, function1, (i2 & 8) != 0 ? SheetValue.Hidden : sheetValue, (i2 & 16) != 0 ? new av0(18) : function2, (i2 & 32) != 0 ? false : z2);
    }

    public /* synthetic */ SheetState(boolean z, Density density, SheetValue sheetValue, Function1 function1, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, density, (i2 & 4) != 0 ? SheetValue.Hidden : sheetValue, (i2 & 8) != 0 ? new av0(18) : function1, (i2 & 16) != 0 ? false : z2);
    }

    @Deprecated
    public /* synthetic */ SheetState(boolean z, Density density, SheetValue sheetValue, Function1 function1, boolean z2) {
        this(z, new j5(density, 1), new j5(density, 2), sheetValue, function1, z2);
    }
}

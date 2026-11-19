package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.bp;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dBµ\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012<\u0010\u0016\u001a8\b\u0001\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140\f¢\u0006\u0002\b\u0015\u0012<\u0010\u0019\u001a8\b\u0001\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140\f¢\u0006\u0002\b\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0007¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Landroidx/compose/foundation/gestures/DraggableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/gestures/DraggableNode;", "Landroidx/compose/foundation/gestures/DraggableState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "enabled", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "startDragImmediately", "Lkotlin/Function3;", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/ParameterName;", "name", "startedPosition", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "onDragStarted", "", "velocity", "onDragStopped", "reverseDirection", "<init>", "(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DraggableElement extends ModifierNodeElement<DraggableNode> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final bp f4558j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DraggableState f4559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Orientation f4560c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableInteractionSource f4561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f4562f;
    public final Function3 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function3 f4563h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f4564i;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/DraggableElement$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f4558j = new bp(28);
    }

    public DraggableElement(DraggableState draggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, Function3<? super CoroutineScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function3<? super CoroutineScope, ? super Float, ? super Continuation<? super Unit>, ? extends Object> function4, boolean z3) {
        this.f4559b = draggableState;
        this.f4560c = orientation;
        this.d = z;
        this.f4561e = mutableInteractionSource;
        this.f4562f = z2;
        this.g = function3;
        this.f4563h = function4;
        this.f4564i = z3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new DraggableNode(this.f4559b, f4558j, this.f4560c, this.d, this.f4561e, this.f4562f, this.g, this.f4563h, this.f4564i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DraggableElement.class != obj.getClass()) {
            return false;
        }
        DraggableElement draggableElement = (DraggableElement) obj;
        return Intrinsics.c(this.f4559b, draggableElement.f4559b) && this.f4560c == draggableElement.f4560c && this.d == draggableElement.d && Intrinsics.c(this.f4561e, draggableElement.f4561e) && this.f4562f == draggableElement.f4562f && Intrinsics.c(this.g, draggableElement.g) && Intrinsics.c(this.f4563h, draggableElement.f4563h) && this.f4564i == draggableElement.f4564i;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        boolean z;
        boolean z2;
        DraggableNode draggableNode = (DraggableNode) node;
        DraggableState draggableState = draggableNode.K;
        DraggableState draggableState2 = this.f4559b;
        if (Intrinsics.c(draggableState, draggableState2)) {
            z = false;
        } else {
            draggableNode.K = draggableState2;
            z = true;
        }
        Orientation orientation = draggableNode.L;
        Orientation orientation2 = this.f4560c;
        if (orientation != orientation2) {
            draggableNode.L = orientation2;
            z = true;
        }
        boolean z3 = draggableNode.P;
        boolean z4 = this.f4564i;
        if (z3 != z4) {
            draggableNode.P = z4;
            z2 = true;
        } else {
            z2 = z;
        }
        draggableNode.N = this.g;
        draggableNode.O = this.f4563h;
        draggableNode.M = this.f4562f;
        draggableNode.B2(f4558j, this.d, this.f4561e, orientation2, z2);
    }

    public final int hashCode() {
        int iB = o60.b((this.f4560c.hashCode() + (this.f4559b.hashCode() * 31)) * 31, 31, this.d);
        MutableInteractionSource mutableInteractionSource = this.f4561e;
        return Boolean.hashCode(this.f4564i) + ((this.f4563h.hashCode() + ((this.g.hashCode() + o60.b((iB + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31, 31, this.f4562f)) * 31)) * 31);
    }
}

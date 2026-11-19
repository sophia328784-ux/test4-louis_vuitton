package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B=\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;", "", "key1", "key2", "", "keys", "Landroidx/compose/ui/input/pointer/PointerInputEventHandler;", "pointerInputEventHandler", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SuspendPointerInputElement extends ModifierNodeElement<SuspendingPointerInputModifierNodeImpl> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f9375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f9376c;
    public final Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PointerInputEventHandler f9377e;

    public /* synthetic */ SuspendPointerInputElement(Object obj, Object obj2, Object[] objArr, PointerInputEventHandler pointerInputEventHandler, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : obj, (i2 & 2) != 0 ? null : obj2, (i2 & 4) != 0 ? null : objArr, pointerInputEventHandler);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SuspendingPointerInputModifierNodeImpl(this.f9375b, this.f9376c, this.d, this.f9377e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuspendPointerInputElement)) {
            return false;
        }
        SuspendPointerInputElement suspendPointerInputElement = (SuspendPointerInputElement) obj;
        if (!Intrinsics.c(this.f9375b, suspendPointerInputElement.f9375b) || !Intrinsics.c(this.f9376c, suspendPointerInputElement.f9376c)) {
            return false;
        }
        Object[] objArr = suspendPointerInputElement.d;
        Object[] objArr2 = this.d;
        if (objArr2 != null) {
            if (objArr == null || !Arrays.equals(objArr2, objArr)) {
                return false;
            }
        } else if (objArr != null) {
            return false;
        }
        return this.f9377e == suspendPointerInputElement.f9377e;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = (SuspendingPointerInputModifierNodeImpl) node;
        Object obj = suspendingPointerInputModifierNodeImpl.p;
        Object obj2 = this.f9375b;
        boolean z = !Intrinsics.c(obj, obj2);
        suspendingPointerInputModifierNodeImpl.p = obj2;
        Object obj3 = suspendingPointerInputModifierNodeImpl.q;
        Object obj4 = this.f9376c;
        if (!Intrinsics.c(obj3, obj4)) {
            z = true;
        }
        suspendingPointerInputModifierNodeImpl.q = obj4;
        Object[] objArr = suspendingPointerInputModifierNodeImpl.r;
        Object[] objArr2 = this.d;
        if (objArr != null && objArr2 == null) {
            z = true;
        }
        if (objArr == null && objArr2 != null) {
            z = true;
        }
        if (objArr != null && objArr2 != null && !Arrays.equals(objArr2, objArr)) {
            z = true;
        }
        suspendingPointerInputModifierNodeImpl.r = objArr2;
        Class<?> cls = suspendingPointerInputModifierNodeImpl.t.getClass();
        PointerInputEventHandler pointerInputEventHandler = this.f9377e;
        if (cls == pointerInputEventHandler.getClass() ? z : true) {
            suspendingPointerInputModifierNodeImpl.J0();
        }
        suspendingPointerInputModifierNodeImpl.t = pointerInputEventHandler;
    }

    public final int hashCode() {
        Object obj = this.f9375b;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Object obj2 = this.f9376c;
        int iHashCode2 = (iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31;
        Object[] objArr = this.d;
        return this.f9377e.hashCode() + ((iHashCode2 + (objArr != null ? Arrays.hashCode(objArr) : 0)) * 31);
    }

    public SuspendPointerInputElement(Object obj, Object obj2, Object[] objArr, PointerInputEventHandler pointerInputEventHandler) {
        this.f9375b = obj;
        this.f9376c = obj2;
        this.d = objArr;
        this.f9377e = pointerInputEventHandler;
    }
}

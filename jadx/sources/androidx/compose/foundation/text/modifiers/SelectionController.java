package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate;
import androidx.compose.foundation.text.selection.Selectable;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.yu0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/text/modifiers/SelectionController;", "Landroidx/compose/runtime/RememberObserver;", "", "selectableId", "Landroidx/compose/foundation/text/selection/SelectionRegistrar;", "selectionRegistrar", "Landroidx/compose/ui/graphics/Color;", "backgroundSelectionColor", "Landroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;", "params", "<init>", "(JLandroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SelectionController implements RememberObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectionRegistrar f6300c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public StaticTextSelectionParams f6301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Selectable f6302f;
    public final Modifier g;

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1, java.lang.Object] */
    public SelectionController(final long j2, final SelectionRegistrar selectionRegistrar, long j3, StaticTextSelectionParams staticTextSelectionParams, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6299b = j2;
        this.f6300c = selectionRegistrar;
        this.d = j3;
        this.f6301e = staticTextSelectionParams;
        final yu0 yu0Var = new yu0(this, 2);
        final ?? r2 = new TextDragObserver() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public long f6305a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f6306b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public SelectionAdjustment f6307c;

            {
                Offset.f8806b.getClass();
                this.f6305a = 0L;
                this.f6306b = 0L;
                this.f6307c = SelectionAdjustment.Companion.f6397a;
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void a() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void b(long j4, SelectionAdjustment selectionAdjustment) {
                this.f6307c = selectionAdjustment;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) yu0Var.mo47invoke();
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                if (layoutCoordinates != null) {
                    if (!layoutCoordinates.c()) {
                        return;
                    }
                    selectionRegistrar2.c();
                    this.f6305a = j4;
                }
                if (SelectionRegistrarKt.a(selectionRegistrar2, j2)) {
                    Offset.f8806b.getClass();
                    this.f6306b = 0L;
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void c() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void d(long j4) {
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) yu0Var.mo47invoke();
                if (layoutCoordinates == null || !layoutCoordinates.c()) {
                    return;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                if (SelectionRegistrarKt.a(selectionRegistrar2, j2)) {
                    long jF = Offset.f(this.f6306b, j4);
                    this.f6306b = jF;
                    long jF2 = Offset.f(this.f6305a, jF);
                    if (selectionRegistrar2.h()) {
                        this.f6305a = jF2;
                        Offset.f8806b.getClass();
                        this.f6306b = 0L;
                    }
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onCancel() {
                long j4 = j2;
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                if (SelectionRegistrarKt.a(selectionRegistrar2, j4)) {
                    selectionRegistrar2.i();
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onStop() {
                long j4 = j2;
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                if (SelectionRegistrarKt.a(selectionRegistrar2, j4)) {
                    selectionRegistrar2.i();
                }
            }
        };
        final ?? r1 = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1
            {
                Offset.f8806b.getClass();
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean a(long j4, SelectionAdjustment selectionAdjustment, int i2) {
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) yu0Var.mo47invoke();
                if (layoutCoordinates == null || !layoutCoordinates.c()) {
                    return false;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                selectionRegistrar2.c();
                return SelectionRegistrarKt.a(selectionRegistrar2, j2);
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final void b() {
                selectionRegistrar.i();
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean c(long j4) {
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) yu0Var.mo47invoke();
                if (layoutCoordinates == null) {
                    return true;
                }
                if (!layoutCoordinates.c()) {
                    return false;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                if (!SelectionRegistrarKt.a(selectionRegistrar2, j2)) {
                    return false;
                }
                selectionRegistrar2.h();
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean d(long j4, SelectionAdjustment selectionAdjustment) {
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) yu0Var.mo47invoke();
                if (layoutCoordinates == null) {
                    return true;
                }
                if (!layoutCoordinates.c()) {
                    return false;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                if (!SelectionRegistrarKt.a(selectionRegistrar2, j2)) {
                    return false;
                }
                selectionRegistrar2.h();
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean e(long j4) {
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) yu0Var.mo47invoke();
                if (layoutCoordinates == null || !layoutCoordinates.c()) {
                    return false;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                selectionRegistrar2.h();
                return SelectionRegistrarKt.a(selectionRegistrar2, j2);
            }
        };
        PointerInputEventHandler pointerInputEventHandler = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$1
            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object objC = SelectionGesturesKt.c(pointerInputScope, r1, r2, continuation);
                return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
            }
        };
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.f9378a;
        SuspendPointerInputElement suspendPointerInputElement = new SuspendPointerInputElement(r1, r2, null, pointerInputEventHandler, 4, null);
        PointerIcon.f9321a.getClass();
        this.g = PointerIconKt.a(suspendPointerInputElement, PointerIcon.Companion.f9324c);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        new MultiWidgetSelectionDelegate(this.f6299b, new yu0(this, 0), new yu0(this, 1));
        this.f6302f = this.f6300c.a();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
        if (this.f6302f != null) {
            this.f6300c.g();
            this.f6302f = null;
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        if (this.f6302f != null) {
            this.f6300c.g();
            this.f6302f = null;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SelectionController(long j2, SelectionRegistrar selectionRegistrar, long j3, StaticTextSelectionParams staticTextSelectionParams, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 8) != 0) {
            StaticTextSelectionParams.f6313c.getClass();
            staticTextSelectionParams = StaticTextSelectionParams.d;
        }
        this(j2, selectionRegistrar, j3, staticTextSelectionParams, null);
    }
}

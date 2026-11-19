package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PointerInteropFilter$pointerInputFilter$1 extends PointerInputFilter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PointerInteropFilter.DispatchToViewState f9360b = PointerInteropFilter.DispatchToViewState.Unknown;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PointerEvent f9361c;
    public final /* synthetic */ PointerInteropFilter d;

    public PointerInteropFilter$pointerInputFilter$1(PointerInteropFilter pointerInteropFilter) {
        this.d = pointerInteropFilter;
    }

    public final void a(PointerEvent pointerEvent, boolean z) {
        List list = pointerEvent.f9305a;
        List list2 = list;
        int size = list2.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((PointerInputChange) list.get(i2)).b()) {
                d(pointerEvent);
                return;
            }
        }
        LayoutCoordinates layoutCoordinates = this.f9356a;
        if (layoutCoordinates == null) {
            md.k("layoutCoordinates not set");
            return;
        }
        Offset.f8806b.getClass();
        long jH0 = layoutCoordinates.h0(0L);
        final PointerInteropFilter pointerInteropFilter = this.d;
        PointerInteropUtils_androidKt.a(pointerEvent, jH0, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$dispatchToView$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                MotionEvent motionEvent = (MotionEvent) obj;
                int actionMasked = motionEvent.getActionMasked();
                PointerInteropFilter pointerInteropFilter2 = pointerInteropFilter;
                if (actionMasked == 0) {
                    Function1 function1 = pointerInteropFilter2.f9357b;
                    if (function1 == null) {
                        Intrinsics.h("onTouchEvent");
                        throw null;
                    }
                    this.f9362c.f9360b = ((Boolean) ((PointerInteropFilter_androidKt$pointerInteropFilter$3) function1).invoke(motionEvent)).booleanValue() ? PointerInteropFilter.DispatchToViewState.Dispatching : PointerInteropFilter.DispatchToViewState.NotDispatching;
                } else {
                    Function1 function2 = pointerInteropFilter2.f9357b;
                    if (function2 == null) {
                        Intrinsics.h("onTouchEvent");
                        throw null;
                    }
                    ((PointerInteropFilter_androidKt$pointerInteropFilter$3) function2).invoke(motionEvent);
                }
                return Unit.f71739a;
            }
        }, false);
        if (this.f9360b == PointerInteropFilter.DispatchToViewState.Dispatching) {
            if (z) {
                int size2 = list2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ((PointerInputChange) list.get(i3)).a();
                }
            }
            InternalPointerEvent internalPointerEvent = pointerEvent.f9306b;
            if (internalPointerEvent != null) {
                internalPointerEvent.f9286c = !pointerInteropFilter.d;
            }
        }
    }

    public final void b() {
        if (this.f9360b == PointerInteropFilter.DispatchToViewState.Dispatching) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            final PointerInteropFilter pointerInteropFilter = this.d;
            Function1<MotionEvent, Unit> function1 = new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$onCancel$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    MotionEvent motionEvent = (MotionEvent) obj;
                    Function1 function2 = pointerInteropFilter.f9357b;
                    if (function2 != null) {
                        ((PointerInteropFilter_androidKt$pointerInteropFilter$3) function2).invoke(motionEvent);
                        return Unit.f71739a;
                    }
                    Intrinsics.h("onTouchEvent");
                    throw null;
                }
            };
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0);
            motionEventObtain.setSource(0);
            function1.invoke(motionEventObtain);
            motionEventObtain.recycle();
            this.f9360b = PointerInteropFilter.DispatchToViewState.Unknown;
            pointerInteropFilter.d = false;
            this.f9361c = null;
        }
    }

    public final void c(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        boolean z;
        boolean z2;
        boolean z3;
        List list = pointerEvent.f9305a;
        List list2 = list;
        int size = list2.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z = true;
                break;
            }
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
            if (PointerEventKt.b(pointerInputChange) || PointerEventKt.d(pointerInputChange)) {
                z = false;
                break;
            }
            i2++;
        }
        if (!z) {
            z2 = false;
            break;
        }
        int size2 = list2.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size2) {
                z2 = true;
                break;
            } else {
                if (((PointerInputChange) list.get(i3)).b()) {
                    z2 = false;
                    break;
                }
                i3++;
            }
        }
        PointerInteropFilter pointerInteropFilter = this.d;
        if (pointerInteropFilter.d) {
            z3 = true;
            break;
        }
        int size3 = list2.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size3) {
                if (!z2) {
                    z3 = false;
                    break;
                }
                break;
            } else {
                PointerInputChange pointerInputChange2 = (PointerInputChange) list.get(i4);
                if (!PointerEventKt.b(pointerInputChange2) && !PointerEventKt.d(pointerInputChange2)) {
                    i4++;
                }
            }
            z3 = true;
            break;
        }
        if (this.f9360b != PointerInteropFilter.DispatchToViewState.NotDispatching) {
            if (pointerEventPass == PointerEventPass.Initial && z3) {
                this.f9361c = pointerEvent;
                a(pointerEvent, !z || pointerInteropFilter.d);
            }
            if (pointerEventPass == PointerEventPass.Main && z && pointerEvent == this.f9361c && pointerInteropFilter.d) {
                int size4 = list2.size();
                for (int i5 = 0; i5 < size4; i5++) {
                    ((PointerInputChange) list.get(i5)).a();
                }
            }
            if (pointerEventPass == PointerEventPass.Final && !z3 && pointerEvent != this.f9361c) {
                a(pointerEvent, true);
            }
        }
        if (pointerEventPass == PointerEventPass.Final) {
            int size5 = list2.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size5) {
                    this.f9360b = PointerInteropFilter.DispatchToViewState.Unknown;
                    pointerInteropFilter.d = false;
                    this.f9361c = null;
                    break;
                } else if (!PointerEventKt.d((PointerInputChange) list.get(i6))) {
                    break;
                } else {
                    i6++;
                }
            }
            if (pointerEvent == this.f9361c && z) {
                int size6 = list2.size();
                for (int i7 = 0; i7 < size6; i7++) {
                    if (((PointerInputChange) list.get(i7)).b()) {
                        if (pointerInteropFilter.d) {
                            break;
                        }
                        d(pointerEvent);
                        return;
                    }
                }
                int size7 = list2.size();
                for (int i8 = 0; i8 < size7; i8++) {
                    ((PointerInputChange) list.get(i8)).a();
                }
            }
        }
    }

    public final void d(PointerEvent pointerEvent) {
        if (this.f9360b == PointerInteropFilter.DispatchToViewState.Dispatching) {
            LayoutCoordinates layoutCoordinates = this.f9356a;
            if (layoutCoordinates == null) {
                md.k("layoutCoordinates not set");
                return;
            }
            Offset.f8806b.getClass();
            long jH0 = layoutCoordinates.h0(0L);
            final PointerInteropFilter pointerInteropFilter = this.d;
            PointerInteropUtils_androidKt.a(pointerEvent, jH0, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$stopDispatching$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    MotionEvent motionEvent = (MotionEvent) obj;
                    Function1 function1 = pointerInteropFilter.f9357b;
                    if (function1 != null) {
                        ((PointerInteropFilter_androidKt$pointerInteropFilter$3) function1).invoke(motionEvent);
                        return Unit.f71739a;
                    }
                    Intrinsics.h("onTouchEvent");
                    throw null;
                }
            }, true);
        }
        this.f9360b = PointerInteropFilter.DispatchToViewState.NotDispatching;
    }
}

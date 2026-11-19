package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;", "", "Landroidx/compose/ui/node/LayoutNode;", "root", "<init>", "(Landroidx/compose/ui/node/LayoutNode;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PointerInputEventProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutNode f9352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HitPathTracker f9353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PointerInputChangeEventProducer f9354c = new PointerInputChangeEventProducer();
    public final HitTestResult d = new HitTestResult();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9355e;

    public PointerInputEventProcessor(LayoutNode layoutNode) {
        this.f9352a = layoutNode;
        this.f9353b = new HitPathTracker(layoutNode.H.f9772c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a(PointerInputEvent pointerInputEvent, AndroidComposeView androidComposeView, boolean z) {
        int i2;
        Object[] objArr;
        HitPathTracker hitPathTracker;
        int i3;
        int i4;
        HitTestResult hitTestResult = this.d;
        if (this.f9355e) {
            return 0;
        }
        try {
            this.f9355e = true;
            InternalPointerEvent internalPointerEventA = this.f9354c.a(pointerInputEvent, androidComposeView);
            LongSparseArray longSparseArray = internalPointerEventA.f9284a;
            int iG = longSparseArray.g();
            while (true) {
                if (i2 >= iG) {
                    objArr = true;
                    break;
                }
                PointerInputChange pointerInputChange = (PointerInputChange) longSparseArray.h(i2);
                i2 = (pointerInputChange.d || pointerInputChange.f9333h) ? 0 : i2 + 1;
                objArr = false;
                break;
            }
            int iG2 = longSparseArray.g();
            int i5 = 0;
            while (true) {
                hitPathTracker = this.f9353b;
                if (i5 >= iG2) {
                    break;
                }
                PointerInputChange pointerInputChange2 = (PointerInputChange) longSparseArray.h(i5);
                if (objArr != false || PointerEventKt.b(pointerInputChange2)) {
                    LayoutNode layoutNode = this.f9352a;
                    long j2 = pointerInputChange2.f9330c;
                    HitTestResult hitTestResult2 = this.d;
                    int i6 = pointerInputChange2.f9334i;
                    LayoutNode.Companion companion = LayoutNode.T;
                    layoutNode.S(j2, hitTestResult2, i6, true);
                    if (!hitTestResult.f9667b.d()) {
                        hitPathTracker.a(pointerInputChange2.f9328a, hitTestResult, PointerEventKt.b(pointerInputChange2));
                        hitTestResult.clear();
                    }
                }
                i5++;
            }
            boolean zB = hitPathTracker.b(internalPointerEventA, z);
            if (internalPointerEventA.f9286c) {
                i3 = 0;
                break;
            }
            int iG3 = longSparseArray.g();
            int i7 = 0;
            while (true) {
                if (i7 >= iG3) {
                    i3 = 0;
                    break;
                }
                PointerInputChange pointerInputChange3 = (PointerInputChange) longSparseArray.h(i7);
                long jF = PointerEventKt.f(pointerInputChange3, true);
                Offset.f8806b.getClass();
                if (!Offset.c(jF, 0L) && pointerInputChange3.b()) {
                    i3 = 1;
                    break;
                }
                i7++;
            }
            int iG4 = longSparseArray.g();
            for (int i8 = 0; i8 < iG4; i8++) {
                if (((PointerInputChange) longSparseArray.h(i8)).b()) {
                    i4 = 1;
                    return (zB ? 1 : 0) | (i3 << 1) | (i4 << 2);
                }
            }
            i4 = 0;
            return (zB ? 1 : 0) | (i3 << 1) | (i4 << 2);
        } finally {
            this.f9355e = false;
        }
    }

    public final void b() {
        if (this.f9355e) {
            return;
        }
        this.f9354c.f9337a.a();
        this.f9353b.c();
    }
}

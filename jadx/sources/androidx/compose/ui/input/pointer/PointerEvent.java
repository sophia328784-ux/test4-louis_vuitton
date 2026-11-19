package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B!\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB\u0017\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0007\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerEvent;", "", "", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "changes", "Landroidx/compose/ui/input/pointer/InternalPointerEvent;", "internalPointerEvent", "<init>", "(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V", "(Ljava/util/List;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PointerEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f9305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InternalPointerEvent f9306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9307c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f9308e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9309f;

    /* JADX WARN: Code duplicated, block: B:44:0x00bb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d1  */
    public PointerEvent(List<PointerInputChange> list, InternalPointerEvent internalPointerEvent) {
        this.f9305a = list;
        this.f9306b = internalPointerEvent;
        MotionEvent motionEventA = a();
        int i2 = 0;
        this.f9307c = motionEventA != null ? motionEventA.getClassification() : 0;
        MotionEvent motionEventA2 = a();
        this.d = motionEventA2 != null ? motionEventA2.getButtonState() : 0;
        MotionEvent motionEventA3 = a();
        this.f9308e = motionEventA3 != null ? motionEventA3.getMetaState() : 0;
        MotionEvent motionEventA4 = a();
        if (motionEventA4 != null) {
            boolean z = motionEventA4.getClassification() == 3;
            boolean z2 = motionEventA4.getClassification() == 5;
            int actionMasked = motionEventA4.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        switch (actionMasked) {
                            case 5:
                                if (z) {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.f9318k;
                                } else if (!z2) {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.f9311b;
                                } else {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.f9316i;
                                }
                                break;
                            case 6:
                                if (z) {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.m;
                                } else if (!z2) {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.f9312c;
                                } else {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.f9316i;
                                }
                                break;
                            case 7:
                                if (z) {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.l;
                                } else if (!z2) {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.d;
                                } else {
                                    PointerEventType.f9310a.getClass();
                                    i2 = PointerEventType.f9316i;
                                }
                                break;
                            case 8:
                                PointerEventType.f9310a.getClass();
                                i2 = PointerEventType.g;
                                break;
                            case 9:
                                PointerEventType.f9310a.getClass();
                                i2 = PointerEventType.f9313e;
                                break;
                            case 10:
                                PointerEventType.f9310a.getClass();
                                i2 = PointerEventType.f9314f;
                                break;
                            default:
                                PointerEventType.f9310a.getClass();
                                break;
                        }
                    } else if (z) {
                        PointerEventType.f9310a.getClass();
                        i2 = PointerEventType.l;
                    } else if (!z2) {
                        PointerEventType.f9310a.getClass();
                        i2 = PointerEventType.f9316i;
                    } else {
                        PointerEventType.f9310a.getClass();
                        i2 = PointerEventType.d;
                    }
                } else if (z) {
                    PointerEventType.f9310a.getClass();
                    i2 = PointerEventType.m;
                } else if (z2) {
                    PointerEventType.f9310a.getClass();
                    i2 = PointerEventType.f9317j;
                } else {
                    PointerEventType.f9310a.getClass();
                    i2 = PointerEventType.f9312c;
                }
            } else if (z) {
                PointerEventType.f9310a.getClass();
                i2 = PointerEventType.f9318k;
            } else if (z2) {
                PointerEventType.f9310a.getClass();
                i2 = PointerEventType.f9315h;
            } else {
                PointerEventType.f9310a.getClass();
                i2 = PointerEventType.f9311b;
            }
        } else {
            int size = list.size();
            while (i2 < size) {
                PointerInputChange pointerInputChange = list.get(i2);
                if (PointerEventKt.d(pointerInputChange)) {
                    PointerEventType.f9310a.getClass();
                    i2 = PointerEventType.f9312c;
                } else if (PointerEventKt.b(pointerInputChange)) {
                    PointerEventType.f9310a.getClass();
                    i2 = PointerEventType.f9311b;
                } else {
                    i2++;
                }
            }
            PointerEventType.f9310a.getClass();
            i2 = PointerEventType.d;
        }
        this.f9309f = i2;
    }

    public final MotionEvent a() {
        InternalPointerEvent internalPointerEvent = this.f9306b;
        if (internalPointerEvent != null) {
            return internalPointerEvent.f9285b.f9342b;
        }
        return null;
    }

    public PointerEvent(List<PointerInputChange> list) {
        this(list, null);
    }
}

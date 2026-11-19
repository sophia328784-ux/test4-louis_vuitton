package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputEvent;", "", "", "uptime", "", "Landroidx/compose/ui/input/pointer/PointerInputEventData;", "pointers", "Landroid/view/MotionEvent;", "motionEvent", "<init>", "(JLjava/util/List;Landroid/view/MotionEvent;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PointerInputEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f9341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MotionEvent f9342b;

    public PointerInputEvent(long j2, List<PointerInputEventData> list, MotionEvent motionEvent) {
        this.f9341a = list;
        this.f9342b = motionEvent;
    }
}

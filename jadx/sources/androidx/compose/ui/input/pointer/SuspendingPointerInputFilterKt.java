package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SuspendingPointerInputFilterKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PointerEvent f9378a = new PointerEvent(EmptyList.f71768b);

    public static final Modifier a(Modifier modifier, Object obj, PointerInputEventHandler pointerInputEventHandler) {
        return modifier.o(new SuspendPointerInputElement(obj, null, null, pointerInputEventHandler, 6, null));
    }
}

package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "Landroidx/compose/ui/unit/Density;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface AwaitPointerEventScope extends Density {
    default Object D1(long j2, Function2 function2, ContinuationImpl continuationImpl) {
        return function2.invoke(this, continuationImpl);
    }

    Object N0(PointerEventPass pointerEventPass, BaseContinuationImpl baseContinuationImpl);

    PointerEvent O0();

    long a();

    default Object c1(long j2, Function2 function2, BaseContinuationImpl baseContinuationImpl) {
        return function2.invoke(this, baseContinuationImpl);
    }

    ViewConfiguration getViewConfiguration();

    default long w0() {
        Size.f8820b.getClass();
        return 0L;
    }
}

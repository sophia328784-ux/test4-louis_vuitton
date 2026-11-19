package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {1172, 1216}, m = "awaitHorizontalPointerSlopOrCancellation-gDDlDlE", v = 1)
final class DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function2 f4491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AwaitPointerEventScope f4492c;
    public Ref$LongRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TouchSlopDetector f4493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PointerInputChange f4494f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f4495h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4496i;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4495h = obj;
        this.f4496i |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.b(null, 0L, 0, null, this);
    }
}

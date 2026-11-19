package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$LongRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {1166}, m = "horizontalDrag-jO51t88", v = 1)
final class DragGestureDetectorKt$horizontalDrag$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function1 f4525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AwaitPointerEventScope f4526c;
    public Orientation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AwaitPointerEventScope f4527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Ref$LongRef f4528f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4529h;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f4529h |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.i(null, 0L, null, this);
    }
}

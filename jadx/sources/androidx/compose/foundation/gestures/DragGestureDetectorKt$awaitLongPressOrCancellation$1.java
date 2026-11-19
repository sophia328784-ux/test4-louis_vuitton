package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {1076}, m = "awaitLongPressOrCancellation-rnUCldI", v = 1)
final class DragGestureDetectorKt$awaitLongPressOrCancellation$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PointerInputChange f4497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$ObjectRef f4498c;
    public Ref$BooleanRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4500f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4499e = obj;
        this.f4500f |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.c(null, 0L, this);
    }
}

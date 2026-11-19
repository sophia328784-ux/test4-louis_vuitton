package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$LongRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", l = {193, 232}, m = "touchSelectionSubsequentPress", v = 1)
final class SelectionGesturesKt$touchSelectionSubsequentPress$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AwaitPointerEventScope f6415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextDragObserver f6416c;
    public Ref$LongRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f6417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f6418f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f6418f = obj;
        this.g |= Integer.MIN_VALUE;
        return SelectionGesturesKt.b(null, null, null, 0, this);
    }
}

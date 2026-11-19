package androidx.compose.foundation.text.selection;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", l = {267, 294}, m = "mouseSelection", v = 1)
final class SelectionGesturesKt$mouseSelection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AwaitPointerEventScope f6407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MouseSelectionObserver f6408c;
    public Ref$BooleanRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f6409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6410f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f6409e = obj;
        this.f6410f |= Integer.MIN_VALUE;
        return SelectionGesturesKt.d(null, null, null, null, this);
    }
}

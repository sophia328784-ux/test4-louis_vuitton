package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$LongRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {284, 1172, 1213, 307, 1252, 1294, 1306}, m = "processDragGesture", v = 1)
final class DragGestureDetectorKt$processDragGesture$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f4530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f4531c;
    public Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f4532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f4533f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f4534h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f4535i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object f4536j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Ref$LongRef f4537k;
    public TouchSlopDetector l;
    public PointerInputChange m;
    public boolean n;
    public float o;
    public /* synthetic */ Object p;
    public int q;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.p = obj;
        this.q |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.l(null, null, null, null, null, null, null, this);
    }
}

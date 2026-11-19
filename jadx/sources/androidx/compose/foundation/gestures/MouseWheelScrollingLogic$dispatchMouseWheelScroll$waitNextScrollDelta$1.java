package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic", f = "MouseWheelScrollingLogic.kt", l = {201}, m = "dispatchMouseWheelScroll$waitNextScrollDelta", v = 1)
final class MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MouseWheelScrollingLogic f4623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$ObjectRef f4624c;
    public Ref$FloatRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ScrollingLogic f4625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Ref$ObjectRef f4626f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4627h;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f4627h |= Integer.MIN_VALUE;
        return MouseWheelScrollingLogic.d(null, null, null, null, null, 0L, this);
    }
}

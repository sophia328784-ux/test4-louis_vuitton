package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.FlowExtKt$simpleScan$1$1", f = "FlowExt.kt", l = {56, 57}, m = "emit")
final class FlowExtKt$simpleScan$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f18606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$ObjectRef f18607c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FlowExtKt$simpleScan$1.AnonymousClass1 f18608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18609f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowExtKt$simpleScan$1$1$emit$1(FlowExtKt$simpleScan$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f18608e = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f18609f |= Integer.MIN_VALUE;
        return this.f18608e.emit(null, this);
    }
}

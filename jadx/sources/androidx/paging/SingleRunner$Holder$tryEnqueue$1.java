package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.SingleRunner$Holder", f = "SingleRunner.kt", l = {131, 102}, m = "tryEnqueue")
final class SingleRunner$Holder$tryEnqueue$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f18965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Job f18966c;
    public Mutex d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18967e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f18968f;
    public final /* synthetic */ SingleRunner.Holder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18969h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleRunner$Holder$tryEnqueue$1(SingleRunner.Holder holder, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = holder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f18968f = obj;
        this.f18969h |= Integer.MIN_VALUE;
        return this.g.b(0, null, this);
    }
}

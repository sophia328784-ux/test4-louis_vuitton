package androidx.room;

import android.os.CancellationSignal;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.CoroutinesRoom$Companion", f = "CoroutinesRoom.android.kt", l = {64, 94}, m = "execute")
final class CoroutinesRoom$Companion$execute$3<R> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RoomDatabase f19374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CancellationSignal f19375c;
    public Callable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CoroutineContext f19376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f19377f;
    public final /* synthetic */ CoroutinesRoom.Companion g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19378h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutinesRoom$Companion$execute$3(CoroutinesRoom.Companion companion, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f19377f = obj;
        this.f19378h |= Integer.MIN_VALUE;
        return this.g.a(null, null, null, this);
    }
}

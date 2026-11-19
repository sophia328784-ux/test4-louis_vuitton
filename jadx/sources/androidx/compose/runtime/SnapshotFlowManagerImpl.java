package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b!\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/SnapshotFlowManagerImpl;", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SnapshotFlowManagerImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f8124a = new Object();

    public abstract void a(SendChannel sendChannel);

    public abstract void b();

    public abstract void c();

    public abstract Function1 d(SendChannel sendChannel);

    public abstract void e(Channel channel);
}

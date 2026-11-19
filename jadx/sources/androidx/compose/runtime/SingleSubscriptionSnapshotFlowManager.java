package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.j00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;", "Landroidx/compose/runtime/SnapshotFlowManagerImpl;", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SingleSubscriptionSnapshotFlowManager extends SnapshotFlowManagerImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f8118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f8119c;
    public MutableScatterSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MutableScatterSet f8120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SendChannel f8121f;
    public final f g = new f(this, 1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j00 f8122h;

    public SingleSubscriptionSnapshotFlowManager() {
        Snapshot.Companion companion = Snapshot.f8462e;
        e eVar = new e(this, 1);
        companion.getClass();
        this.f8122h = Snapshot.Companion.d(eVar);
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void a(SendChannel sendChannel) {
        this.f8119c = null;
        this.f8120e = null;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void b() {
        synchronized (this.f8124a) {
            try {
                this.f8118b = this.f8119c;
                if (this.f8120e == null) {
                    this.d = null;
                } else {
                    if (this.d == null) {
                        this.d = ScatterSetKt.a();
                    }
                    MutableScatterSet mutableScatterSet = this.d;
                    this.d = this.f8120e;
                    this.f8120e = mutableScatterSet;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void c() {
        this.f8122h.dispose();
        this.f8119c = null;
        this.f8120e = null;
        synchronized (this.f8124a) {
            this.f8121f = null;
            this.f8118b = null;
            this.d = null;
        }
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final Function1 d(SendChannel sendChannel) {
        SendChannel sendChannel2 = this.f8121f;
        if (sendChannel2 != null && !sendChannel2.equals(sendChannel)) {
            PreconditionsKt.b("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
        }
        this.f8121f = sendChannel;
        return this.g;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void e(Channel channel) {
        this.f8121f = null;
        this.f8119c = null;
        this.f8120e = null;
        b();
    }
}

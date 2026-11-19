package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.j00;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;", "Landroidx/compose/runtime/SnapshotFlowManagerImpl;", "<init>", "()V", "SubscriptionChange", "Add", "RemoveScope", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MultiSubscriptionSnapshotFlowManager extends SnapshotFlowManagerImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableScatterMap f8030b = ScatterMapKt.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f8031c = new ArrayList();
    public final MutableScatterSet d = ScatterSetKt.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableScatterMap f8032e = ScatterMapKt.b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final j00 f8033f;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;", "Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$SubscriptionChange;", "", "obj", "Lkotlinx/coroutines/channels/SendChannel;", "", "channel", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Add implements SubscriptionChange {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f8034a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SendChannel f8035b;

        public Add(Object obj, SendChannel<? super Unit> sendChannel) {
            this.f8034a = obj;
            this.f8035b = sendChannel;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$RemoveScope;", "Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$SubscriptionChange;", "Lkotlinx/coroutines/channels/SendChannel;", "", "channel", "<init>", "(Lkotlinx/coroutines/channels/SendChannel;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RemoveScope implements SubscriptionChange {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SendChannel f8036a;

        public RemoveScope(SendChannel<? super Unit> sendChannel) {
            this.f8036a = sendChannel;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$SubscriptionChange;", "", "Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;", "Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$RemoveScope;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface SubscriptionChange {
    }

    public MultiSubscriptionSnapshotFlowManager() {
        Snapshot.Companion companion = Snapshot.f8462e;
        e eVar = new e(this, 0);
        companion.getClass();
        this.f8033f = Snapshot.Companion.d(eVar);
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void a(SendChannel sendChannel) {
        this.f8031c.add(new RemoveScope(sendChannel));
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void b() {
        synchronized (this.f8124a) {
            try {
                ArrayList arrayList = this.f8031c;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    SubscriptionChange subscriptionChange = (SubscriptionChange) arrayList.get(i2);
                    if (subscriptionChange instanceof Add) {
                        ScopeMap.a(this.f8030b, ((Add) subscriptionChange).f8034a, ((Add) subscriptionChange).f8035b);
                    } else {
                        if (!(subscriptionChange instanceof RemoveScope)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        ScopeMap.c(this.f8030b, ((RemoveScope) subscriptionChange).f8036a);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f8031c.clear();
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void c() {
        this.f8033f.dispose();
        this.f8031c.clear();
        this.f8032e.h();
        synchronized (this.f8124a) {
            this.f8030b.h();
        }
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final Function1 d(SendChannel sendChannel) {
        MutableScatterMap mutableScatterMap = this.f8032e;
        Function1 dVar = (Function1) mutableScatterMap.e(sendChannel);
        if (dVar == null) {
            dVar = new d(this, sendChannel);
            int iJ = mutableScatterMap.j(sendChannel);
            if (iJ < 0) {
                iJ = ~iJ;
            }
            Object[] objArr = mutableScatterMap.f3363c;
            Object obj = objArr[iJ];
            mutableScatterMap.f3362b[iJ] = sendChannel;
            objArr[iJ] = dVar;
        }
        return dVar;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void e(Channel channel) {
        this.f8032e.m(channel);
        a(channel);
        b();
    }
}

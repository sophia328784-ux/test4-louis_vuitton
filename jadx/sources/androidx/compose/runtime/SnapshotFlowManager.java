package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/SnapshotFlowManager;", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotFlowManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SnapshotFlowManagerImpl f8123a = new SingleSubscriptionSnapshotFlowManager();

    /* JADX WARN: Code duplicated, block: B:33:0x0090 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0092 A[LOOP:0: B:22:0x004d->B:34:0x0092, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x0095 A[EDGE_INSN: B:53:0x0095->B:35:0x0095 BREAK  A[LOOP:0: B:22:0x004d->B:34:0x0092], SYNTHETIC] */
    public final Object a(Channel channel, Function0 function0) {
        SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager;
        SendChannel sendChannel;
        if (this.f8123a == null) {
            PreconditionsKt.b("Called runAndWatch on a manager that has been disposed of");
        }
        SnapshotFlowManagerImpl snapshotFlowManagerImpl = this.f8123a;
        if ((snapshotFlowManagerImpl instanceof SingleSubscriptionSnapshotFlowManager) && (sendChannel = (singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) snapshotFlowManagerImpl).f8121f) != null && !sendChannel.equals(channel)) {
            MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = new MultiSubscriptionSnapshotFlowManager();
            SendChannel sendChannel2 = singleSubscriptionSnapshotFlowManager.f8121f;
            if (sendChannel2 == null) {
                PreconditionsKt.b("promote must only be called when a manager is managing subscriptions for one channel and needs to start managing them for a second");
            }
            MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.d;
            ArrayList arrayList = multiSubscriptionSnapshotFlowManager.f8031c;
            if (mutableScatterSet != null) {
                Object[] objArr = mutableScatterSet.f3368b;
                long[] jArr = mutableScatterSet.f3367a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j2 = jArr[i2];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i2 != length) {
                                break;
                                break;
                            }
                            i2++;
                        } else {
                            int i3 = 8;
                            int i4 = 8 - ((~(i2 - length)) >>> 31);
                            int i5 = 0;
                            while (i5 < i4) {
                                if ((j2 & 255) < 128) {
                                    arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(objArr[(i2 << 3) + i5], sendChannel2));
                                }
                                j2 >>= i3;
                                i5++;
                                i3 = i3;
                            }
                            if (i4 != i3) {
                                break;
                            }
                            if (i2 != length) {
                                break;
                            }
                            i2++;
                        }
                    }
                }
            } else {
                Object obj = singleSubscriptionSnapshotFlowManager.f8118b;
                obj.getClass();
                arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(obj, sendChannel2));
            }
            multiSubscriptionSnapshotFlowManager.b();
            singleSubscriptionSnapshotFlowManager.c();
            this.f8123a = multiSubscriptionSnapshotFlowManager;
        }
        SnapshotFlowManagerImpl snapshotFlowManagerImpl2 = this.f8123a;
        snapshotFlowManagerImpl2.getClass();
        Snapshot.Companion companion = Snapshot.f8462e;
        Function1 function1D = snapshotFlowManagerImpl2.d(channel);
        companion.getClass();
        Snapshot snapshotU = SnapshotKt.i().u(function1D);
        snapshotFlowManagerImpl2.a(channel);
        try {
            Snapshot snapshotJ = snapshotU.j();
            try {
                Object objMo47invoke = function0.mo47invoke();
                Snapshot.q(snapshotJ);
                snapshotU.c();
                snapshotFlowManagerImpl2.b();
                return objMo47invoke;
            } catch (Throwable th) {
                Snapshot.q(snapshotJ);
                throw th;
            }
        } catch (Throwable th2) {
            snapshotU.c();
            throw th2;
        }
    }
}

package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8295b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MultiSubscriptionSnapshotFlowManager f8296c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d(MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager, SendChannel sendChannel) {
        this.f8296c = multiSubscriptionSnapshotFlowManager;
        this.d = sendChannel;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0061 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0063 A[LOOP:0: B:13:0x002c->B:23:0x0063, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x006b A[SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f8295b;
        MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = this.f8296c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                multiSubscriptionSnapshotFlowManager.f8031c.add(new MultiSubscriptionSnapshotFlowManager.Add(obj, (SendChannel) obj2));
                break;
            default:
                if (((Set) obj2).contains(obj)) {
                    MutableScatterMap mutableScatterMap = multiSubscriptionSnapshotFlowManager.f8030b;
                    MutableScatterSet mutableScatterSet = multiSubscriptionSnapshotFlowManager.d;
                    Object objE = mutableScatterMap.e(obj);
                    if (objE != null) {
                        if (objE instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) objE;
                            Object[] objArr = mutableScatterSet2.f3368b;
                            long[] jArr = mutableScatterSet2.f3367a;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i3 = 0;
                                while (true) {
                                    long j2 = jArr[i3];
                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i4 = 8 - ((~(i3 - length)) >>> 31);
                                        for (int i5 = 0; i5 < i4; i5++) {
                                            if ((255 & j2) < 128) {
                                                mutableScatterSet.d((SendChannel) objArr[(i3 << 3) + i5]);
                                            }
                                            j2 >>= 8;
                                        }
                                        if (i4 == 8) {
                                            if (i3 != length) {
                                                i3++;
                                            }
                                        }
                                    } else if (i3 != length) {
                                        i3++;
                                    }
                                }
                            }
                        } else {
                            mutableScatterSet.d((SendChannel) objE);
                        }
                    }
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ d(Set set, MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager) {
        this.d = set;
        this.f8296c = multiSubscriptionSnapshotFlowManager;
    }
}

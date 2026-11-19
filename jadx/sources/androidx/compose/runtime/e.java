package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnapshotFlowManagerImpl f8298c;

    public /* synthetic */ e(SnapshotFlowManagerImpl snapshotFlowManagerImpl, int i2) {
        this.f8297b = i2;
        this.f8298c = snapshotFlowManagerImpl;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0081  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e6 A[Catch: all -> 0x011d, LOOP:2: B:47:0x00bb->B:57:0x00e6, LOOP_END, TryCatch #1 {all -> 0x011d, blocks: (B:44:0x00a6, B:47:0x00bb, B:49:0x00c6, B:51:0x00d0, B:53:0x00d6, B:54:0x00de, B:57:0x00e6, B:58:0x00e9, B:61:0x00f5, B:63:0x0100, B:65:0x010a, B:67:0x0110, B:70:0x011f, B:73:0x0127, B:74:0x012a), top: B:81:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0125 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x0127 A[Catch: all -> 0x011d, LOOP:4: B:61:0x00f5->B:73:0x0127, LOOP_END, TryCatch #1 {all -> 0x011d, blocks: (B:44:0x00a6, B:47:0x00bb, B:49:0x00c6, B:51:0x00d0, B:53:0x00d6, B:54:0x00de, B:57:0x00e6, B:58:0x00e9, B:61:0x00f5, B:63:0x0100, B:65:0x010a, B:67:0x0110, B:70:0x011f, B:73:0x0127, B:74:0x012a), top: B:81:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x00e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x012a A[SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        char c2;
        SendChannel sendChannel;
        char c3 = 7;
        switch (this.f8297b) {
            case 0:
                MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = (MultiSubscriptionSnapshotFlowManager) this.f8298c;
                Set set = (Set) obj;
                synchronized (multiSubscriptionSnapshotFlowManager.f8124a) {
                    try {
                        MutableScatterMap mutableScatterMap = multiSubscriptionSnapshotFlowManager.f8030b;
                        d dVar = new d(set, multiSubscriptionSnapshotFlowManager);
                        TypeIntrinsics.e(1, dVar);
                        Object[] objArr = mutableScatterMap.f3362b;
                        long[] jArr = mutableScatterMap.f3361a;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i2 = 0;
                            while (true) {
                                long j2 = jArr[i2];
                                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                                    for (int i4 = 0; i4 < i3; i4++) {
                                        if ((j2 & 255) < 128) {
                                            dVar.invoke(objArr[(i2 << 3) + i4]);
                                        }
                                        j2 >>= 8;
                                    }
                                    if (i3 == 8) {
                                        if (i2 != length) {
                                            i2++;
                                        }
                                    }
                                } else if (i2 != length) {
                                    i2++;
                                }
                            }
                        }
                        MutableScatterSet mutableScatterSet = multiSubscriptionSnapshotFlowManager.d;
                        Object[] objArr2 = mutableScatterSet.f3368b;
                        long[] jArr2 = mutableScatterSet.f3367a;
                        int length2 = jArr2.length - 2;
                        if (length2 >= 0) {
                            int i5 = 0;
                            while (true) {
                                long j3 = jArr2[i5];
                                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i6 = 8 - ((~(i5 - length2)) >>> 31);
                                    for (int i7 = 0; i7 < i6; i7++) {
                                        if ((j3 & 255) < 128) {
                                            ((SendChannel) objArr2[(i5 << 3) + i7]).b(Unit.f71739a);
                                        }
                                        j3 >>= 8;
                                    }
                                    if (i6 == 8) {
                                        if (i5 != length2) {
                                            i5++;
                                        }
                                    }
                                } else if (i5 != length2) {
                                    i5++;
                                }
                            }
                        }
                        multiSubscriptionSnapshotFlowManager.d.f();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return Unit.f71739a;
            default:
                SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) this.f8298c;
                Set set2 = (Set) obj;
                synchronized (singleSubscriptionSnapshotFlowManager.f8124a) {
                    try {
                        MutableScatterSet mutableScatterSet2 = singleSubscriptionSnapshotFlowManager.d;
                        if (mutableScatterSet2 != null) {
                            Object[] objArr3 = mutableScatterSet2.f3368b;
                            long[] jArr3 = mutableScatterSet2.f3367a;
                            int length3 = jArr3.length - 2;
                            if (length3 >= 0) {
                                int i8 = 0;
                                while (true) {
                                    long j4 = jArr3[i8];
                                    if ((((~j4) << c3) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i9 = 8 - ((~(i8 - length3)) >>> 31);
                                        int i10 = 0;
                                        while (true) {
                                            if (i10 < i9) {
                                                if ((j4 & 255) < 128 && set2.contains(objArr3[(i8 << 3) + i10])) {
                                                    sendChannel = singleSubscriptionSnapshotFlowManager.f8121f;
                                                }
                                                j4 >>= 8;
                                                i10++;
                                                c3 = c3;
                                            } else {
                                                c2 = c3;
                                                if (i9 == 8) {
                                                }
                                                sendChannel = null;
                                            }
                                        }
                                    } else {
                                        c2 = c3;
                                    }
                                    if (i8 != length3) {
                                        i8++;
                                        c3 = c2;
                                    } else {
                                        sendChannel = null;
                                    }
                                }
                            } else {
                                sendChannel = null;
                            }
                        } else if (CollectionsKt.u(set2, singleSubscriptionSnapshotFlowManager.f8118b)) {
                            sendChannel = singleSubscriptionSnapshotFlowManager.f8121f;
                        } else {
                            sendChannel = null;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (sendChannel != null) {
                    sendChannel.b(Unit.f71739a);
                    ChannelResult.Companion companion = ChannelResult.f74759b;
                }
                return Unit.f71739a;
        }
    }
}

package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f8369c;

    public /* synthetic */ f(Object obj, int i2) {
        this.f8368b = i2;
        this.f8369c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f8368b;
        Object obj2 = this.f8369c;
        switch (i2) {
            case 0:
                return Boolean.valueOf(Intrinsics.c(((NestedMovableContent) obj).f8040b, (MovableContentStateReference) obj2));
            default:
                SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) obj2;
                SendChannel sendChannel = singleSubscriptionSnapshotFlowManager.f8121f;
                sendChannel.getClass();
                if (!Intrinsics.c(singleSubscriptionSnapshotFlowManager.f8121f, sendChannel)) {
                    PreconditionsKt.b("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
                }
                MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.f8120e;
                Object obj3 = singleSubscriptionSnapshotFlowManager.f8119c;
                if (mutableScatterSet != null) {
                    if (obj3 != null) {
                        PreconditionsKt.b("workingSoleWatchedObject must be null when workingWatchSet is non-null");
                    }
                    mutableScatterSet.d(obj);
                } else if (obj3 == null) {
                    singleSubscriptionSnapshotFlowManager.f8119c = obj;
                } else {
                    MutableScatterSet mutableScatterSetA = ScatterSetKt.a();
                    mutableScatterSetA.d(obj3);
                    mutableScatterSetA.d(obj);
                    singleSubscriptionSnapshotFlowManager.f8120e = mutableScatterSetA;
                    singleSubscriptionSnapshotFlowManager.f8119c = null;
                }
                return Unit.f71739a;
        }
    }
}

package androidx.compose.ui.spatial;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import com.batch.android.s.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/spatial/ThrottledCallbacks;", "", "<init>", "()V", "Entry", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ThrottledCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Entry f10400b;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f10402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f10403f;
    public float[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableIntObjectMap f10399a = IntObjectMapKt.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f10401c = -1;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;", "Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;", "", b.a.f24015b, "", "throttleMillis", "debounceMillis", "Landroidx/compose/ui/node/DelegatableNode;", "node", "Lkotlin/Function1;", "Landroidx/compose/ui/spatial/RelativeLayoutBounds;", "", "callback", "<init>", "(Landroidx/compose/ui/spatial/ThrottledCallbacks;IJJLandroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function1;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class Entry implements DelegatableNode.RegistrationHandle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10404a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f10405b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f10406c;
        public final DelegatableNode d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Function1 f10407e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Entry f10408f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f10409h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f10410i = Long.MIN_VALUE;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f10411j = -1;

        public Entry(int i2, long j2, long j3, DelegatableNode delegatableNode, Function1<? super RelativeLayoutBounds, Unit> function1) {
            this.f10404a = i2;
            this.f10405b = j2;
            this.f10406c = j3;
            this.d = delegatableNode;
            this.f10407e = function1;
        }

        public final void a(long j2, long j3, long j4, long j5, float[] fArr) {
            RelativeLayoutBounds relativeLayoutBounds;
            RelativeLayoutBounds relativeLayoutBounds2;
            long j6 = ThrottledCallbacks.this.f10403f;
            DelegatableNode delegatableNode = this.d;
            NodeCoordinator nodeCoordinatorD = DelegatableNodeKt.d(delegatableNode, 2);
            LayoutNode layoutNodeF = DelegatableNodeKt.f(delegatableNode);
            boolean zA = layoutNodeF.A();
            NodeChain nodeChain = layoutNodeF.H;
            if (zA) {
                if (nodeChain.d != nodeCoordinatorD) {
                    IntOffset.Companion companion = IntOffset.f11012b;
                    long jFloatToRawIntBits = (((long) Float.floatToRawIntBits((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits((int) (j2 >> 32)) << 32);
                    Offset.Companion companion2 = Offset.f8806b;
                    long j7 = nodeCoordinatorD.d;
                    NodeCoordinator nodeCoordinator = nodeChain.d;
                    nodeCoordinator.getClass();
                    long jB = IntOffsetKt.b(nodeCoordinator.u(nodeCoordinatorD, jFloatToRawIntBits, true));
                    relativeLayoutBounds = new RelativeLayoutBounds(jB, (BodyPartID.bodyIdMax & ((long) (((int) (jB & BodyPartID.bodyIdMax)) + ((int) (j7 & BodyPartID.bodyIdMax))))) | (((long) (((int) (jB >> 32)) + ((int) (j7 >> 32)))) << 32), j4, j5, j6, fArr, delegatableNode, null);
                } else {
                    relativeLayoutBounds = new RelativeLayoutBounds(j2, j3, j4, j5, j6, fArr, delegatableNode, null);
                }
                relativeLayoutBounds2 = relativeLayoutBounds;
            } else {
                relativeLayoutBounds2 = null;
            }
            if (relativeLayoutBounds2 == null) {
                return;
            }
            this.f10407e.invoke(relativeLayoutBounds2);
        }

        public final void b() {
            ThrottledCallbacks throttledCallbacks = ThrottledCallbacks.this;
            MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.f10399a;
            int i2 = this.f10404a;
            Entry entry = (Entry) mutableIntObjectMap.g(i2);
            if (entry != null) {
                if (entry == this) {
                    Entry entry2 = this.f10408f;
                    this.f10408f = null;
                    if (entry2 == null) {
                        LayoutNode layoutNodeF = DelegatableNodeKt.f(this.d.getF8608b());
                        if (layoutNodeF.f9692h) {
                            LayoutNodeKt.a(layoutNodeF).getRectManager().f10385b.c(layoutNodeF.f9689c, false);
                            return;
                        }
                        return;
                    }
                    int iD = mutableIntObjectMap.d(i2);
                    Object[] objArr = mutableIntObjectMap.f3260c;
                    Object obj = objArr[iD];
                    mutableIntObjectMap.f3259b[iD] = i2;
                    objArr[iD] = entry2;
                    return;
                }
                int iD2 = mutableIntObjectMap.d(i2);
                Object[] objArr2 = mutableIntObjectMap.f3260c;
                Object obj2 = objArr2[iD2];
                mutableIntObjectMap.f3259b[iD2] = i2;
                objArr2[iD2] = entry;
                while (true) {
                    Entry entry3 = entry.f10408f;
                    if (entry3 == null) {
                        break;
                    }
                    if (entry3 == this) {
                        entry.f10408f = this.f10408f;
                        this.f10408f = null;
                        return;
                    }
                    entry = entry3;
                }
            }
            Entry entry4 = throttledCallbacks.f10400b;
            if (entry4 == this) {
                throttledCallbacks.f10400b = entry4.f10408f;
                this.f10408f = null;
                return;
            }
            Entry entry5 = entry4 != null ? entry4.f10408f : null;
            while (true) {
                Entry entry6 = entry4;
                entry4 = entry5;
                if (entry4 == null) {
                    return;
                }
                if (entry4 == this) {
                    if (entry6 != null) {
                        entry6.f10408f = entry4.f10408f;
                    }
                    this.f10408f = null;
                    return;
                }
                entry5 = entry4.f10408f;
            }
        }
    }

    public ThrottledCallbacks() {
        IntOffset.Companion companion = IntOffset.f11012b;
        companion.getClass();
        this.d = 0L;
        companion.getClass();
        this.f10402e = 0L;
    }

    public static long a(Entry entry, long j2, long j3, float[] fArr, long j4, long j5) {
        long j6 = entry.f10406c;
        if (j6 > 0) {
            long j7 = entry.f10411j;
            if (j7 > 0) {
                if (j4 - j7 < j6) {
                    return Math.min(j5, j7 + j6);
                }
                entry.f10410i = j4;
                entry.f10411j = -1L;
                entry.a(entry.g, entry.f10409h, j2, j3, fArr);
                return j5;
            }
        }
        return j5;
    }

    public final void b(Entry entry, long j2, long j3, float[] fArr, long j4) {
        long j5 = entry.f10410i;
        long j6 = entry.f10406c;
        boolean z = j4 - j5 > entry.f10405b || j5 == Long.MIN_VALUE;
        boolean z2 = j6 == 0;
        entry.f10411j = j4;
        if (z && z2) {
            entry.f10410i = j4;
            entry.a(entry.g, entry.f10409h, j2, j3, fArr);
        }
        if (z2) {
            return;
        }
        long j7 = this.f10401c;
        long j8 = j4 + j6;
        if (j7 <= 0 || j8 >= j7) {
            return;
        }
        this.f10401c = j7;
    }

    public final boolean c(long j2, long j3, float[] fArr, int i2, int i3) {
        boolean z;
        if (IntOffset.b(j3, this.d)) {
            z = false;
        } else {
            this.d = j3;
            z = true;
        }
        if (!IntOffset.b(j2, this.f10402e)) {
            this.f10402e = j2;
            z = true;
        }
        if (fArr != null) {
            this.g = fArr;
            z = true;
        }
        long j4 = (((long) i2) << 32) | (((long) i3) & BodyPartID.bodyIdMax);
        if (j4 == this.f10403f) {
            return z;
        }
        this.f10403f = j4;
        return true;
    }
}

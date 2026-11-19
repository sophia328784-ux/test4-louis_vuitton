package androidx.compose.animation;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Rect;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/SharedTransitionStateMachine;", "", "Landroidx/compose/animation/SharedElement;", "sharedElement", "<init>", "(Landroidx/compose/animation/SharedElement;)V", "State", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SharedTransitionStateMachine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedElement f3715a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3717c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public BoundsProvider f3719f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3720h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3716b = SnapshotStateKt.g(NoMatchFound.f3641a);
    public final MutableIntState d = SnapshotIntStateKt.a(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public StateChangeRequest f3718e = StateChangeRequest.NoRequest;
    public final MutableIntState g = SnapshotIntStateKt.a(0);

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/animation/SharedTransitionStateMachine$State;", "", "Landroidx/compose/animation/ActiveMatchFoundConfigPending;", "Landroidx/compose/animation/MatchIsOrHasBeenConfigured;", "Landroidx/compose/animation/NoMatchFound;", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class State {
        public State(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public State a(SharedElement sharedElement, BoundsProvider boundsProvider, long j2, long j3, long j4) {
            throw new IllegalStateException(("Active match can only be configured in ActiveMatchFoundConfigPending or ActiveMatchConfigured state. Current state: " + this).toString());
        }

        public boolean b() {
            return this instanceof ActiveMatchConfigured;
        }

        public Rect c() {
            return null;
        }

        public boolean d() {
            return false;
        }

        /* JADX INFO: renamed from: e */
        public TargetData getF3403a() {
            return null;
        }

        public Rect f(SharedElement sharedElement) {
            return c();
        }

        public abstract State g(BoundsProvider boundsProvider);

        public abstract State h();

        public void i(Rect rect) {
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3721a;

        static {
            int[] iArr = new int[StateChangeRequest.values().length];
            try {
                iArr[StateChangeRequest.NoMatchFound.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StateChangeRequest.NoRequest.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StateChangeRequest.MatchFound.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StateChangeRequest.VisibleContentAbsentDuringTransition.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f3721a = iArr;
        }
    }

    public SharedTransitionStateMachine(SharedElement sharedElement) {
        this.f3715a = sharedElement;
    }

    public final State a() {
        return (State) ((SnapshotMutableStateImpl) this.f3716b).getF10755b();
    }

    public final void b() {
        Object obj;
        List listC = this.f3715a.c();
        int size = listC.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                obj = null;
                break;
            }
            obj = listC.get(i2);
            if (((SharedElementEntry) obj).c().b()) {
                break;
            } else {
                i2++;
            }
        }
        SharedElementEntry sharedElementEntry = (SharedElementEntry) obj;
        if (sharedElementEntry == null && this.f3719f == null) {
            return;
        }
        if (Intrinsics.c(sharedElementEntry != null ? sharedElementEntry.m : null, this.f3719f)) {
            return;
        }
        ((SnapshotMutableIntStateImpl) this.g).i(this.f3720h + 1);
    }

    public final void c() {
        Object obj;
        Object obj2;
        State stateA;
        SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) this.d;
        int iF = snapshotMutableIntStateImpl.f();
        int i2 = this.f3717c;
        int i3 = 0;
        SharedElement sharedElement = this.f3715a;
        if (iF != i2) {
            this.f3717c = snapshotMutableIntStateImpl.f();
            int i4 = WhenMappings.f3721a[this.f3718e.ordinal()];
            if (i4 == 1) {
                stateA = NoMatchFound.f3641a;
            } else if (i4 == 2) {
                stateA = a();
            } else if (i4 == 3) {
                stateA = a().g(this.f3719f);
            } else {
                if (i4 != 4) {
                    v40.g();
                    return;
                }
                List listC = sharedElement.c();
                int size = listC.size();
                int i5 = 0;
                while (true) {
                    if (i5 >= size) {
                        stateA = a().h();
                        break;
                    } else {
                        if (Intrinsics.c(((SharedElementEntry) listC.get(i5)).m, this.f3719f)) {
                            stateA = NoMatchFound.f3641a;
                            break;
                        }
                        i5++;
                    }
                }
            }
            ((SnapshotMutableStateImpl) this.f3716b).setValue(stateA);
            this.f3718e = StateChangeRequest.NoRequest;
        }
        SnapshotMutableIntStateImpl snapshotMutableIntStateImpl2 = (SnapshotMutableIntStateImpl) this.g;
        if (snapshotMutableIntStateImpl2.f() != this.f3720h) {
            SharedBoundsNode sharedBoundsNode = null;
            if (sharedElement.f3654b.j()) {
                List listC2 = sharedElement.c();
                int size2 = listC2.size();
                while (true) {
                    if (i3 >= size2) {
                        obj2 = null;
                        break;
                    }
                    obj2 = listC2.get(i3);
                    if (((SharedElementEntry) obj2).c().b()) {
                        break;
                    } else {
                        i3++;
                    }
                }
                SharedElementEntry sharedElementEntry = (SharedElementEntry) obj2;
                if (sharedElementEntry != null) {
                    sharedBoundsNode = sharedElementEntry.m;
                }
            } else {
                List listB = sharedElement.b();
                int size3 = listB.size();
                while (true) {
                    if (i3 >= size3) {
                        obj = null;
                        break;
                    }
                    obj = listB.get(i3);
                    if (((SharedElementEntry) obj).c().b()) {
                        break;
                    } else {
                        i3++;
                    }
                }
                SharedElementEntry sharedElementEntry2 = (SharedElementEntry) obj;
                if (sharedElementEntry2 != null) {
                    sharedBoundsNode = sharedElementEntry2.m;
                }
            }
            if (!Intrinsics.c(sharedBoundsNode, this.f3719f)) {
                this.f3719f = sharedBoundsNode;
            }
            this.f3720h = snapshotMutableIntStateImpl2.f();
        }
    }
}

package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.foundation.pager.PagerState;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\b\tB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;", "", "Landroidx/compose/foundation/pager/PagerState;", "pagerState", "", "position", "<init>", "(Landroidx/compose/foundation/pager/PagerState;I)V", "Placement", "State", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PagerDotState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PagerState f48687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f48688b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$Placement;", "", "First", "Second", "InBetween", "SecondToLast", "Last", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Placement {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Placement[] $VALUES;
        public static final Placement First;
        public static final Placement InBetween;
        public static final Placement Last;
        public static final Placement Second;
        public static final Placement SecondToLast;

        static {
            Placement placement = new Placement("First", 0);
            First = placement;
            Placement placement2 = new Placement("Second", 1);
            Second = placement2;
            Placement placement3 = new Placement("InBetween", 2);
            InBetween = placement3;
            Placement placement4 = new Placement("SecondToLast", 3);
            SecondToLast = placement4;
            Placement placement5 = new Placement("Last", 4);
            Last = placement5;
            Placement[] placementArr = {placement, placement2, placement3, placement4, placement5};
            $VALUES = placementArr;
            $ENTRIES = EnumEntriesKt.a(placementArr);
        }

        public static Placement valueOf(String str) {
            return (Placement) Enum.valueOf(Placement.class, str);
        }

        public static Placement[] values() {
            return (Placement[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.designkit.ui.theme.molecules.PagerDotState$State[], still in use, count: 1, list:
      (r0v1 com.vuitton.android.designkit.ui.theme.molecules.PagerDotState$State[]) from 0x0051: INVOKE (r0v1 com.vuitton.android.designkit.ui.theme.molecules.PagerDotState$State[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0007\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;", "", "", "size", "F", "c", "()F", "previousSize", NBSSpanMetricUnit.Bit, "nextSize", "a", "Invisible", "Mini", "Small", "Normal", "Current", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class State {
        Invisible(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2.0f),
        Mini(2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 4.0f),
        Small(4.0f, 2.0f, 6.0f),
        Normal(6.0f, 4.0f, 6.0f),
        Current(6.0f, 6.0f, 6.0f);

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final float nextSize;
        private final float previousSize;
        private final float size;

        static {
            $ENTRIES = EnumEntriesKt.a(stateArr);
        }

        public State(float f2, float f3, float f4) {
            super(str, i);
            this.size = f2;
            this.previousSize = f3;
            this.nextSize = f4;
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final float getNextSize() {
            return this.nextSize;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final float getPreviousSize() {
            return this.previousSize;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final float getSize() {
            return this.size;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48689a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f48690b;

        static {
            int[] iArr = new int[Placement.values().length];
            try {
                iArr[Placement.First.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Placement.Last.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Placement.InBetween.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f48689a = iArr;
            int[] iArr2 = new int[State.values().length];
            try {
                iArr2[State.Invisible.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[State.Mini.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[State.Small.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[State.Normal.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[State.Current.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            f48690b = iArr2;
        }
    }

    public PagerDotState(PagerState pagerState, int i2) {
        pagerState.getClass();
        this.f48687a = pagerState;
        this.f48688b = i2;
    }

    public final float a() {
        PagerState pagerState = this.f48687a;
        pagerState.getClass();
        return Math.abs(pagerState.l() + (pagerState.k() - this.f48688b));
    }

    public final State b() {
        PagerState pagerState = this.f48687a;
        pagerState.getClass();
        int iK = pagerState.k();
        int i2 = this.f48688b;
        if (pagerState.l() + (iK - i2) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return State.Current;
        }
        if (pagerState.o() <= 5) {
            return State.Normal;
        }
        int i3 = WhenMappings.f48689a[LVCapsulePageControlKt.c(pagerState, pagerState.k()).ordinal()];
        if (i3 == 1 || i3 == 2) {
            if (a() < 2.5f) {
                return State.Normal;
            }
            if (a() < 3.5f) {
                return State.Small;
            }
            return a() < 4.5f ? State.Mini : State.Invisible;
        }
        if (i3 != 3) {
            if (a() < 1.5f) {
                return State.Normal;
            }
            if (a() < 2.5f) {
                return State.Small;
            }
            return a() < 3.5f ? State.Mini : State.Invisible;
        }
        if (a() < 1.5f) {
            return State.Normal;
        }
        if (a() >= 2.5f || !(LVCapsulePageControlKt.c(pagerState, i2) == Placement.First || LVCapsulePageControlKt.c(pagerState, i2) == Placement.Last)) {
            return a() < 2.5f ? State.Small : State.Invisible;
        }
        return State.Normal;
    }

    public final float c() {
        PagerState pagerState = this.f48687a;
        if (pagerState.k() < 3) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        int iO = pagerState.o() - 3;
        int iO2 = pagerState.o();
        int iK = pagerState.k();
        return ((iO > iK || iK > iO2) && pagerState.o() > 5) ? -(pagerState.l() * 28.0f) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }
}

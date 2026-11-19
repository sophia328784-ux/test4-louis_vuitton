package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0017B\u007f\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/CombinedClickableNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/foundation/AbstractClickableNode;", "Lkotlin/Function0;", "", "onClick", "", "onLongClickLabel", "onLongClick", "onDoubleClick", "", "hapticFeedbackEnabled", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indicationNodeFactory", "useLocalIndication", "enabled", "onClickLabel", "Landroidx/compose/ui/semantics/Role;", "role", "<init>", "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "DoubleKeyClickState", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class CombinedClickableNode extends AbstractClickableNode implements CompositionLocalConsumerModifierNode {
    public String M;
    public Function0 N;
    public Function0 O;
    public boolean P;
    public final MutableLongObjectMap Q;
    public final MutableLongObjectMap R;
    public PointerInputChange S;
    public Job T;
    public Job V;
    public boolean W;
    public boolean X;
    public long Y;
    public boolean Z;
    public Job b1;
    public boolean c1;
    public boolean d1;
    public long e1;
    public boolean f1;
    public IndirectPointerInputChange h0;
    public Job t0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;", "", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Lkotlinx/coroutines/Job;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DoubleKeyClickState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Job f4175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4176b;

        public DoubleKeyClickState(Job job) {
            this.f4175a = job;
        }
    }

    public CombinedClickableNode(Function0 function0, String str, Function0 function1, Function0 function2, boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, String str2, Role role, DefaultConstructorMarker defaultConstructorMarker) {
        super(mutableInteractionSource, indicationNodeFactory, z2, z3, str2, role, function0, null);
        this.M = str;
        this.N = function1;
        this.O = function2;
        this.P = z;
        int i2 = LongObjectMapKt.f3281a;
        this.Q = new MutableLongObjectMap(0, 1, null);
        this.R = new MutableLongObjectMap(0, 1, null);
        this.Y = -1L;
        this.e1 = -1L;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void I(AndroidIndirectPointerEvent androidIndirectPointerEvent, PointerEventPass pointerEventPass) {
        List list = androidIndirectPointerEvent.f9210a;
        super.I(androidIndirectPointerEvent, pointerEventPass);
        int i2 = 0;
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass != PointerEventPass.Final || this.h0 == null || this.d1) {
                return;
            }
            int size = list.size();
            while (i2 < size) {
                IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) list.get(i2);
                if (indirectPointerInputChange.f9225i && indirectPointerInputChange != this.h0) {
                    w2(true);
                    return;
                }
                i2++;
            }
            return;
        }
        if (this.h0 == null) {
            int size2 = list.size();
            for (int i3 = 0; i3 < size2; i3++) {
                if (IndirectPointerInputDragCycleDetectorKt.c((IndirectPointerInputChange) list.get(i3))) {
                    IndirectPointerInputChange indirectPointerInputChange2 = (IndirectPointerInputChange) list.get(0);
                    indirectPointerInputChange2.f9225i = true;
                    this.h0 = indirectPointerInputChange2;
                    if (this.w) {
                        Job job = this.b1;
                        if (job != null && job.isActive()) {
                            ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.u)).getClass();
                            if (indirectPointerInputChange2.f9220b - this.e1 < 40) {
                                this.f1 = true;
                                return;
                            }
                            this.c1 = true;
                            Job job2 = this.b1;
                            if (job2 != null) {
                                job2.cancel(null);
                            }
                            this.b1 = null;
                        }
                        this.d1 = false;
                        p2(indirectPointerInputChange2);
                        if (this.N != null) {
                            this.t0 = BuildersKt.c(V1(), null, null, new CombinedClickableNode$handleDownEvent$2(this, null), 3);
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (this.d1) {
            int size3 = list.size();
            for (int i4 = 0; i4 < size3; i4++) {
                IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) list.get(i4);
                if (!indirectPointerInputChange3.f9224h || indirectPointerInputChange3.d) {
                    int size4 = list.size();
                    while (i2 < size4) {
                        ((IndirectPointerInputChange) list.get(i2)).f9225i = true;
                        i2++;
                    }
                    return;
                }
            }
            IndirectPointerInputChange indirectPointerInputChange4 = (IndirectPointerInputChange) list.get(0);
            indirectPointerInputChange4.f9225i = true;
            long j2 = indirectPointerInputChange4.f9220b;
            IndirectPointerInputChange indirectPointerInputChange5 = this.h0;
            indirectPointerInputChange5.getClass();
            x2(j2, indirectPointerInputChange5);
            return;
        }
        int size5 = list.size();
        for (int i5 = 0; i5 < size5; i5++) {
            IndirectPointerInputChange indirectPointerInputChange6 = (IndirectPointerInputChange) list.get(i5);
            if (indirectPointerInputChange6.f9225i || !indirectPointerInputChange6.f9224h || indirectPointerInputChange6.d) {
                float fG = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.u)).g();
                int size6 = list.size();
                for (int i6 = 0; i6 < size6; i6++) {
                    IndirectPointerInputChange indirectPointerInputChange7 = (IndirectPointerInputChange) list.get(i6);
                    long j3 = indirectPointerInputChange7.f9221c;
                    IndirectPointerInputChange indirectPointerInputChange8 = this.h0;
                    indirectPointerInputChange8.getClass();
                    boolean z = Math.abs(Offset.d(Offset.e(j3, indirectPointerInputChange8.f9221c))) > fG;
                    if (indirectPointerInputChange7.f9225i || z) {
                        w2(true);
                        return;
                    }
                }
                return;
            }
        }
        IndirectPointerInputChange indirectPointerInputChange9 = (IndirectPointerInputChange) list.get(0);
        indirectPointerInputChange9.f9225i = true;
        long j4 = indirectPointerInputChange9.f9220b;
        IndirectPointerInputChange indirectPointerInputChange10 = this.h0;
        indirectPointerInputChange10.getClass();
        x2(j4, indirectPointerInputChange10);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void b2() {
        z2();
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        super.f0(pointerEvent, pointerEventPass, j2);
        List list = pointerEvent.f9305a;
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass != PointerEventPass.Final || this.S == null || this.X) {
                return;
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
                if (pointerInputChange.b() && pointerInputChange != this.S) {
                    w2(false);
                    return;
                }
            }
            return;
        }
        if (this.S == null) {
            if (TapGestureDetectorKt.f(pointerEvent, true)) {
                PointerInputChange pointerInputChange2 = (PointerInputChange) list.get(0);
                pointerInputChange2.a();
                this.S = pointerInputChange2;
                if (this.w) {
                    Job job = this.V;
                    if (job != null && job.isActive()) {
                        ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.u)).getClass();
                        if (pointerInputChange2.f9329b - this.Y < 40) {
                            this.Z = true;
                            return;
                        }
                        this.W = true;
                        Job job2 = this.V;
                        if (job2 != null) {
                            job2.cancel(null);
                        }
                        this.V = null;
                    }
                    this.X = false;
                    q2(pointerInputChange2);
                    if (this.N != null) {
                        this.T = BuildersKt.c(V1(), null, null, new CombinedClickableNode$handleDownEvent$1(this, null), 3);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if ((pointerEvent.f9307c == 2) && !this.X && this.w && this.N != null) {
            Job job3 = this.T;
            if (job3 != null) {
                job3.cancel(null);
            }
            this.T = null;
            Function0 function0 = this.N;
            if (function0 != null) {
                function0.mo47invoke();
            }
            if (this.P) {
                HapticFeedback hapticFeedback = (HapticFeedback) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.l);
                HapticFeedbackType.f9193b.getClass();
                int i3 = PlatformHapticFeedbackType.f9196a;
                hapticFeedback.a(0);
            }
            this.X = true;
        }
        if (this.X) {
            int size2 = list.size();
            for (int i4 = 0; i4 < size2; i4++) {
                if (!PointerEventKt.d((PointerInputChange) list.get(i4))) {
                    int size3 = list.size();
                    for (int i5 = 0; i5 < size3; i5++) {
                        ((PointerInputChange) list.get(i5)).a();
                    }
                    return;
                }
            }
            PointerInputChange pointerInputChange3 = (PointerInputChange) list.get(0);
            pointerInputChange3.a();
            long j3 = pointerInputChange3.f9329b;
            PointerInputChange pointerInputChange4 = this.S;
            pointerInputChange4.getClass();
            y2(j3, pointerInputChange4);
            return;
        }
        int size4 = list.size();
        for (int i6 = 0; i6 < size4; i6++) {
            if (!PointerEventKt.c((PointerInputChange) list.get(i6))) {
                long jM2 = m2(j2);
                int size5 = list.size();
                for (int i7 = 0; i7 < size5; i7++) {
                    PointerInputChange pointerInputChange5 = (PointerInputChange) list.get(i7);
                    if (pointerInputChange5.b() || PointerEventKt.e(pointerInputChange5, j2, jM2)) {
                        w2(false);
                        return;
                    }
                }
                return;
            }
        }
        PointerInputChange pointerInputChange6 = (PointerInputChange) list.get(0);
        pointerInputChange6.a();
        long j4 = pointerInputChange6.f9329b;
        PointerInputChange pointerInputChange7 = this.S;
        pointerInputChange7.getClass();
        y2(j4, pointerInputChange7);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void f1() {
        super.f1();
        w2(false);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void k2(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.N != null) {
            String str = this.M;
            c cVar = new c(this, 0);
            KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
            semanticsPropertyReceiver.a(SemanticsActions.f10304c, new AccessibilityAction(str, cVar));
        }
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void s2() {
        z2();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0024  */
    @Override // androidx.compose.foundation.AbstractClickableNode
    public final boolean t2(KeyEvent keyEvent) {
        boolean z;
        long jA = KeyEvent_androidKt.a(keyEvent);
        if (this.N != null) {
            MutableLongObjectMap mutableLongObjectMap = this.Q;
            if (mutableLongObjectMap.b(jA) == null) {
                mutableLongObjectMap.g(jA, BuildersKt.c(V1(), null, null, new CombinedClickableNode$onClickKeyDownEvent$1(this, null), 3));
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        MutableLongObjectMap mutableLongObjectMap2 = this.R;
        DoubleKeyClickState doubleKeyClickState = (DoubleKeyClickState) mutableLongObjectMap2.b(jA);
        if (doubleKeyClickState != null) {
            Job job = doubleKeyClickState.f4175a;
            if (job.isActive()) {
                job.cancel(null);
                if (!doubleKeyClickState.f4176b) {
                    this.x.mo47invoke();
                    mutableLongObjectMap2.f(jA);
                    return z;
                }
            } else {
                mutableLongObjectMap2.f(jA);
            }
        }
        return z;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void u2(KeyEvent keyEvent) {
        Function0 function0;
        long jA = KeyEvent_androidKt.a(keyEvent);
        MutableLongObjectMap mutableLongObjectMap = this.Q;
        boolean z = false;
        if (mutableLongObjectMap.b(jA) != null) {
            Job job = (Job) mutableLongObjectMap.b(jA);
            if (job != null) {
                if (job.isActive()) {
                    job.cancel(null);
                } else {
                    z = true;
                }
            }
            mutableLongObjectMap.f(jA);
        }
        if (this.O == null) {
            if (z) {
                return;
            }
            this.x.mo47invoke();
            return;
        }
        MutableLongObjectMap mutableLongObjectMap2 = this.R;
        if (mutableLongObjectMap2.b(jA) == null) {
            if (z) {
                return;
            }
            mutableLongObjectMap2.g(jA, new DoubleKeyClickState(BuildersKt.c(V1(), null, null, new CombinedClickableNode$onClickKeyUpEvent$2(this, jA, null), 3)));
        } else {
            if (!z && (function0 = this.O) != null) {
                function0.mo47invoke();
            }
            mutableLongObjectMap2.f(jA);
        }
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void w1() {
        w2(true);
    }

    public final void w2(boolean z) {
        if (z) {
            this.h0 = null;
            Job job = this.t0;
            if (job != null) {
                job.cancel(null);
            }
            this.t0 = null;
            Job job2 = this.b1;
            if (job2 != null) {
                job2.cancel(null);
            }
            this.b1 = null;
            this.c1 = false;
            this.d1 = false;
            this.e1 = -1L;
            this.f1 = false;
        } else {
            this.S = null;
            Job job3 = this.T;
            if (job3 != null) {
                job3.cancel(null);
            }
            this.T = null;
            Job job4 = this.V;
            if (job4 != null) {
                job4.cancel(null);
            }
            this.V = null;
            this.W = false;
            this.X = false;
            this.Y = -1L;
            this.Z = false;
        }
        n2(z);
    }

    public final void x2(long j2, IndirectPointerInputChange indirectPointerInputChange) {
        if (this.w && !this.f1) {
            o2(indirectPointerInputChange.f9221c, true);
            this.e1 = j2;
            if (!this.d1) {
                boolean z = this.c1;
                Function0 function0 = this.O;
                if (z) {
                    if (function0 != null) {
                        function0.mo47invoke();
                    }
                } else if (function0 != null) {
                    this.b1 = BuildersKt.c(V1(), null, null, new CombinedClickableNode$handleUpEvent$2(this, null), 3);
                } else {
                    this.x.mo47invoke();
                }
            }
        }
        this.h0 = null;
        this.f1 = false;
        this.c1 = false;
        Job job = this.t0;
        if (job != null) {
            job.cancel(null);
        }
        this.t0 = null;
        this.d1 = false;
    }

    public final void y2(long j2, PointerInputChange pointerInputChange) {
        if (this.w && !this.Z) {
            o2(pointerInputChange.f9330c, false);
            this.Y = j2;
            if (!this.X) {
                boolean z = this.W;
                Function0 function0 = this.O;
                if (z) {
                    if (function0 != null) {
                        function0.mo47invoke();
                    }
                } else if (function0 != null) {
                    this.V = BuildersKt.c(V1(), null, null, new CombinedClickableNode$handleUpEvent$1(this, null), 3);
                } else {
                    this.x.mo47invoke();
                }
            }
        }
        this.S = null;
        this.Z = false;
        this.W = false;
        Job job = this.T;
        if (job != null) {
            job.cancel(null);
        }
        this.T = null;
        this.X = false;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a0 A[LOOP:2: B:24:0x0071->B:34:0x00a0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a3 A[EDGE_INSN: B:43:0x00a3->B:35:0x00a3 BREAK  A[LOOP:2: B:24:0x0071->B:34:0x00a0], SYNTHETIC] */
    public final void z2() {
        char c2;
        long j2;
        long j3;
        MutableLongObjectMap mutableLongObjectMap = this.Q;
        Object[] objArr = mutableLongObjectMap.f3279c;
        long[] jArr = mutableLongObjectMap.f3277a;
        int length = jArr.length - 2;
        char c3 = 7;
        if (length >= 0) {
            int i2 = 0;
            j2 = 128;
            while (true) {
                long j4 = jArr[i2];
                j3 = 255;
                if ((((~j4) << c3) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    int i4 = 0;
                    while (i4 < i3) {
                        if ((j4 & 255) < 128) {
                            ((Job) objArr[(i2 << 3) + i4]).cancel(null);
                        }
                        j4 >>= 8;
                        i4++;
                        c3 = c3;
                    }
                    c2 = c3;
                    if (i3 != 8) {
                        break;
                    }
                } else {
                    c2 = c3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                c3 = c2;
            }
        } else {
            c2 = 7;
            j2 = 128;
            j3 = 255;
        }
        mutableLongObjectMap.c();
        MutableLongObjectMap mutableLongObjectMap2 = this.R;
        Object[] objArr2 = mutableLongObjectMap2.f3279c;
        long[] jArr2 = mutableLongObjectMap2.f3277a;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i5 = 0;
            while (true) {
                long j5 = jArr2[i5];
                if ((((~j5) << c2) & j5 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i5 != length2) {
                        break;
                        break;
                    }
                    i5++;
                } else {
                    int i6 = 8 - ((~(i5 - length2)) >>> 31);
                    for (int i7 = 0; i7 < i6; i7++) {
                        if ((j5 & j3) < j2) {
                            ((DoubleKeyClickState) objArr2[(i5 << 3) + i7]).f4175a.cancel(null);
                        }
                        j5 >>= 8;
                    }
                    if (i6 != 8) {
                        break;
                    } else if (i5 != length2) {
                        break;
                    } else {
                        i5++;
                    }
                }
            }
        }
        mutableLongObjectMap2.c();
    }
}

package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.focus.Focusability;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntOffset;
import com.dynatrace.android.compose.SemanticsManager;
import defpackage.k;
import defpackage.vg;
import defpackage.y1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t:\u0001\u001aBM\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Landroidx/compose/foundation/AbstractClickableNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/input/key/KeyInputModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/node/TraversableNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;", "Landroidx/compose/foundation/GestureConnection;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indicationNodeFactory", "", "useLocalIndication", "enabled", "", "onClickLabel", "Landroidx/compose/ui/semantics/Role;", "role", "Lkotlin/Function0;", "", "onClick", "<init>", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "TraverseKey", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractClickableNode extends DelegatingNode implements PointerInputModifierNode, KeyInputModifierNode, SemanticsModifierNode, TraversableNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, IndirectPointerInputModifierNode, GestureConnection {
    public static final TraverseKey L = new TraverseKey(null);
    public DelegatableNode A;
    public DelegatableNode B;
    public PressInteraction.Press C;
    public HoverInteraction.Enter D;
    public final MutableLongObjectMap E;
    public long F;
    public PressInteraction.Press G;
    public MutableInteractionSource H;
    public boolean I;
    public Job J;
    public final TraverseKey K;
    public MutableInteractionSource r;
    public IndicationNodeFactory s;
    public boolean t;
    public String u;
    public Role v;
    public boolean w;
    public Function0 x;
    public final FocusableNode y;
    public IndicationNodeFactory z;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/AbstractClickableNode$TraverseKey;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TraverseKey {
        public TraverseKey(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AbstractClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this.r = mutableInteractionSource;
        this.s = indicationNodeFactory;
        this.t = z;
        this.u = str;
        this.v = role;
        this.w = z2;
        this.x = function0;
        MutableInteractionSource mutableInteractionSource2 = this.r;
        Focusability.f8790a.getClass();
        this.y = new FocusableNode(mutableInteractionSource2, 0, new AbstractClickableNode$focusableNode$1(1, this, AbstractClickableNode.class, "onFocusChange", "onFocusChange(Z)V", 0), null);
        int i2 = LongObjectMapKt.f3281a;
        this.E = new MutableLongObjectMap(0, 1, null);
        Offset.f8806b.getClass();
        this.F = 0L;
        MutableInteractionSource mutableInteractionSource3 = this.r;
        this.H = mutableInteractionSource3;
        this.I = mutableInteractionSource3 == null;
        this.K = L;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void I(AndroidIndirectPointerEvent androidIndirectPointerEvent, PointerEventPass pointerEventPass) {
        r2();
        if (this.w && this.A == null) {
            GestureNode gestureNode = new GestureNode(this);
            h2(gestureNode);
            this.A = gestureNode;
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean L0(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Role role = this.v;
        if (role != null) {
            SemanticsPropertiesKt.o(semanticsPropertyReceiver, role.f10296a);
        }
        SemanticsPropertiesKt.e(semanticsPropertyReceiver, this.u, new y1(this, 1));
        if (this.w) {
            this.y.L1(semanticsPropertyReceiver);
        } else {
            SemanticsPropertiesKt.a(semanticsPropertyReceiver);
        }
        k2(semanticsPropertyReceiver);
    }

    @Override // androidx.compose.ui.node.TraversableNode
    /* JADX INFO: renamed from: M */
    public final Object getR() {
        return this.K;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    /* JADX INFO: renamed from: Q1 */
    public final boolean getP() {
        return true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        y0();
        if (!this.I) {
            r2();
        }
        if (this.w) {
            h2(this.y);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        l2();
        if (this.H == null) {
            this.r = null;
        }
        DelegatableNode delegatableNode = this.B;
        if (delegatableNode != null) {
            i2(delegatableNode);
        }
        this.B = null;
        DelegatableNode delegatableNode2 = this.A;
        if (delegatableNode2 != null) {
            i2(delegatableNode2);
        }
        this.A = null;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0084 A[RETURN] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean b1(KeyEvent keyEvent) {
        boolean z;
        r2();
        long jA = KeyEvent_androidKt.a(keyEvent);
        boolean z2 = this.w;
        MutableLongObjectMap mutableLongObjectMap = this.E;
        if (z2) {
            int iB = KeyEvent_androidKt.b(keyEvent);
            KeyEventType.f9236a.getClass();
            if (iB == KeyEventType.f9238c && ClickableKt.g(keyEvent)) {
                if (mutableLongObjectMap.a(jA)) {
                    z = false;
                } else {
                    PressInteraction.Press press = new PressInteraction.Press(this.F, null);
                    mutableLongObjectMap.g(jA, press);
                    if (this.r != null) {
                        BuildersKt.c(V1(), null, null, new AbstractClickableNode$onKeyEvent$1(this, press, null), 3);
                    }
                    z = true;
                }
                if (t2(keyEvent) || z) {
                    return true;
                }
                return false;
            }
        }
        if (this.w) {
            int iB2 = KeyEvent_androidKt.b(keyEvent);
            KeyEventType.f9236a.getClass();
            if (iB2 == KeyEventType.f9237b && ClickableKt.g(keyEvent)) {
                PressInteraction.Press press2 = (PressInteraction.Press) mutableLongObjectMap.f(jA);
                if (press2 != null) {
                    if (this.r != null) {
                        BuildersKt.c(V1(), null, null, new AbstractClickableNode$onKeyEvent$2(this, press2, null), 3);
                    }
                    u2(keyEvent);
                }
                if (press2 != null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        NodeCoordinator nodeCoordinator;
        try {
            SemanticsManager.f27631a = null;
            pointerEvent.getClass();
            int i2 = pointerEvent.f9309f;
            PointerEventType.f9310a.getClass();
            if (i2 == PointerEventType.f9312c && (nodeCoordinator = this.f8608b.f8613i) != null) {
                LayoutNode layoutNode = nodeCoordinator.q;
                if (layoutNode.H.d(8)) {
                    SemanticsManager.f27631a = SemanticsNodeKt.a(layoutNode, true).k();
                }
            }
            long j3 = (((j2 << 32) >> 33) & BodyPartID.bodyIdMax) | ((j2 >> 33) << 32);
            IntOffset.Companion companion = IntOffset.f11012b;
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits((int) (j3 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits((int) (j3 >> 32))) << 32);
            Offset.Companion companion2 = Offset.f8806b;
            this.F = jFloatToRawIntBits;
            r2();
            if (this.w) {
                if (this.A == null) {
                    GestureNode gestureNode = new GestureNode(this);
                    h2(gestureNode);
                    this.A = gestureNode;
                }
                if (pointerEventPass == PointerEventPass.Main) {
                    int i3 = pointerEvent.f9309f;
                    if (i3 == PointerEventType.f9313e) {
                        BuildersKt.c(V1(), null, null, new AbstractClickableNode$onPointerEvent$1(this, null), 3);
                    } else if (i3 == PointerEventType.f9314f) {
                        BuildersKt.c(V1(), null, null, new AbstractClickableNode$onPointerEvent$2(this, null), 3);
                    }
                }
            }
            if (SemanticsManager.d(pointerEvent, pointerEventPass)) {
                SemanticsManager.f27631a = null;
            }
        } catch (Throwable th) {
            if (SemanticsManager.d(pointerEvent, pointerEventPass)) {
                SemanticsManager.f27631a = null;
            }
            throw th;
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void f1() {
        HoverInteraction.Enter enter;
        MutableInteractionSource mutableInteractionSource = this.r;
        if (mutableInteractionSource != null && (enter = this.D) != null) {
            mutableInteractionSource.b(new HoverInteraction.Exit(enter));
        }
        this.D = null;
    }

    public void k2(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0071 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0073 A[LOOP:0: B:16:0x0037->B:26:0x0073, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0076 A[EDGE_INSN: B:30:0x0076->B:27:0x0076 BREAK  A[LOOP:0: B:16:0x0037->B:26:0x0073], SYNTHETIC] */
    public final void l2() {
        MutableInteractionSource mutableInteractionSource = this.r;
        MutableLongObjectMap mutableLongObjectMap = this.E;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = this.C;
            if (press != null) {
                mutableInteractionSource.b(new PressInteraction.Cancel(press));
            }
            PressInteraction.Press press2 = this.G;
            if (press2 != null) {
                mutableInteractionSource.b(new PressInteraction.Cancel(press2));
            }
            HoverInteraction.Enter enter = this.D;
            if (enter != null) {
                mutableInteractionSource.b(new HoverInteraction.Exit(enter));
            }
            Object[] objArr = mutableLongObjectMap.f3279c;
            long[] jArr = mutableLongObjectMap.f3277a;
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
                        int i3 = 8 - ((~(i2 - length)) >>> 31);
                        for (int i4 = 0; i4 < i3; i4++) {
                            if ((255 & j2) < 128) {
                                mutableInteractionSource.b(new PressInteraction.Cancel((PressInteraction.Press) objArr[(i2 << 3) + i4]));
                            }
                            j2 >>= 8;
                        }
                        if (i3 != 8) {
                            break;
                        } else if (i2 != length) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
        }
        this.C = null;
        this.G = null;
        this.D = null;
        mutableLongObjectMap.c();
    }

    public final long m2(long j2) {
        long jK1 = DelegatableNodeKt.f(this).A.K1(((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.u)).e());
        float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.intBitsToFloat((int) (jK1 >> 32)) - ((int) (j2 >> 32))) / 2.0f;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.intBitsToFloat((int) (jK1 & BodyPartID.bodyIdMax)) - ((int) (j2 & BodyPartID.bodyIdMax))) / 2.0f)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fMax) << 32);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }

    public final void n2(boolean z) {
        MutableInteractionSource mutableInteractionSource = this.r;
        if (mutableInteractionSource != null) {
            Job job = this.J;
            int i2 = 1;
            if (job == null || !job.isActive()) {
                PressInteraction.Press press = z ? this.G : this.C;
                if (press != null) {
                    PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                    Job job2 = (Job) ((ContextScope) V1()).f75106b.get(Job.Key.f74677b);
                    BuildersKt.c(V1(), null, null, new AbstractClickableNode$handlePressInteractionCancel$1$1$1(mutableInteractionSource, cancel, job2 != null ? job2.invokeOnCompletion(new k(mutableInteractionSource, cancel, i2)) : null, null), 3);
                }
            } else {
                Job job3 = this.J;
                if (job3 != null) {
                    job3.cancel(null);
                }
            }
            if (z) {
                this.G = null;
            } else {
                this.C = null;
            }
        }
    }

    public final void o2(long j2, boolean z) {
        MutableInteractionSource mutableInteractionSource = this.r;
        if (mutableInteractionSource != null) {
            Job job = this.J;
            if (job == null || !job.isActive()) {
                PressInteraction.Press press = z ? this.G : this.C;
                if (press != null) {
                    BuildersKt.c(V1(), null, null, new AbstractClickableNode$handlePressInteractionRelease$1$2$1(mutableInteractionSource, press, null), 3);
                }
            } else {
                job.cancel(null);
                BuildersKt.c(V1(), null, null, new AbstractClickableNode$handlePressInteractionRelease$1$1(job, j2, mutableInteractionSource, null), 3);
            }
            if (z) {
                this.G = null;
            } else {
                this.C = null;
            }
        }
    }

    public final void p2(IndirectPointerInputChange indirectPointerInputChange) {
        MutableInteractionSource mutableInteractionSource = this.r;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(indirectPointerInputChange.f9221c, null);
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            TraversableNodeKt.c(this, GestureNode.q, new b(new vg(indirectPointerInputChange, ref$BooleanRef, 13), 1));
            if (ref$BooleanRef.f71917b || Clickable_androidKt.a(this)) {
                this.J = BuildersKt.c(V1(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$1(mutableInteractionSource, press, this, null), 3);
            } else {
                this.G = press;
                BuildersKt.c(V1(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$2(mutableInteractionSource, press, null), 3);
            }
        }
    }

    public final void q2(PointerInputChange pointerInputChange) {
        MutableInteractionSource mutableInteractionSource = this.r;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(pointerInputChange.f9330c, null);
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            TraversableNodeKt.c(this, GestureNode.q, new b(new vg(pointerInputChange, ref$BooleanRef, 14), 1));
            if (ref$BooleanRef.f71917b || Clickable_androidKt.a(this)) {
                this.J = BuildersKt.c(V1(), null, null, new AbstractClickableNode$handlePressInteractionStart$2$1(mutableInteractionSource, press, this, null), 3);
            } else {
                this.C = press;
                BuildersKt.c(V1(), null, null, new AbstractClickableNode$handlePressInteractionStart$2$2(mutableInteractionSource, press, null), 3);
            }
        }
    }

    public final void r2() {
        if (this.B != null) {
            return;
        }
        IndicationNodeFactory indicationNodeFactory = this.t ? this.z : this.s;
        if (indicationNodeFactory != null) {
            if (this.r == null) {
                this.r = InteractionSourceKt.a();
            }
            this.y.m2(this.r);
            MutableInteractionSource mutableInteractionSource = this.r;
            mutableInteractionSource.getClass();
            DelegatableNode delegatableNodeA = indicationNodeFactory.a(mutableInteractionSource);
            h2(delegatableNodeA);
            this.B = delegatableNodeA;
        }
    }

    public void s2() {
    }

    public abstract boolean t2(KeyEvent keyEvent);

    public abstract void u2(KeyEvent keyEvent);

    /* JADX WARN: Code duplicated, block: B:39:0x0075  */
    public final void v2(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0) {
        boolean z3;
        boolean z4;
        DelegatableNode delegatableNode;
        if (Intrinsics.c(this.H, mutableInteractionSource)) {
            z3 = false;
        } else {
            l2();
            this.H = mutableInteractionSource;
            this.r = mutableInteractionSource;
            z3 = true;
        }
        if (!Intrinsics.c(this.s, indicationNodeFactory)) {
            this.s = indicationNodeFactory;
            z3 = true;
        }
        if (this.t != z) {
            this.t = z;
            if (z) {
                y0();
            }
            z3 = true;
        }
        boolean z5 = this.w;
        FocusableNode focusableNode = this.y;
        if (z5 != z2) {
            if (z2) {
                h2(focusableNode);
            } else {
                i2(focusableNode);
                l2();
            }
            SemanticsModifierNodeKt.b(this);
            this.w = z2;
        }
        if (!Intrinsics.c(this.u, str)) {
            this.u = str;
            SemanticsModifierNodeKt.b(this);
        }
        if (!Intrinsics.c(this.v, role)) {
            this.v = role;
            SemanticsModifierNodeKt.b(this);
        }
        this.x = function0;
        boolean z6 = this.I;
        MutableInteractionSource mutableInteractionSource2 = this.H;
        if (z6 != (mutableInteractionSource2 == null)) {
            boolean z7 = mutableInteractionSource2 == null;
            this.I = z7;
            z4 = (z7 || this.B != null) ? z3 : true;
        }
        if (z4 && ((delegatableNode = this.B) != null || !this.I)) {
            if (delegatableNode != null) {
                i2(delegatableNode);
            }
            this.B = null;
            r2();
        }
        focusableNode.m2(this.r);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        if (this.t) {
            ObserverModifierNodeKt.a(this, new y1(this, 0));
        }
    }
}

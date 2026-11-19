package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.Velocity;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;", "Landroidx/compose/ui/node/TraversableNode;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "Landroidx/compose/ui/Modifier$Node;", "connection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "dispatcher", "<init>", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NestedScrollNode extends Modifier.Node implements TraversableNode, NestedScrollConnection {
    public NestedScrollConnection p;
    public NestedScrollDispatcher q;
    public NestedScrollNode r;
    public final String s;

    public NestedScrollNode(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.p = nestedScrollConnection;
        this.q = nestedScrollDispatcher == null ? new NestedScrollDispatcher() : nestedScrollDispatcher;
        this.s = "androidx.compose.ui.input.nestedscroll.NestedScrollNode";
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long A0(int i2, long j2, long j3) {
        long jA0;
        long jA1 = this.p.A0(i2, j2, j3);
        boolean z = this.o;
        NestedScrollNode nestedScrollNode = null;
        if (z && z) {
            nestedScrollNode = (NestedScrollNode) TraversableNodeKt.b(this);
        }
        NestedScrollNode nestedScrollNode2 = nestedScrollNode;
        if (nestedScrollNode2 != null) {
            jA0 = nestedScrollNode2.A0(i2, Offset.f(j2, jA1), Offset.e(j3, jA1));
        } else {
            Offset.f8806b.getClass();
            jA0 = 0;
        }
        return Offset.f(jA1, jA0);
    }

    @Override // androidx.compose.ui.node.TraversableNode
    /* JADX INFO: renamed from: M */
    public final Object getR() {
        return this.s;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object P(long j2, long j3, Continuation continuation) {
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$1;
        long j4;
        long j5;
        long j6;
        long j7;
        if (continuation instanceof NestedScrollNode$onPostFling$1) {
            nestedScrollNode$onPostFling$1 = (NestedScrollNode$onPostFling$1) continuation;
            int i2 = nestedScrollNode$onPostFling$1.f9254f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPostFling$1.f9254f = i2 - Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, (ContinuationImpl) continuation);
            }
        } else {
            nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, (ContinuationImpl) continuation);
        }
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$2 = nestedScrollNode$onPostFling$1;
        Object objP = nestedScrollNode$onPostFling$2.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nestedScrollNode$onPostFling$2.f9254f;
        NestedScrollNode nestedScrollNode = null;
        if (i3 == 0) {
            ResultKt.b(objP);
            NestedScrollConnection nestedScrollConnection = this.p;
            nestedScrollNode$onPostFling$2.f9251b = j2;
            nestedScrollNode$onPostFling$2.f9252c = j3;
            nestedScrollNode$onPostFling$2.f9254f = 1;
            objP = nestedScrollConnection.P(j2, j3, nestedScrollNode$onPostFling$2);
            if (objP != coroutineSingletons) {
                j4 = j3;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            long j8 = nestedScrollNode$onPostFling$2.f9252c;
            long j9 = nestedScrollNode$onPostFling$2.f9251b;
            ResultKt.b(objP);
            j4 = j8;
            j2 = j9;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j7 = nestedScrollNode$onPostFling$2.f9251b;
            ResultKt.b(objP);
        }
        j6 = ((Velocity) objP).f11030a;
        j5 = j7;
        return new Velocity(Velocity.e(j5, j6));
        j5 = ((Velocity) objP).f11030a;
        boolean z = this.o;
        if (!z) {
            nestedScrollNode = this.r;
        } else if (z && z) {
            nestedScrollNode = (NestedScrollNode) TraversableNodeKt.b(this);
        }
        NestedScrollNode nestedScrollNode2 = nestedScrollNode;
        if (nestedScrollNode2 != null) {
            long jE = Velocity.e(j2, j5);
            long jD = Velocity.d(j4, j5);
            nestedScrollNode$onPostFling$2.f9251b = j5;
            nestedScrollNode$onPostFling$2.f9254f = 2;
            objP = nestedScrollNode2.P(jE, jD, nestedScrollNode$onPostFling$2);
            if (objP != coroutineSingletons) {
                j7 = j5;
                j6 = ((Velocity) objP).f11030a;
                j5 = j7;
            }
            return coroutineSingletons;
        }
        Velocity.f11029b.getClass();
        j6 = 0;
        return new Velocity(Velocity.e(j5, j6));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        NestedScrollDispatcher nestedScrollDispatcher = this.q;
        nestedScrollDispatcher.f9241a = this;
        nestedScrollDispatcher.f9242b = null;
        this.r = null;
        nestedScrollDispatcher.f9243c = new NestedScrollNode$updateDispatcherFields$1(this);
        this.q.d = V1();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        TraversableNodeKt.d(this, new Function1<TraversableNode, Boolean>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollNodeKt$findNearestAttachedAncestor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z;
                TraversableNode traversableNode = (TraversableNode) obj;
                if (traversableNode.getF8608b().o) {
                    ref$ObjectRef.f71921b = traversableNode;
                    z = false;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        NestedScrollNode nestedScrollNode = (NestedScrollNode) ((TraversableNode) ref$ObjectRef.f71921b);
        this.r = nestedScrollNode;
        NestedScrollDispatcher nestedScrollDispatcher = this.q;
        nestedScrollDispatcher.f9242b = nestedScrollNode;
        if (nestedScrollDispatcher.f9241a == this) {
            nestedScrollDispatcher.f9241a = null;
        }
    }

    public final CoroutineScope h2() {
        NestedScrollNode nestedScrollNode = this.o ? (NestedScrollNode) TraversableNodeKt.b(this) : null;
        CoroutineScope coroutineScopeH2 = nestedScrollNode != null ? nestedScrollNode.h2() : null;
        if (coroutineScopeH2 != null && CoroutineScopeKt.e(coroutineScopeH2)) {
            return coroutineScopeH2;
        }
        CoroutineScope coroutineScope = this.q.d;
        if (coroutineScope != null) {
            return coroutineScope;
        }
        md.k("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long l0(int i2, long j2) {
        long jL0;
        boolean z = this.o;
        NestedScrollNode nestedScrollNode = null;
        if (z && z) {
            nestedScrollNode = (NestedScrollNode) TraversableNodeKt.b(this);
        }
        if (nestedScrollNode != null) {
            jL0 = nestedScrollNode.l0(i2, j2);
        } else {
            Offset.f8806b.getClass();
            jL0 = 0;
        }
        return Offset.f(jL0, this.p.l0(i2, Offset.e(j2, jL0)));
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0075  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
    
        if (r9 == r1) goto L28;
     */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object y1(long r7, kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1) r0
            int r1 = r0.f9257e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9257e = r1
            goto L1a
        L13:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r9 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r9
            r0.<init>(r6, r9)
        L1a:
            java.lang.Object r9 = r0.f9256c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f9257e
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            long r6 = r0.f9255b
            kotlin.ResultKt.b(r9)
            goto L76
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L35:
            long r7 = r0.f9255b
            kotlin.ResultKt.b(r9)
            goto L58
        L3b:
            kotlin.ResultKt.b(r9)
            boolean r9 = r6.o
            if (r9 == 0) goto L4b
            if (r9 == 0) goto L4b
            androidx.compose.ui.node.TraversableNode r9 = androidx.compose.ui.node.TraversableNodeKt.b(r6)
            r3 = r9
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r3 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode) r3
        L4b:
            if (r3 == 0) goto L5d
            r0.f9255b = r7
            r0.f9257e = r5
            java.lang.Object r9 = r3.y1(r7, r0)
            if (r9 != r1) goto L58
            goto L74
        L58:
            androidx.compose.ui.unit.Velocity r9 = (androidx.compose.ui.unit.Velocity) r9
            long r2 = r9.f11030a
            goto L64
        L5d:
            androidx.compose.ui.unit.Velocity$Companion r9 = androidx.compose.ui.unit.Velocity.f11029b
            r9.getClass()
            r2 = 0
        L64:
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r6 = r6.p
            long r7 = androidx.compose.ui.unit.Velocity.d(r7, r2)
            r0.f9255b = r2
            r0.f9257e = r4
            java.lang.Object r9 = r6.y1(r7, r0)
            if (r9 != r1) goto L75
        L74:
            return r1
        L75:
            r6 = r2
        L76:
            androidx.compose.ui.unit.Velocity r9 = (androidx.compose.ui.unit.Velocity) r9
            long r8 = r9.f11030a
            long r6 = androidx.compose.ui.unit.Velocity.e(r6, r8)
            androidx.compose.ui.unit.Velocity r8 = new androidx.compose.ui.unit.Velocity
            r8.<init>(r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollNode.y1(long, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

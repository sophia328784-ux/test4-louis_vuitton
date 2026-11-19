package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.Velocity;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NestedScrollDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public NestedScrollNode f9241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public NestedScrollNode f9242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function0 f9243c = new Function0<CoroutineScope>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$calculateNestedScrollScope$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            return this.f9244c.d;
        }
    };
    public CoroutineScope d;

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        if (r0 == r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007e, code lost:
    
        if (r0 == r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0080, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(long r9, long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r8 = this;
            boolean r0 = r13 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1
            if (r0 == 0) goto L14
            r0 = r13
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.d = r1
        L12:
            r13 = r0
            goto L1a
        L14:
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1
            r0.<init>(r8, r13)
            goto L12
        L1a:
            java.lang.Object r0 = r13.f9245b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r13.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L37
            if (r2 == r5) goto L33
            if (r2 != r4) goto L2d
            kotlin.ResultKt.b(r0)
            goto L81
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r3
        L33:
            kotlin.ResultKt.b(r0)
            goto L5b
        L37:
            kotlin.ResultKt.b(r0)
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r0 = r8.f9241a
            if (r0 == 0) goto L49
            boolean r2 = r0.o
            if (r2 == 0) goto L49
            androidx.compose.ui.node.TraversableNode r0 = androidx.compose.ui.node.TraversableNodeKt.b(r0)
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode) r0
            goto L4a
        L49:
            r0 = r3
        L4a:
            r6 = 0
            if (r0 != 0) goto L66
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r8 = r8.f9242b
            if (r8 == 0) goto L60
            r13.d = r5
            java.lang.Object r0 = r8.P(r9, r11, r13)
            if (r0 != r1) goto L5b
            goto L80
        L5b:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r6 = r0.f11030a
            goto L8b
        L60:
            androidx.compose.ui.unit.Velocity$Companion r8 = androidx.compose.ui.unit.Velocity.f11029b
            r8.getClass()
            goto L8b
        L66:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r8 = r8.f9241a
            if (r8 == 0) goto L75
            boolean r0 = r8.o
            if (r0 == 0) goto L75
            androidx.compose.ui.node.TraversableNode r8 = androidx.compose.ui.node.TraversableNodeKt.b(r8)
            r3 = r8
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r3 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode) r3
        L75:
            r8 = r3
            if (r8 == 0) goto L86
            r13.d = r4
            java.lang.Object r0 = r8.P(r9, r11, r13)
            if (r0 != r1) goto L81
        L80:
            return r1
        L81:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r6 = r0.f11030a
            goto L8b
        L86:
            androidx.compose.ui.unit.Velocity$Companion r8 = androidx.compose.ui.unit.Velocity.f11029b
            r8.getClass()
        L8b:
            androidx.compose.ui.unit.Velocity r8 = new androidx.compose.ui.unit.Velocity
            r8.<init>(r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher.a(long, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final long b(int i2, long j2, long j3) {
        NestedScrollNode nestedScrollNode = this.f9241a;
        NestedScrollNode nestedScrollNode2 = null;
        if (nestedScrollNode != null && nestedScrollNode.o) {
            nestedScrollNode2 = (NestedScrollNode) TraversableNodeKt.b(nestedScrollNode);
        }
        NestedScrollNode nestedScrollNode3 = nestedScrollNode2;
        if (nestedScrollNode3 != null) {
            return nestedScrollNode3.A0(i2, j2, j3);
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(long j2, ContinuationImpl continuationImpl) {
        NestedScrollDispatcher$dispatchPreFling$1 nestedScrollDispatcher$dispatchPreFling$1;
        long j3;
        if (continuationImpl instanceof NestedScrollDispatcher$dispatchPreFling$1) {
            nestedScrollDispatcher$dispatchPreFling$1 = (NestedScrollDispatcher$dispatchPreFling$1) continuationImpl;
            int i2 = nestedScrollDispatcher$dispatchPreFling$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPreFling$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, continuationImpl);
            }
        } else {
            nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, continuationImpl);
        }
        Object objY1 = nestedScrollDispatcher$dispatchPreFling$1.f9247b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nestedScrollDispatcher$dispatchPreFling$1.d;
        NestedScrollNode nestedScrollNode = null;
        if (i3 == 0) {
            ResultKt.b(objY1);
            NestedScrollNode nestedScrollNode2 = this.f9241a;
            if (nestedScrollNode2 != null && nestedScrollNode2.o) {
                nestedScrollNode = (NestedScrollNode) TraversableNodeKt.b(nestedScrollNode2);
            }
            if (nestedScrollNode != null) {
                nestedScrollDispatcher$dispatchPreFling$1.d = 1;
                objY1 = nestedScrollNode.y1(j2, nestedScrollDispatcher$dispatchPreFling$1);
                if (objY1 == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                Velocity.f11029b.getClass();
                j3 = 0;
            }
            return new Velocity(j3);
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objY1);
        j3 = ((Velocity) objY1).f11030a;
        return new Velocity(j3);
    }

    public final CoroutineScope d() {
        CoroutineScope coroutineScope = (CoroutineScope) this.f9243c.mo47invoke();
        if (coroutineScope != null) {
            return coroutineScope;
        }
        md.k("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }
}

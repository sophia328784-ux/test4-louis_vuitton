package androidx.compose.ui;

import androidx.compose.foundation.BorderModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverNodeOwnerScope;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/Modifier;", "", "Element", "Node", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Modifier {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/Modifier$Companion;", "Landroidx/compose/ui/Modifier;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion implements Modifier {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Companion f8607b = new Companion();

        @Override // androidx.compose.ui.Modifier
        public final Object b(Object obj, Function2 function2) {
            return obj;
        }

        @Override // androidx.compose.ui.Modifier
        public final boolean d(Function1 function1) {
            return true;
        }

        @Override // androidx.compose.ui.Modifier
        public final Modifier o(Modifier modifier) {
            return modifier;
        }

        public final String toString() {
            return "Modifier";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/Modifier$Element;", "Landroidx/compose/ui/Modifier;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Element extends Modifier {
        @Override // androidx.compose.ui.Modifier
        default Object b(Object obj, Function2 function2) {
            return function2.invoke(obj, this);
        }

        @Override // androidx.compose.ui.Modifier
        default boolean d(Function1 function1) {
            return ((Boolean) function1.invoke(this)).booleanValue();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DelegatableNode;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Node implements DelegatableNode {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ContextScope f8609c;
        public int d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Node f8611f;
        public Node g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ObserverNodeOwnerScope f8612h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public NodeCoordinator f8613i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f8614j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f8615k;
        public boolean l;
        public boolean m;
        public Function0 n;
        public boolean o;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Node f8608b = this;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f8610e = -1;

        public final CoroutineScope V1() {
            ContextScope contextScope = this.f8609c;
            if (contextScope != null) {
                return contextScope;
            }
            ContextScope contextScopeA = CoroutineScopeKt.a(DelegatableNodeKt.g(this).getCoroutineContext().plus(new JobImpl((Job) DelegatableNodeKt.g(this).getCoroutineContext().get(Job.Key.f74677b))));
            this.f8609c = contextScopeA;
            return contextScopeA;
        }

        public boolean W1() {
            return !(this instanceof BorderModifierNode);
        }

        public void X1() {
            if (this.o) {
                InlineClassHelperKt.c("node attached multiple times");
            }
            if (this.f8613i == null) {
                InlineClassHelperKt.c("attach invoked on a node without a coordinator");
            }
            this.o = true;
            this.l = true;
        }

        public void Y1() {
            if (!this.o) {
                InlineClassHelperKt.c("Cannot detach a node that is not attached");
            }
            if (this.l) {
                InlineClassHelperKt.c("Must run runAttachLifecycle() before markAsDetached()");
            }
            if (this.m) {
                InlineClassHelperKt.c("Must run runDetachLifecycle() before markAsDetached()");
            }
            this.o = false;
            ContextScope contextScope = this.f8609c;
            if (contextScope != null) {
                CoroutineScopeKt.c(contextScope, new ModifierNodeDetachedCancellationException());
                this.f8609c = null;
            }
        }

        public void Z1() {
        }

        public void a2() {
        }

        public void b2() {
        }

        public void c2() {
            if (!this.o) {
                InlineClassHelperKt.c("reset() called on an unattached node");
            }
            b2();
        }

        public void d2() {
            if (!this.o) {
                InlineClassHelperKt.c("Must run markAsAttached() prior to runAttachLifecycle");
            }
            if (!this.l) {
                InlineClassHelperKt.c("Must run runAttachLifecycle() only once after markAsAttached()");
            }
            this.l = false;
            Z1();
            this.m = true;
        }

        public void e2() {
            if (!this.o) {
                InlineClassHelperKt.c("node detached multiple times");
            }
            if (this.f8613i == null) {
                InlineClassHelperKt.c("detach invoked on a node without a coordinator");
            }
            if (!this.m) {
                InlineClassHelperKt.c("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
            }
            this.m = false;
            Function0 function0 = this.n;
            if (function0 != null) {
                function0.mo47invoke();
            }
            a2();
        }

        public void f2(Node node) {
            this.f8608b = node;
        }

        public void g2(NodeCoordinator nodeCoordinator) {
            this.f8613i = nodeCoordinator;
        }

        @Override // androidx.compose.ui.node.DelegatableNode
        /* JADX INFO: renamed from: l, reason: from getter */
        public final Node getF8608b() {
            return this.f8608b;
        }
    }

    Object b(Object obj, Function2 function2);

    boolean d(Function1 function1);

    default Modifier o(Modifier modifier) {
        return modifier == Companion.f8607b ? this : new CombinedModifier(this, modifier);
    }
}

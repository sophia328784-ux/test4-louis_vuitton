package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.compose.ui.spatial.ThrottledCallbacks.Entry;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;", "<init>", "()V", "Node", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AwaitFirstLayoutModifier extends ModifierNodeElement<Node> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Node f5389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CompletableDeferred f5390c;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;", "Landroidx/compose/ui/Modifier$Node;", "<init>", "(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class Node extends Modifier.Node {
        public ThrottledCallbacks.Entry p;

        public Node() {
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void Z1() {
            AwaitFirstLayoutModifier awaitFirstLayoutModifier = AwaitFirstLayoutModifier.this;
            awaitFirstLayoutModifier.f5389b = this;
            if (awaitFirstLayoutModifier.f5390c != null) {
                h2();
            }
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void a2() {
            AwaitFirstLayoutModifier awaitFirstLayoutModifier = AwaitFirstLayoutModifier.this;
            if (awaitFirstLayoutModifier.f5389b == this) {
                awaitFirstLayoutModifier.f5389b = null;
            }
            ThrottledCallbacks.Entry entry = this.p;
            if (entry != null) {
                entry.b();
            }
            this.p = null;
        }

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
        public final void h2() {
            defpackage.k kVar = new defpackage.k(this, AwaitFirstLayoutModifier.this, 8);
            LayoutNode layoutNodeF = DelegatableNodeKt.f(this);
            int i2 = layoutNodeF.f9689c;
            RectManager rectManager = LayoutNodeKt.a(layoutNodeF).getRectManager();
            ThrottledCallbacks throttledCallbacks = rectManager.f10386c;
            throttledCallbacks.getClass();
            MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.f10399a;
            ThrottledCallbacks.Entry entry = throttledCallbacks.new Entry(i2, 0L, 0L, this, kVar);
            Object objB = mutableIntObjectMap.b(i2);
            if (objB == null) {
                mutableIntObjectMap.i(i2, entry);
                objB = entry;
            }
            ThrottledCallbacks.Entry entry2 = (ThrottledCallbacks.Entry) objB;
            if (entry2 != entry) {
                while (true) {
                    ThrottledCallbacks.Entry entry3 = entry2.f10408f;
                    if (entry3 == null) {
                        break;
                    } else {
                        entry2 = entry3;
                    }
                }
                entry2.f10408f = entry;
            }
            if (DelegatableNodeKt.f(this.f8608b).f9692h) {
                rectManager.f10385b.c(i2, true);
            }
            rectManager.f10387e = true;
            rectManager.h();
            this.p = entry;
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new Node();
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final /* bridge */ /* synthetic */ void g(Modifier.Node node) {
    }

    public final int hashCode() {
        return 234;
    }

    public final Object n(ContinuationImpl continuationImpl) {
        CompletableDeferred completableDeferredA = this.f5390c;
        if (completableDeferredA == null) {
            completableDeferredA = CompletableDeferredKt.a();
            this.f5390c = completableDeferredA;
            Node node = this.f5389b;
            if (node != null && node.o) {
                node.h2();
            }
        }
        Object objK = completableDeferredA.k(continuationImpl);
        return objK == CoroutineSingletons.COROUTINE_SUSPENDED ? objK : Unit.f71739a;
    }
}

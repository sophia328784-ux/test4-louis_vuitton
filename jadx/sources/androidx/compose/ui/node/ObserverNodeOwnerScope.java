package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/ObserverNodeOwnerScope;", "Landroidx/compose/ui/node/OwnerScope;", "Landroidx/compose/ui/node/ObserverModifierNode;", "observerNode", "<init>", "(Landroidx/compose/ui/node/ObserverModifierNode;)V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ObserverNodeOwnerScope implements OwnerScope {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f9806c = new Companion(null);
    public static final Function1 d = ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1.f9808c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObserverModifierNode f9807b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ObserverNodeOwnerScope(ObserverModifierNode observerModifierNode) {
        this.f9807b = observerModifierNode;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean T0() {
        return this.f9807b.getF8608b().o;
    }
}

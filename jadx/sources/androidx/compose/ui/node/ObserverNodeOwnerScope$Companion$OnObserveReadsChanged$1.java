package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/ui/node/ObserverNodeOwnerScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1 extends Lambda implements Function1<ObserverNodeOwnerScope, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1 f9808c = new ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ObserverNodeOwnerScope observerNodeOwnerScope = (ObserverNodeOwnerScope) obj;
        if (observerNodeOwnerScope.T0()) {
            observerNodeOwnerScope.f9807b.y0();
        }
        return Unit.f71739a;
    }
}

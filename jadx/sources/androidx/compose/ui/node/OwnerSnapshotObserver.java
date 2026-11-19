package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001B0\u0012'\u0010\b\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/node/OwnerSnapshotObserver;", "", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "Lkotlin/ParameterName;", "name", "callback", "onChangedExecutor", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OwnerSnapshotObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SnapshotStateObserver f9812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f9813b = OwnerSnapshotObserver$onCommitAffectingLookaheadMeasure$1.f9823c;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f9814c = OwnerSnapshotObserver$onCommitAffectingMeasure$1.f9824c;
    public final Function1 d = OwnerSnapshotObserver$onCommitAffectingSemantics$1.f9825c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f9815e = OwnerSnapshotObserver$onCommitAffectingLayout$1.f9819c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function1 f9816f = OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1.f9820c;
    public final Function1 g = OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1.f9821c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function1 f9817h = OwnerSnapshotObserver$onCommitAffectingLookahead$1.f9822c;

    public OwnerSnapshotObserver(Function1<? super Function0<Unit>, Unit> function1) {
        this.f9812a = new SnapshotStateObserver(function1);
    }

    public final void a() {
        this.f9812a.c(OwnerSnapshotObserver$clearInvalidObservations$1.f9818c);
    }
}

package androidx.compose.ui.focus;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.node.Owner;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/focus/FocusInvalidationManager;", "", "Landroidx/compose/ui/focus/FocusOwner;", "focusOwner", "Landroidx/compose/ui/node/Owner;", "owner", "<init>", "(Landroidx/compose/ui/focus/FocusOwner;Landroidx/compose/ui/node/Owner;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FocusInvalidationManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FocusOwner f8741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Owner f8742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableScatterSet f8743c = ScatterSetKt.a();
    public final MutableScatterSet d = ScatterSetKt.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f8744e;

    public FocusInvalidationManager(FocusOwner focusOwner, Owner owner) {
        this.f8741a = focusOwner;
        this.f8742b = owner;
    }

    public final void a() {
        if (this.f8744e) {
            return;
        }
        this.f8742b.E(new FocusInvalidationManager$scheduleInvalidation$1(0, this, FocusInvalidationManager.class, "invalidateNodes", "invalidateNodes()V", 0));
        this.f8744e = true;
    }
}

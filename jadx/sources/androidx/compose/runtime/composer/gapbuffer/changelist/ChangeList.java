package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Changes;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;", "Landroidx/compose/runtime/Changes;", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChangeList extends Changes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Operations f8235a = new Operations();

    @Override // androidx.compose.runtime.Changes
    public final void a() {
        this.f8235a.a();
    }

    @Override // androidx.compose.runtime.Changes
    public final boolean b() {
        return this.f8235a.c();
    }

    public final void c(Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        this.f8235a.b(applier, slotWriter, rememberManager, operationErrorContext);
    }
}

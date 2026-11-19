package androidx.compose.ui.platform;

import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;", "Landroidx/compose/runtime/retain/RetainedValuesStore;", "Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;", "delegate", "<init>", "(Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LifecycleRetainedValuesStore implements RetainedValuesStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ManagedRetainedValuesStore f10115a;

    public LifecycleRetainedValuesStore(ManagedRetainedValuesStore managedRetainedValuesStore) {
        this.f10115a = managedRetainedValuesStore;
        if (managedRetainedValuesStore.f8415b) {
            return;
        }
        if (managedRetainedValuesStore.f8416c) {
            PreconditionsKt.a("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
        }
        managedRetainedValuesStore.a();
        managedRetainedValuesStore.f8416c = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LifecycleRetainedValuesStore() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ LifecycleRetainedValuesStore(ManagedRetainedValuesStore managedRetainedValuesStore, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new ManagedRetainedValuesStore() : managedRetainedValuesStore);
    }
}

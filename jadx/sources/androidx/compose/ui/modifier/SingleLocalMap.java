package androidx.compose.ui.modifier;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/modifier/SingleLocalMap;", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "Landroidx/compose/ui/modifier/ModifierLocal;", ConfigurationName.KEY, "<init>", "(Landroidx/compose/ui/modifier/ModifierLocal;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SingleLocalMap extends ModifierLocalMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ModifierLocal f9620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f9621b;

    public SingleLocalMap(ModifierLocal<?> modifierLocal) {
        super(null);
        this.f9620a = modifierLocal;
        this.f9621b = SnapshotStateKt.g(null);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public final boolean a(ModifierLocal modifierLocal) {
        return modifierLocal == this.f9620a;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public final Object b(ModifierLocal modifierLocal) {
        if (!(modifierLocal == this.f9620a)) {
            InlineClassHelperKt.c("Check failed.");
        }
        Object f10755b = ((SnapshotMutableStateImpl) this.f9621b).getF10755b();
        if (f10755b == null) {
            return null;
        }
        return f10755b;
    }
}

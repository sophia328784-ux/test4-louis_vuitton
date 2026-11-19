package androidx.compose.ui.platform;

import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;", "Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "saveableStateRegistry", "Lkotlin/Function0;", "", "onDispose", "<init>", "(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Lkotlin/jvm/functions/Function0;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DisposableSaveableStateRegistry implements SaveableStateRegistry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SaveableStateRegistry f10066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f10067c;

    public DisposableSaveableStateRegistry(SaveableStateRegistry saveableStateRegistry, Function0<Unit> function0) {
        this.f10066b = saveableStateRegistry;
        this.f10067c = function0;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean a(Object obj) {
        return this.f10066b.a(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry b(String str, Function0 function0) {
        return this.f10066b.b(str, function0);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Map d() {
        return this.f10066b.d();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object e(String str) {
        return this.f10066b.e(str);
    }
}

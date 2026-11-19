package androidx.compose.runtime.saveable;

import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.lc0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\u00020\u0003BG\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00028\u0000\u0012\u0010\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/runtime/saveable/SaveableHolder;", "T", "Landroidx/compose/runtime/saveable/SaverScope;", "Landroidx/compose/runtime/RememberObserver;", "Landroidx/compose/runtime/saveable/Saver;", "", "saver", "Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "registry", "", ConfigurationName.KEY, "value", "", "inputs", "<init>", "(Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V", "runtime-saveable"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SaveableHolder<T> implements SaverScope, RememberObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Saver f8417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SaveableStateRegistry f8418c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f8419e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object[] f8420f;
    public SaveableStateRegistry.Entry g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f8421h = new b(this);

    public SaveableHolder(Saver<T, Object> saver, SaveableStateRegistry saveableStateRegistry, String str, T t, Object[] objArr) {
        this.f8417b = saver;
        this.f8418c = saveableStateRegistry;
        this.d = str;
        this.f8419e = t;
        this.f8420f = objArr;
    }

    @Override // androidx.compose.runtime.saveable.SaverScope
    public final boolean a(Object obj) {
        SaveableStateRegistry saveableStateRegistry = this.f8418c;
        return saveableStateRegistry == null || saveableStateRegistry.a(obj);
    }

    public final void b() {
        String strA;
        SaveableStateRegistry saveableStateRegistry = this.f8418c;
        if (this.g != null) {
            lc0.v("entry(", this.g, ") is not null");
            return;
        }
        if (saveableStateRegistry != null) {
            b bVar = this.f8421h;
            Object objMo47invoke = bVar.mo47invoke();
            if (objMo47invoke == null || saveableStateRegistry.a(objMo47invoke)) {
                this.g = saveableStateRegistry.b(this.d, bVar);
                return;
            }
            if (objMo47invoke instanceof SnapshotMutableState) {
                SnapshotMutableState snapshotMutableState = (SnapshotMutableState) objMo47invoke;
                if (snapshotMutableState.getF8133c() == SnapshotStateKt.h() || snapshotMutableState.getF8133c() == SnapshotStateKt.n() || snapshotMutableState.getF8133c() == SnapshotStateKt.k()) {
                    strA = "MutableState containing " + snapshotMutableState.getF10755b() + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable().";
                } else {
                    strA = "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver";
                }
            } else {
                strA = RememberSaveableKt.a(objMo47invoke);
            }
            throw new IllegalArgumentException(strA);
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        b();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
        SaveableStateRegistry.Entry entry = this.g;
        if (entry != null) {
            entry.a();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        SaveableStateRegistry.Entry entry = this.g;
        if (entry != null) {
            entry.a();
        }
    }
}

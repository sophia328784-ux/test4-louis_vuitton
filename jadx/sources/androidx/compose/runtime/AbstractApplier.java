package androidx.compose.runtime;

import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/AbstractApplier;", "T", "Landroidx/compose/runtime/Applier;", "root", "<init>", "(Ljava/lang/Object;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractApplier<T> implements Applier<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f7918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f7919b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f7920c;

    public AbstractApplier(T t) {
        this.f7918a = t;
        this.f7920c = t;
    }

    @Override // androidx.compose.runtime.Applier
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Object getF7920c() {
        return this.f7920c;
    }

    @Override // androidx.compose.runtime.Applier
    public final void clear() {
        this.f7919b.clear();
        this.f7920c = this.f7918a;
        k();
    }

    @Override // androidx.compose.runtime.Applier
    public final void h(Object obj) {
        this.f7919b.add(this.f7920c);
        this.f7920c = obj;
    }

    @Override // androidx.compose.runtime.Applier
    public final void j() {
        ArrayList arrayList = this.f7919b;
        this.f7920c = arrayList.remove(arrayList.size() - 1);
    }

    public abstract void k();
}

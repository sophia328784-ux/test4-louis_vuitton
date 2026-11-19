package androidx.compose.runtime.internal;

import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.collection.MutableVector;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/internal/PausedCompositionRemembers;", "Landroidx/compose/runtime/RememberObserver;", "", "abandoning", "<init>", "(Ljava/util/Set;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PausedCompositionRemembers implements RememberObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f8387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableVector f8388c = new MutableVector(new RememberObserverHolder[16], 0);

    public PausedCompositionRemembers(Set<RememberObserver> set) {
        this.f8387b = set;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        MutableVector mutableVector = this.f8388c;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            RememberObserver f8001a = ((RememberObserverHolder) objArr[i3]).getF8001a();
            this.f8387b.remove(f8001a);
            f8001a.d();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
    }
}

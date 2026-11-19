package androidx.navigation.internal;

import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.navigation.NavDestination;
import defpackage.b21;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/navigation/internal/NavGraphImpl$iterator$1", "", "Landroidx/navigation/NavDestination;", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavGraphImpl$iterator$1 implements Iterator<NavDestination>, KMutableIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18350b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f18351c;
    public final /* synthetic */ NavGraphImpl d;

    public NavGraphImpl$iterator$1(NavGraphImpl navGraphImpl) {
        this.d = navGraphImpl;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18350b + 1 < this.d.f18347b.e();
    }

    @Override // java.util.Iterator
    public final NavDestination next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        this.f18351c = true;
        SparseArrayCompat sparseArrayCompat = this.d.f18347b;
        int i2 = this.f18350b + 1;
        this.f18350b = i2;
        return (NavDestination) sparseArrayCompat.f(i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f18351c) {
            md.k("You must call next() before you can remove an element");
            return;
        }
        SparseArrayCompat sparseArrayCompat = this.d.f18347b;
        ((NavDestination) sparseArrayCompat.f(this.f18350b)).d = null;
        int i2 = this.f18350b;
        Object[] objArr = sparseArrayCompat.d;
        Object obj = objArr[i2];
        Object obj2 = SparseArrayCompatKt.f3386a;
        if (obj != obj2) {
            objArr[i2] = obj2;
            sparseArrayCompat.f3383b = true;
        }
        this.f18350b = i2 - 1;
        this.f18351c = false;
    }
}

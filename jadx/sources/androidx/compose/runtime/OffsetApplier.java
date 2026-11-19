package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/OffsetApplier;", "N", "Landroidx/compose/runtime/Applier;", "applier", "", "offset", "<init>", "(Landroidx/compose/runtime/Applier;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OffsetApplier<N> implements Applier<N> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Applier f8046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8048c;

    public OffsetApplier(Applier<N> applier, int i2) {
        this.f8046a = applier;
        this.f8047b = i2;
    }

    @Override // androidx.compose.runtime.Applier
    public final void a(Object obj, Function2 function2) {
        this.f8046a.a(obj, function2);
    }

    @Override // androidx.compose.runtime.Applier
    /* JADX INFO: renamed from: b */
    public final Object getF8109c() {
        return this.f8046a.getF8109c();
    }

    @Override // androidx.compose.runtime.Applier
    public final void c(int i2, int i3, int i4) {
        int i5 = this.f8048c == 0 ? this.f8047b : 0;
        this.f8046a.c(i2 + i5, i3 + i5, i4);
    }

    @Override // androidx.compose.runtime.Applier
    public final void clear() {
        ComposerKt.a("Clear is not valid on OffsetApplier");
    }

    @Override // androidx.compose.runtime.Applier
    public final void d(int i2, int i3) {
        this.f8046a.d(i2 + (this.f8048c == 0 ? this.f8047b : 0), i3);
    }

    @Override // androidx.compose.runtime.Applier
    public final void e(int i2, Object obj) {
        this.f8046a.e(i2 + (this.f8048c == 0 ? this.f8047b : 0), obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void g(int i2, Object obj) {
        this.f8046a.g(i2 + (this.f8048c == 0 ? this.f8047b : 0), obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void h(Object obj) {
        this.f8048c++;
        this.f8046a.h(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void i() {
        this.f8046a.i();
    }

    @Override // androidx.compose.runtime.Applier
    public final void j() {
        if (!(this.f8048c > 0)) {
            ComposerKt.a("OffsetApplier up called with no corresponding down");
        }
        this.f8048c--;
        this.f8046a.j();
    }
}

package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Density;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/gestures/PressGestureScopeImpl;", "Landroidx/compose/foundation/gestures/PressGestureScope;", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/ui/unit/Density;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PressGestureScopeImpl implements PressGestureScope, Density {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Density f4651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4652c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutexImpl f4653e;

    public PressGestureScopeImpl(Density density) {
        this.f4651b = density;
        Symbol symbol = MutexKt.f75210a;
        this.f4653e = new MutexImpl(false);
    }

    @Override // androidx.compose.ui.unit.Density
    public final int B0(float f2) {
        return this.f4651b.B0(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float E0(long j2) {
        return this.f4651b.E0(j2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long K1(long j2) {
        return this.f4651b.K1(j2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    public final Object O(ContinuationImpl continuationImpl) {
        PressGestureScopeImpl$tryAwaitRelease$1 pressGestureScopeImpl$tryAwaitRelease$1;
        if (continuationImpl instanceof PressGestureScopeImpl$tryAwaitRelease$1) {
            pressGestureScopeImpl$tryAwaitRelease$1 = (PressGestureScopeImpl$tryAwaitRelease$1) continuationImpl;
            int i2 = pressGestureScopeImpl$tryAwaitRelease$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$tryAwaitRelease$1.d = i2 - Integer.MIN_VALUE;
            } else {
                pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, continuationImpl);
            }
        } else {
            pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, continuationImpl);
        }
        Object obj = pressGestureScopeImpl$tryAwaitRelease$1.f4656b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pressGestureScopeImpl$tryAwaitRelease$1.d;
        MutexImpl mutexImpl = this.f4653e;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (!this.f4652c && !this.d) {
                pressGestureScopeImpl$tryAwaitRelease$1.d = 1;
                if (mutexImpl.c(pressGestureScopeImpl$tryAwaitRelease$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Boolean.valueOf(this.f4652c);
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        mutexImpl.d(null);
        return Boolean.valueOf(this.f4652c);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long Q(float f2) {
        return this.f4651b.Q(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long R(long j2) {
        return this.f4651b.R(j2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float Z(long j2) {
        return this.f4651b.Z(j2);
    }

    public final void c() {
        this.d = true;
        MutexImpl mutexImpl = this.f4653e;
        if (mutexImpl.f()) {
            mutexImpl.d(null);
        }
    }

    public final void e() {
        this.f4652c = true;
        MutexImpl mutexImpl = this.f4653e;
        if (mutexImpl.f()) {
            mutexImpl.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(ContinuationImpl continuationImpl) {
        PressGestureScopeImpl$reset$1 pressGestureScopeImpl$reset$1;
        if (continuationImpl instanceof PressGestureScopeImpl$reset$1) {
            pressGestureScopeImpl$reset$1 = (PressGestureScopeImpl$reset$1) continuationImpl;
            int i2 = pressGestureScopeImpl$reset$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$reset$1.d = i2 - Integer.MIN_VALUE;
            } else {
                pressGestureScopeImpl$reset$1 = new PressGestureScopeImpl$reset$1(this, continuationImpl);
            }
        } else {
            pressGestureScopeImpl$reset$1 = new PressGestureScopeImpl$reset$1(this, continuationImpl);
        }
        Object obj = pressGestureScopeImpl$reset$1.f4654b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pressGestureScopeImpl$reset$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            pressGestureScopeImpl$reset$1.d = 1;
            if (this.f4653e.c(pressGestureScopeImpl$reset$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        this.f4652c = false;
        this.d = false;
        return Unit.f71739a;
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.f4651b.getF11002b();
    }

    @Override // androidx.compose.ui.unit.Density
    public final long j0(float f2) {
        return this.f4651b.j0(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float k1(int i2) {
        return this.f4651b.k1(i2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float l1(float f2) {
        return this.f4651b.l1(f2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.f4651b.getF11003c();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float u1(float f2) {
        return this.f4651b.u1(f2);
    }
}

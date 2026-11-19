package androidx.compose.runtime.internal;

import android.os.Trace;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.tooling.CompositionErrorContext;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/internal/RememberEventDispatcher;", "Landroidx/compose/runtime/composer/RememberManager;", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RememberEventDispatcher implements RememberManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Set f8393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CompositionErrorContext f8394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableVector f8395c;
    public MutableScatterSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MutableVector f8396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableVector f8397f;
    public final MutableVector g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MutableScatterSet f8398h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MutableScatterMap f8399i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f8400j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ScatterSet f8401k;

    public RememberEventDispatcher() {
        MutableVector mutableVector = new MutableVector(new RememberObserverHolder[16], 0);
        this.f8395c = mutableVector;
        this.d = ScatterSetKt.a();
        this.f8396e = mutableVector;
        this.f8397f = new MutableVector(new Object[16], 0);
        this.g = new MutableVector(new Function0[16], 0);
    }

    public static final boolean m(RememberObserverHolder rememberObserverHolder, MutableVector mutableVector) {
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            RememberObserver f8001a = ((RememberObserverHolder) objArr[i3]).getF8001a();
            if (f8001a instanceof PausedCompositionRemembers) {
                MutableVector mutableVector2 = ((PausedCompositionRemembers) f8001a).f8388c;
                if (mutableVector2.n(rememberObserverHolder) || m(rememberObserverHolder, mutableVector2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.runtime.composer.RememberManager
    public final void a(Function0 function0) {
        this.g.b(function0);
    }

    @Override // androidx.compose.runtime.composer.RememberManager
    public final void b(ComposeNodeLifecycleCallback composeNodeLifecycleCallback) {
        MutableScatterSet mutableScatterSetA = this.f8398h;
        if (mutableScatterSetA == null) {
            mutableScatterSetA = ScatterSetKt.a();
            this.f8398h = mutableScatterSetA;
        }
        mutableScatterSetA.l(composeNodeLifecycleCallback);
        this.f8397f.b(composeNodeLifecycleCallback);
    }

    @Override // androidx.compose.runtime.composer.RememberManager
    public final void c(ComposeNodeLifecycleCallback composeNodeLifecycleCallback) {
        this.f8397f.b(composeNodeLifecycleCallback);
    }

    @Override // androidx.compose.runtime.composer.RememberManager
    public final void d(RecomposeScopeImpl recomposeScopeImpl) {
        Set set = this.f8393a;
        if (set == null) {
            return;
        }
        PausedCompositionRemembers pausedCompositionRemembers = new PausedCompositionRemembers(set);
        MutableScatterMap mutableScatterMapB = this.f8399i;
        if (mutableScatterMapB == null) {
            mutableScatterMapB = ScatterMapKt.b();
            this.f8399i = mutableScatterMapB;
        }
        mutableScatterMapB.o(recomposeScopeImpl, pausedCompositionRemembers);
        this.f8396e.b(new GapRememberObserverHolder(pausedCompositionRemembers, -1));
    }

    @Override // androidx.compose.runtime.composer.RememberManager
    public final void e(RecomposeScopeImpl recomposeScopeImpl) {
        MutableVector mutableVector;
        MutableScatterMap mutableScatterMap = this.f8399i;
        if (mutableScatterMap == null || ((PausedCompositionRemembers) mutableScatterMap.e(recomposeScopeImpl)) == null) {
            return;
        }
        ArrayList arrayList = this.f8400j;
        if (arrayList != null && (mutableVector = (MutableVector) arrayList.remove(arrayList.size() - 1)) != null) {
            this.f8396e = mutableVector;
        }
        mutableScatterMap.m(recomposeScopeImpl);
    }

    @Override // androidx.compose.runtime.composer.RememberManager
    public final void f(RecomposeScopeImpl recomposeScopeImpl) {
        MutableScatterMap mutableScatterMap = this.f8399i;
        PausedCompositionRemembers pausedCompositionRemembers = mutableScatterMap != null ? (PausedCompositionRemembers) mutableScatterMap.e(recomposeScopeImpl) : null;
        if (pausedCompositionRemembers != null) {
            ArrayList arrayList = this.f8400j;
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f8400j = arrayList;
            }
            arrayList.add(this.f8396e);
            this.f8396e = pausedCompositionRemembers.f8388c;
        }
    }

    @Override // androidx.compose.runtime.composer.RememberManager
    public final void g(RememberObserverHolder rememberObserverHolder) {
        if (!this.d.a(rememberObserverHolder)) {
            ScatterSet scatterSet = this.f8401k;
            if (scatterSet == null || !scatterSet.a(rememberObserverHolder)) {
                this.f8397f.b(rememberObserverHolder);
                return;
            }
            return;
        }
        this.d.m(rememberObserverHolder);
        if (!this.f8396e.n(rememberObserverHolder)) {
            MutableVector mutableVector = this.f8395c;
            if (!mutableVector.n(rememberObserverHolder)) {
                m(rememberObserverHolder, mutableVector);
            }
        }
        Set set = this.f8393a;
        if (set == null) {
            return;
        }
        set.add(rememberObserverHolder.getF8001a());
    }

    @Override // androidx.compose.runtime.composer.RememberManager
    public final void h(RememberObserverHolder rememberObserverHolder) {
        this.f8396e.b(rememberObserverHolder);
        this.d.d(rememberObserverHolder);
    }

    public final void i() {
        this.f8393a = null;
        this.f8394b = null;
        MutableVector mutableVector = this.f8395c;
        mutableVector.j();
        this.d.f();
        this.f8396e = mutableVector;
        this.f8397f.j();
        this.g.j();
        this.f8398h = null;
        this.f8399i = null;
        this.f8400j = null;
    }

    public final void j() {
        Set set = this.f8393a;
        if (set == null || set.isEmpty()) {
            return;
        }
        Trace.beginSection("Compose:abandons");
        try {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                RememberObserver rememberObserver = (RememberObserver) it.next();
                it.remove();
                rememberObserver.f();
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x005d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k() {
        /*
            r6 = this;
            java.util.Set r0 = r6.f8393a
            if (r0 != 0) goto L6
            goto L9c
        L6:
            r1 = 0
            r6.f8401k = r1
            androidx.compose.runtime.collection.MutableVector r1 = r6.f8397f
            int r2 = r1.d
            if (r2 == 0) goto L62
            java.lang.String r2 = "Compose:onForgotten"
            android.os.Trace.beginSection(r2)
            androidx.collection.MutableScatterSet r2 = r6.f8398h     // Catch: java.lang.Throwable -> L5d
            int r3 = r1.d     // Catch: java.lang.Throwable -> L5d
            int r3 = r3 + (-1)
        L1a:
            r4 = -1
            if (r4 >= r3) goto L59
            java.lang.Object[] r4 = r1.f8165b     // Catch: java.lang.Throwable -> L5d
            r4 = r4[r3]     // Catch: java.lang.Throwable -> L5d
            boolean r5 = r4 instanceof androidx.compose.runtime.RememberObserverHolder     // Catch: java.lang.Throwable -> L33
            if (r5 == 0) goto L35
            r5 = r4
            androidx.compose.runtime.RememberObserverHolder r5 = (androidx.compose.runtime.RememberObserverHolder) r5     // Catch: java.lang.Throwable -> L33
            androidx.compose.runtime.RememberObserver r5 = r5.getF8001a()     // Catch: java.lang.Throwable -> L33
            r0.remove(r5)     // Catch: java.lang.Throwable -> L33
            r5.i()     // Catch: java.lang.Throwable -> L33
            goto L35
        L33:
            r0 = move-exception
            goto L51
        L35:
            boolean r5 = r4 instanceof androidx.compose.runtime.ComposeNodeLifecycleCallback     // Catch: java.lang.Throwable -> L33
            if (r5 == 0) goto L4e
            if (r2 == 0) goto L48
            boolean r5 = r2.a(r4)     // Catch: java.lang.Throwable -> L33
            if (r5 == 0) goto L48
            r5 = r4
            androidx.compose.runtime.ComposeNodeLifecycleCallback r5 = (androidx.compose.runtime.ComposeNodeLifecycleCallback) r5     // Catch: java.lang.Throwable -> L33
            r5.a()     // Catch: java.lang.Throwable -> L33
            goto L4e
        L48:
            r5 = r4
            androidx.compose.runtime.ComposeNodeLifecycleCallback r5 = (androidx.compose.runtime.ComposeNodeLifecycleCallback) r5     // Catch: java.lang.Throwable -> L33
            r5.d()     // Catch: java.lang.Throwable -> L33
        L4e:
            int r3 = r3 + (-1)
            goto L1a
        L51:
            androidx.compose.runtime.tooling.CompositionErrorContext r6 = r6.f8394b     // Catch: java.lang.Throwable -> L5d
            if (r6 == 0) goto L58
            r6.d(r4, r0)     // Catch: java.lang.Throwable -> L5d
        L58:
            throw r0     // Catch: java.lang.Throwable -> L5d
        L59:
            android.os.Trace.endSection()
            goto L62
        L5d:
            r6 = move-exception
            android.os.Trace.endSection()
            throw r6
        L62:
            androidx.compose.runtime.collection.MutableVector r0 = r6.f8395c
            int r1 = r0.d
            if (r1 == 0) goto L9c
            java.lang.String r1 = "Compose:onRemembered"
            android.os.Trace.beginSection(r1)
            java.util.Set r1 = r6.f8393a     // Catch: java.lang.Throwable -> L97
            if (r1 != 0) goto L72
            goto L93
        L72:
            java.lang.Object[] r2 = r0.f8165b     // Catch: java.lang.Throwable -> L97
            int r0 = r0.d     // Catch: java.lang.Throwable -> L97
            r3 = 0
        L77:
            if (r3 >= r0) goto L93
            r4 = r2[r3]     // Catch: java.lang.Throwable -> L97
            androidx.compose.runtime.RememberObserverHolder r4 = (androidx.compose.runtime.RememberObserverHolder) r4     // Catch: java.lang.Throwable -> L97
            androidx.compose.runtime.RememberObserver r5 = r4.getF8001a()     // Catch: java.lang.Throwable -> L97
            r1.remove(r5)     // Catch: java.lang.Throwable -> L97
            r5.d()     // Catch: java.lang.Throwable -> L8a
            int r3 = r3 + 1
            goto L77
        L8a:
            r0 = move-exception
            androidx.compose.runtime.tooling.CompositionErrorContext r6 = r6.f8394b     // Catch: java.lang.Throwable -> L97
            if (r6 == 0) goto L92
            r6.d(r4, r0)     // Catch: java.lang.Throwable -> L97
        L92:
            throw r0     // Catch: java.lang.Throwable -> L97
        L93:
            android.os.Trace.endSection()
            return
        L97:
            r6 = move-exception
            android.os.Trace.endSection()
            throw r6
        L9c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.internal.RememberEventDispatcher.k():void");
    }

    public final void l() {
        MutableVector mutableVector = this.g;
        if (mutableVector.d != 0) {
            Trace.beginSection("Compose:sideeffects");
            try {
                Object[] objArr = mutableVector.f8165b;
                int i2 = mutableVector.d;
                for (int i3 = 0; i3 < i2; i3++) {
                    ((Function0) objArr[i3]).mo47invoke();
                }
                mutableVector.j();
            } finally {
                Trace.endSection();
            }
        }
    }

    public final void n(Set set, CompositionErrorContextImpl compositionErrorContextImpl) {
        i();
        this.f8393a = set;
        this.f8394b = compositionErrorContextImpl;
    }
}

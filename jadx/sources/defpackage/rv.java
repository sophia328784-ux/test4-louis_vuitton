package defpackage;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.navigation.NavBackStackEntry;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rv implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79626c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79627e;

    public /* synthetic */ rv(NavBackStackEntry navBackStackEntry, SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f79625b = 26;
        this.f79626c = navBackStackEntry;
        this.f79627e = saveableStateHolder;
        this.d = composableLambdaImpl;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x021f  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r6v13 java.lang.Object, still in use, count: 2, list:
          (r6v13 java.lang.Object) from 0x021b: PHI (r6 I:??) = (r6v10 java.lang.Object), (r6v13 java.lang.Object) binds: [B:47:0x021a, B:180:0x021b] A[DONT_GENERATE, DONT_INLINE]
          (r6v13 java.lang.Object) from 0x0211: CHECK_CAST (com.vuitton.android.presentation.screen.orders.models.DeliveryStateUiModel) (r6v13 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // kotlin.jvm.functions.Function2
    public final java.lang.Object invoke(java.lang.Object r36, java.lang.Object r37) {
        /*
            Method dump skipped, instruction units count: 1786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rv.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ rv(int i2, int i3, Object obj, Object obj2, Object obj3) {
        this.f79625b = i3;
        this.f79626c = obj;
        this.d = obj2;
        this.f79627e = obj3;
    }

    public /* synthetic */ rv(Object obj, Object obj2, Object obj3, int i2) {
        this.f79625b = i2;
        this.f79626c = obj;
        this.d = obj2;
        this.f79627e = obj3;
    }
}

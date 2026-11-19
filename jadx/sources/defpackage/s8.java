package defpackage;

import androidx.compose.runtime.State;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s8 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79737c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79738e;

    public /* synthetic */ s8(Function0 function0, Function1 function1, State state) {
        this.f79736b = 10;
        this.d = function0;
        this.f79737c = function1;
        this.f79738e = state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v126 java.lang.Object, still in use, count: 2, list:
          (r1v126 java.lang.Object) from 0x023a: PHI (r1 I:??) = (r1v123 java.lang.Object), (r1v126 java.lang.Object) binds: [B:63:0x0239, B:313:0x023a] A[DONT_GENERATE, DONT_INLINE]
          (r1v126 java.lang.Object) from 0x0232: CHECK_CAST (com.vuitton.android.presentation.model.common.AssetUiModel) (r1v126 java.lang.Object)
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
    @Override // kotlin.jvm.functions.Function4
    public final java.lang.Object g(java.lang.Object r32, java.lang.Object r33, java.lang.Object r34, java.lang.Object r35) {
        /*
            Method dump skipped, instruction units count: 2738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s8.g(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ s8(Object obj, Object obj2, Object obj3, int i2) {
        this.f79736b = i2;
        this.f79737c = obj;
        this.d = obj2;
        this.f79738e = obj3;
    }

    public /* synthetic */ s8(int i2, Object obj, Object obj2, Function0 function0) {
        this.f79736b = i2;
        this.f79737c = obj;
        this.f79738e = obj2;
        this.d = function0;
    }
}

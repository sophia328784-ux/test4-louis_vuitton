package com.vuitton.android.presentation.screen.catalog.components;

import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f55311b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainNavigationState f55312c;
    public final /* synthetic */ CatalogViewState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CatalogTracker f55313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function2 f55314f;
    public final /* synthetic */ NavHostController g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f55315h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f55316i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function0 f55317j;

    public /* synthetic */ b(MainNavigationState mainNavigationState, CatalogTracker catalogTracker, Function2 function2, CatalogViewState catalogViewState, NavHostController navHostController, Function1 function1, Function0 function0, Function1 function3) {
        this.f55312c = mainNavigationState;
        this.f55313e = catalogTracker;
        this.f55314f = function2;
        this.d = catalogViewState;
        this.g = navHostController;
        this.f55315h = function1;
        this.f55317j = function0;
        this.f55316i = function3;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v39 java.lang.Object, still in use, count: 2, list:
          (r5v39 java.lang.Object) from 0x0075: PHI (r5 I:??) = (r5v36 java.lang.Object), (r5v39 java.lang.Object) binds: [B:16:0x0074, B:77:0x0075] A[DONT_GENERATE, DONT_INLINE]
          (r5v39 java.lang.Object) from 0x0069: CHECK_CAST (com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel) (r5v39 java.lang.Object)
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
    public final java.lang.Object g(java.lang.Object r20, java.lang.Object r21, java.lang.Object r22, java.lang.Object r23) {
        /*
            Method dump skipped, instruction units count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.catalog.components.b.g(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ b(MainNavigationState mainNavigationState, CatalogViewState catalogViewState, CatalogTracker catalogTracker, Function2 function2, NavHostController navHostController, Function1 function1, Function1 function3, Function0 function0) {
        this.f55312c = mainNavigationState;
        this.d = catalogViewState;
        this.f55313e = catalogTracker;
        this.f55314f = function2;
        this.g = navHostController;
        this.f55315h = function1;
        this.f55316i = function3;
        this.f55317j = function0;
    }
}

package com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$fetchThemes$1$1", f = "ThematicPlpViewModelImpl.kt", l = {200, 203, 208}, m = "invokeSuspend", v = 2)
final class ThematicPlpViewModelImpl$fetchThemes$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f55539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f55540c;
    public ThematicPlpViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CurrentThemeUiModel f55541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f55542f;
    public final /* synthetic */ ThematicPlpViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f55543h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f55544i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpViewModelImpl$fetchThemes$1$1(ThematicPlpViewModelImpl thematicPlpViewModelImpl, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.g = thematicPlpViewModelImpl;
        this.f55543h = str;
        this.f55544i = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpViewModelImpl$fetchThemes$1$1(this.g, this.f55543h, this.f55544i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpViewModelImpl$fetchThemes$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007c A[PHI: r4
      0x007c: PHI (r4v3 com.vuitton.android.domain.monitoring.MonitorAction) = (r4v2 com.vuitton.android.domain.monitoring.MonitorAction), (r4v4 com.vuitton.android.domain.monitoring.MonitorAction) binds: [B:13:0x0059, B:21:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:28:0x008d  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d4  */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0069, code lost:
    
        if (r13 == r3) goto L30;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$fetchThemes$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package com.vuitton.android.presentation.screen.aicompanion;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$addOrRemoveFromWishlist$1", f = "AICompanionViewModelImpl.kt", l = {357, 359, 368, 376, 379, 388}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$addOrRemoveFromWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f52742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AICompanionViewModelImpl f52743c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f52745f;
    public final /* synthetic */ AICompanionViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f52746h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$addOrRemoveFromWishlist$1(boolean z, AICompanionViewModelImpl aICompanionViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f52745f = z;
        this.g = aICompanionViewModelImpl;
        this.f52746h = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$addOrRemoveFromWishlist$1(this.f52745f, this.g, this.f52746h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$addOrRemoveFromWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x007a  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:35:0x0116 A[PHI: r4
      0x0116: PHI (r4v19 java.lang.Object) = (r4v15 java.lang.Object), (r4v15 java.lang.Object), (r4v23 java.lang.Object) binds: [B:31:0x00ed, B:33:0x0113, B:7:0x0026] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x011c  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d2, code lost:
    
        if (r2.u(r1, r19) == r3) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0139, code lost:
    
        if (r2.u(r5, r19) == r3) goto L39;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$addOrRemoveFromWishlist$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

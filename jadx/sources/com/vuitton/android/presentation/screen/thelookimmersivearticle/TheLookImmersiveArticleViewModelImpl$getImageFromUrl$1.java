package com.vuitton.android.presentation.screen.thelookimmersivearticle;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl$getImageFromUrl$1", f = "TheLookImmersiveArticleViewModelImpl.kt", l = {121, 124, 126, CertificateBody.profileType, 129}, m = "invokeSuspend", v = 2)
final class TheLookImmersiveArticleViewModelImpl$getImageFromUrl$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f65322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f65323c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f65324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f65325f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TheLookImmersiveArticleViewModelImpl f65326h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f65327i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TheLookImmersiveArticleViewModelImpl$getImageFromUrl$1(TheLookImmersiveArticleViewModelImpl theLookImmersiveArticleViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f65326h = theLookImmersiveArticleViewModelImpl;
        this.f65327i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TheLookImmersiveArticleViewModelImpl$getImageFromUrl$1 theLookImmersiveArticleViewModelImpl$getImageFromUrl$1 = new TheLookImmersiveArticleViewModelImpl$getImageFromUrl$1(this.f65326h, this.f65327i, continuation);
        theLookImmersiveArticleViewModelImpl$getImageFromUrl$1.g = obj;
        return theLookImmersiveArticleViewModelImpl$getImageFromUrl$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TheLookImmersiveArticleViewModelImpl$getImageFromUrl$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x010d A[Catch: all -> 0x0037, PHI: r0 r8 r10
      0x010d: PHI (r0v16 int) = (r0v15 int), (r0v15 int), (r0v18 int) binds: [B:51:0x00ed, B:53:0x00f3, B:57:0x010b] A[DONT_GENERATE, DONT_INLINE]
      0x010d: PHI (r8v10 long) = (r8v9 long), (r8v9 long), (r8v12 long) binds: [B:51:0x00ed, B:53:0x00f3, B:57:0x010b] A[DONT_GENERATE, DONT_INLINE]
      0x010d: PHI (r10v5 com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl) = 
      (r10v4 com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl)
      (r10v4 com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl)
      (r10v6 com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl)
     binds: [B:51:0x00ed, B:53:0x00f3, B:57:0x010b] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x0037, blocks: (B:13:0x0032, B:61:0x0123, B:62:0x0125, B:18:0x0046, B:58:0x010d, B:21:0x0057, B:52:0x00ef, B:54:0x00f5, B:24:0x0066, B:43:0x00ca, B:45:0x00ce, B:47:0x00d4, B:30:0x0085, B:31:0x0096, B:33:0x009c, B:35:0x00a2, B:37:0x00a6, B:39:0x00b5), top: B:78:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0122  */
    /* JADX WARN: Code duplicated, block: B:61:0x0123 A[Catch: all -> 0x0037, TryCatch #1 {all -> 0x0037, blocks: (B:13:0x0032, B:61:0x0123, B:62:0x0125, B:18:0x0046, B:58:0x010d, B:21:0x0057, B:52:0x00ef, B:54:0x00f5, B:24:0x0066, B:43:0x00ca, B:45:0x00ce, B:47:0x00d4, B:30:0x0085, B:31:0x0096, B:33:0x009c, B:35:0x00a2, B:37:0x00a6, B:39:0x00b5), top: B:78:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0125 A[Catch: all -> 0x0037, PHI: r5
      0x0125: PHI (r5v16 java.lang.Object) = (r5v15 java.lang.Object), (r5v17 java.lang.Object) binds: [B:57:0x010b, B:61:0x0123] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {all -> 0x0037, blocks: (B:13:0x0032, B:61:0x0123, B:62:0x0125, B:18:0x0046, B:58:0x010d, B:21:0x0057, B:52:0x00ef, B:54:0x00f5, B:24:0x0066, B:43:0x00ca, B:45:0x00ce, B:47:0x00d4, B:30:0x0085, B:31:0x0096, B:33:0x009c, B:35:0x00a2, B:37:0x00a6, B:39:0x00b5), top: B:78:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0135  */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0146, code lost:
    
        if (r0.emit(null, r16) == r4) goto L69;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl$getImageFromUrl$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

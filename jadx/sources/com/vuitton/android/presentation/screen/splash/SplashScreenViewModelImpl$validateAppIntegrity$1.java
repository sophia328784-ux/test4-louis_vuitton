package com.vuitton.android.presentation.screen.splash;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$validateAppIntegrity$1", f = "SplashScreenViewModelImpl.kt", l = {186, 188, 191, 193, 194, 195, 196, 197, 198, 199, 200, 213}, m = "invokeSuspend", v = 2)
final class SplashScreenViewModelImpl$validateAppIntegrity$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SplashScreenAction f64520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64521c;
    public final /* synthetic */ SplashScreenViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f64522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AutomatedTestConfig f64523f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewModelImpl$validateAppIntegrity$1(SplashScreenViewModelImpl splashScreenViewModelImpl, String str, AutomatedTestConfig automatedTestConfig, Continuation continuation) {
        super(2, continuation);
        this.d = splashScreenViewModelImpl;
        this.f64522e = str;
        this.f64523f = automatedTestConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SplashScreenViewModelImpl$validateAppIntegrity$1(this.d, this.f64522e, this.f64523f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SplashScreenViewModelImpl$validateAppIntegrity$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0068  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077  */
    /* JADX WARN: Code duplicated, block: B:31:0x0083  */
    /* JADX WARN: Code duplicated, block: B:34:0x008e A[PHI: r10
      0x008e: PHI (r10v9 java.lang.Object) = (r10v7 java.lang.Object), (r10v0 java.lang.Object) binds: [B:32:0x008a, B:14:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x0092  */
    /* JADX WARN: Code duplicated, block: B:39:0x009d A[PHI: r10
      0x009d: PHI (r10v13 java.lang.Object) = (r10v12 java.lang.Object), (r10v0 java.lang.Object) binds: [B:37:0x0099, B:13:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ac A[PHI: r10
      0x00ac: PHI (r10v17 java.lang.Object) = (r10v16 java.lang.Object), (r10v0 java.lang.Object) binds: [B:42:0x00a8, B:12:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c0 A[PHI: r10
      0x00c0: PHI (r10v22 java.lang.Object) = (r10v21 java.lang.Object), (r10v0 java.lang.Object) binds: [B:47:0x00bc, B:11:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cf A[PHI: r10
      0x00cf: PHI (r10v26 java.lang.Object) = (r10v25 java.lang.Object), (r10v0 java.lang.Object) binds: [B:52:0x00cc, B:10:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00de A[PHI: r10
      0x00de: PHI (r10v30 java.lang.Object) = (r10v29 java.lang.Object), (r10v0 java.lang.Object) binds: [B:57:0x00db, B:9:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:61:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ed A[PHI: r10
      0x00ed: PHI (r10v34 java.lang.Object) = (r10v33 java.lang.Object), (r10v0 java.lang.Object) binds: [B:62:0x00ea, B:8:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:72:0x0107 A[PHI: r10
      0x0107: PHI (r10v38 com.vuitton.android.presentation.screen.splash.SplashScreenAction) = 
      (r10v10 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
      (r10v14 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
      (r10v18 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
      (r10v23 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
      (r10v27 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
      (r10v31 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
      (r10v35 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
      (r10v40 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
      (r10v41 com.vuitton.android.presentation.screen.splash.SplashScreenAction)
     binds: [B:35:0x0090, B:40:0x009f, B:45:0x00ae, B:50:0x00c2, B:55:0x00d1, B:60:0x00e0, B:65:0x00ef, B:70:0x00fe, B:71:0x0100] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:74:0x0120  */
    /* JADX WARN: Code duplicated, block: B:78:0x0139  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0070, code lost:
    
        if (com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl.yc(r6, r10, r9) == r0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f9, code lost:
    
        if (r10 == r0) goto L77;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$validateAppIntegrity$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

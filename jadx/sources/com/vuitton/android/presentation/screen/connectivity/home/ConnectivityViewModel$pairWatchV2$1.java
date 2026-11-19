package com.vuitton.android.presentation.screen.connectivity.home;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\n"}, d2 = {"<anonymous>", "", "it", "Ljava/lang/Exception;", "Lkotlin/Exception;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$pairWatchV2$1", f = "ConnectivityViewModel.kt", l = {140, 148}, m = "invokeSuspend", v = 2)
final class ConnectivityViewModel$pairWatchV2$1 extends SuspendLambda implements Function2<Exception, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56092c;
    public final /* synthetic */ ConnectivityViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityViewModel$pairWatchV2$1(ConnectivityViewModel connectivityViewModel, Continuation continuation) {
        super(2, continuation);
        this.d = connectivityViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ConnectivityViewModel$pairWatchV2$1 connectivityViewModel$pairWatchV2$1 = new ConnectivityViewModel$pairWatchV2$1(this.d, continuation);
        connectivityViewModel$pairWatchV2$1.f56092c = obj;
        return connectivityViewModel$pairWatchV2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivityViewModel$pairWatchV2$1) create((Exception) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0078, code lost:
    
        if (r3.zc(r8, r9) == r1) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = r8.f56092c
            java.lang.Exception r0 = (java.lang.Exception) r0
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r8.f56091b
            com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel r3 = r8.d
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L23
            if (r2 == r5) goto L1d
            if (r2 != r4) goto L17
            kotlin.ResultKt.b(r9)
            goto L7b
        L17:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r6
        L1d:
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L21
            goto L55
        L21:
            r9 = move-exception
            goto L5a
        L23:
            kotlin.ResultKt.b(r9)
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L21
            r0.getClass()     // Catch: java.lang.Throwable -> L21
            retrofit2.HttpException r0 = (retrofit2.HttpException) r0     // Catch: java.lang.Throwable -> L21
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L21
            retrofit2.Response r2 = r0.d     // Catch: java.lang.Throwable -> L21
            if (r2 == 0) goto L36
            okhttp3.ResponseBody r2 = r2.f79451c     // Catch: java.lang.Throwable -> L21
            goto L37
        L36:
            r2 = r6
        L37:
            r2.getClass()     // Catch: java.lang.Throwable -> L21
            java.lang.String r2 = r2.string()     // Catch: java.lang.Throwable -> L21
            r9.<init>(r2)     // Catch: java.lang.Throwable -> L21
            vg r2 = new vg     // Catch: java.lang.Throwable -> L21
            r7 = 19
            r2.<init>(r9, r0, r7)     // Catch: java.lang.Throwable -> L21
            r8.f56092c = r6     // Catch: java.lang.Throwable -> L21
            r8.f56091b = r5     // Catch: java.lang.Throwable -> L21
            int r9 = com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel.o     // Catch: java.lang.Throwable -> L21
            java.lang.Object r9 = r3.zc(r8, r2)     // Catch: java.lang.Throwable -> L21
            if (r9 != r1) goto L55
            goto L7a
        L55:
            kotlin.Unit r9 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L21
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L21
            goto L62
        L5a:
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r0 = new kotlin.Result$Failure
            r0.<init>(r9)
            r9 = r0
        L62:
            java.lang.Throwable r9 = kotlin.Result.a(r9)
            if (r9 != 0) goto L69
            goto L7b
        L69:
            bp r9 = new bp
            r9.<init>(r4)
            r8.f56092c = r6
            r8.f56091b = r4
            int r0 = com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel.o
            java.lang.Object r8 = r3.zc(r8, r9)
            if (r8 != r1) goto L7b
        L7a:
            return r1
        L7b:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$pairWatchV2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

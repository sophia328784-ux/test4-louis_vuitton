package com.vuitton.android.presentation.screen.account.userworldwideid;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModelImpl$checkStoreModeAccess$1", f = "UserWorldwideIdViewModelImpl.kt", l = {84, 85, 94, 107}, m = "invokeSuspend", v = 2)
final class UserWorldwideIdViewModelImpl$checkStoreModeAccess$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$IntRef f52698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f52699c;
    public UserWorldwideIdViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52700e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ UserWorldwideIdViewModelImpl f52701f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserWorldwideIdViewModelImpl$checkStoreModeAccess$1(UserWorldwideIdViewModelImpl userWorldwideIdViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52701f = userWorldwideIdViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UserWorldwideIdViewModelImpl$checkStoreModeAccess$1(this.f52701f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((UserWorldwideIdViewModelImpl$checkStoreModeAccess$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:35|59|36|(5:38|(2:40|(1:42))(1:45)|49|(1:51)|52)(2:46|47)|43|44|48|49|(1:51)|52) */
    /* JADX WARN: Code duplicated, block: B:22:0x0056  */
    /* JADX WARN: Code duplicated, block: B:25:0x0062  */
    /* JADX WARN: Code duplicated, block: B:28:0x006b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0085  */
    /* JADX WARN: Code duplicated, block: B:35:0x0091  */
    /* JADX WARN: Code duplicated, block: B:38:0x009b A[Catch: Exception -> 0x00c4, TryCatch #1 {Exception -> 0x00c4, blocks: (B:36:0x0094, B:38:0x009b, B:40:0x00ae, B:45:0x00c7, B:46:0x00d3, B:47:0x00d8), top: B:59:0x0094 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00ae A[Catch: Exception -> 0x00c4, TryCatch #1 {Exception -> 0x00c4, blocks: (B:36:0x0094, B:38:0x009b, B:40:0x00ae, B:45:0x00c7, B:46:0x00d3, B:47:0x00d8), top: B:59:0x0094 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c7 A[Catch: Exception -> 0x00c4, TryCatch #1 {Exception -> 0x00c4, blocks: (B:36:0x0094, B:38:0x009b, B:40:0x00ae, B:45:0x00c7, B:46:0x00d3, B:47:0x00d8), top: B:59:0x0094 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00d3 A[Catch: Exception -> 0x00c4, TryCatch #1 {Exception -> 0x00c4, blocks: (B:36:0x0094, B:38:0x009b, B:40:0x00ae, B:45:0x00c7, B:46:0x00d3, B:47:0x00d8), top: B:59:0x0094 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ec A[PHI: r8 r9
      0x00ec: PHI (r8v0 java.lang.Object) = 
      (r8v2 java.lang.Object)
      (r8v3 java.lang.Object)
      (r8v3 java.lang.Object)
      (r8v3 java.lang.Object)
      (r8v7 java.lang.Object)
     binds: [B:48:0x00d9, B:34:0x008f, B:45:0x00c7, B:41:0x00c1, B:13:0x0028] A[DONT_GENERATE, DONT_INLINE]
      0x00ec: PHI (r9v0 kotlin.jvm.internal.Ref$IntRef) = 
      (r9v1 kotlin.jvm.internal.Ref$IntRef)
      (r9v2 kotlin.jvm.internal.Ref$IntRef)
      (r9v2 kotlin.jvm.internal.Ref$IntRef)
      (r9v2 kotlin.jvm.internal.Ref$IntRef)
      (r9v3 kotlin.jvm.internal.Ref$IntRef)
     binds: [B:48:0x00d9, B:34:0x008f, B:45:0x00c7, B:41:0x00c1, B:13:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:55:0x0109  */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0106, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(15000, r12) == r0) goto L54;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0106 -> B:9:0x001a). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModelImpl$checkStoreModeAccess$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

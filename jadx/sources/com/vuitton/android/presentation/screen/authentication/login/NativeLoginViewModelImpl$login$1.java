package com.vuitton.android.presentation.screen.authentication.login;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$login$1", f = "NativeLoginViewModelImpl.kt", l = {148, 149, 150, 151, 154, 163, 170}, m = "invokeSuspend", v = 2)
final class NativeLoginViewModelImpl$login$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NativeLoginViewModelImpl f53614c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f53615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ NativeLoginUiModel f53616f;
    public final /* synthetic */ NativeLoginViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f53617h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeLoginViewModelImpl$login$1(NativeLoginUiModel nativeLoginUiModel, NativeLoginViewModelImpl nativeLoginViewModelImpl, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f53616f = nativeLoginUiModel;
        this.g = nativeLoginViewModelImpl;
        this.f53617h = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeLoginViewModelImpl$login$1(this.f53616f, this.g, this.f53617h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeLoginViewModelImpl$login$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:24:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:28:0x0100 A[PHI: r3 r5 r10
      0x0100: PHI (r3v14 int) = (r3v12 int), (r3v15 int) binds: [B:26:0x00fc, B:10:0x003f] A[DONT_GENERATE, DONT_INLINE]
      0x0100: PHI (r5v18 com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl) = 
      (r5v16 com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl)
      (r5v19 com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl)
     binds: [B:26:0x00fc, B:10:0x003f] A[DONT_GENERATE, DONT_INLINE]
      0x0100: PHI (r10v9 java.lang.Object) = (r10v7 java.lang.Object), (r10v10 java.lang.Object) binds: [B:26:0x00fc, B:10:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x0138 A[PHI: r3
      0x0138: PHI (r3v19 java.lang.Object) = (r3v7 java.lang.Object), (r3v17 java.lang.Object), (r3v24 java.lang.Object) binds: [B:20:0x00d5, B:32:0x0134, B:7:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x013e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0154  */
    /* JADX WARN: Code duplicated, block: B:40:0x015c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0162  */
    /* JADX WARN: Code duplicated, block: B:44:0x016f  */
    /* JADX WARN: Code duplicated, block: B:46:0x0177  */
    /* JADX WARN: Code duplicated, block: B:50:0x0196  */
    /* JADX WARN: Code duplicated, block: B:9:0x0037 A[PHI: r3 r5 r10
      0x0037: PHI (r3v16 int) = (r3v14 int), (r3v18 int) binds: [B:29:0x0111, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]
      0x0037: PHI (r5v20 com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl) = 
      (r5v18 com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl)
      (r5v25 com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl)
     binds: [B:29:0x0111, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]
      0x0037: PHI (r10v11 java.lang.Object) = (r10v9 java.lang.Object), (r10v14 java.lang.Object) binds: [B:29:0x0111, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0193, code lost:
    
        if (r11.u(r1, r19) == r4) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01b5, code lost:
    
        if (r11.u(r1, r19) == r4) goto L52;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$login$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

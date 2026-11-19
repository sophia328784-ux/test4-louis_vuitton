package com.vuitton.android.presentation.screen.authentication.register;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$redirectToEarlierStep$1", f = "NativeRegisterViewModelImpl.kt", l = {593, 600, 612, 621}, m = "invokeSuspend", v = 2)
final class NativeRegisterViewModelImpl$redirectToEarlierStep$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f53784c;
    public final /* synthetic */ NativeRegisterViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$redirectToEarlierStep$1(List list, NativeRegisterViewModelImpl nativeRegisterViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f53784c = list;
        this.d = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterViewModelImpl$redirectToEarlierStep$1(this.f53784c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterViewModelImpl$redirectToEarlierStep$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0168, code lost:
    
        if (r11.emit(r3, r10) == r0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x016a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009c, code lost:
    
        if (r11.emit(r2, r10) == r0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d7, code lost:
    
        if (r11.emit(r2, r10) == r0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0126, code lost:
    
        if (r11.emit(r2, r10) == r0) goto L106;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$redirectToEarlierStep$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package com.vuitton.android.presentation.screen.authentication.register;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl", f = "NativeRegisterViewModelImpl.kt", l = {739}, m = "loadCredentialsForm", v = 2)
final class NativeRegisterViewModelImpl$loadCredentialsForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModelImpl f53770c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$loadCredentialsForm$1(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53770c = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53769b = obj;
        this.d |= Integer.MIN_VALUE;
        return NativeRegisterViewModelImpl.Dc(this.f53770c, this);
    }
}

package com.vuitton.android.presentation.screen.authentication.login;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl", f = "NativeLoginViewModelImpl.kt", l = {284}, m = "updateContactId", v = 2)
final class NativeLoginViewModelImpl$updateContactId$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeLoginViewModelImpl f53623c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeLoginViewModelImpl$updateContactId$1(NativeLoginViewModelImpl nativeLoginViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53623c = nativeLoginViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53622b = obj;
        this.d |= Integer.MIN_VALUE;
        return NativeLoginViewModelImpl.yc(this.f53623c, this);
    }
}

package com.vuitton.android.presentation.screen.authentication.register;

import com.sightcall.uvc.Camera;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl", f = "NativeRegisterViewModelImpl.kt", l = {639, Camera.DEFAULT_PREVIEW_WIDTH}, m = "initiateRegistration-IoAF18A", v = 2)
final class NativeRegisterViewModelImpl$initiateRegistration$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModelImpl f53752c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$initiateRegistration$1(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53752c = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53751b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objZc = NativeRegisterViewModelImpl.zc(this.f53752c, this);
        return objZc == CoroutineSingletons.COROUTINE_SUSPENDED ? objZc : new Result(objZc);
    }
}

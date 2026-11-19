package com.vuitton.android.presentation.screen.certificates.diamonds.add;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl", f = "AddCertificateViewModelImpl.kt", l = {232}, m = "addChinaConsent-IoAF18A", v = 2)
final class AddCertificateViewModelImpl$addChinaConsent$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f55763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddCertificateViewModelImpl f55764c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddCertificateViewModelImpl$addChinaConsent$1(AddCertificateViewModelImpl addCertificateViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f55764c = addCertificateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f55763b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objYc = AddCertificateViewModelImpl.yc(this.f55764c, this);
        return objYc == CoroutineSingletons.COROUTINE_SUSPENDED ? objYc : new Result(objYc);
    }
}

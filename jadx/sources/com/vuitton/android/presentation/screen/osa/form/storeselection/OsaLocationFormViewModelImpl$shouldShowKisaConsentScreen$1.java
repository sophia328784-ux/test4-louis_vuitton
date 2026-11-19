package com.vuitton.android.presentation.screen.osa.form.storeselection;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl", f = "OsaLocationFormViewModelImpl.kt", l = {639, 639, 643, 647}, m = "shouldShowKisaConsentScreen", v = 2)
final class OsaLocationFormViewModelImpl$shouldShowKisaConsentScreen$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f60789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModelImpl f60790c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$shouldShowKisaConsentScreen$1(OsaLocationFormViewModelImpl osaLocationFormViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f60790c = osaLocationFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60789b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f60790c.r2(this);
    }
}

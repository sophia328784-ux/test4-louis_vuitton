package com.vuitton.android.presentation.screen.options;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl", f = "OptionsViewModelImpl.kt", l = {155}, m = "initUiTestMode", v = 2)
final class OptionsViewModelImpl$initUiTestMode$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f59656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f59657c;
    public final /* synthetic */ OptionsViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f59658e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsViewModelImpl$initUiTestMode$1(OptionsViewModelImpl optionsViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = optionsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f59657c = obj;
        this.f59658e |= Integer.MIN_VALUE;
        return OptionsViewModelImpl.zc(this.d, this);
    }
}

package com.vuitton.android.presentation.screen.options;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl", f = "OptionsViewModelImpl.kt", l = {145, 146}, m = "initFlags", v = 2)
final class OptionsViewModelImpl$initFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f59653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f59654c;
    public final /* synthetic */ OptionsViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f59655e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsViewModelImpl$initFlags$1(OptionsViewModelImpl optionsViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = optionsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f59654c = obj;
        this.f59655e |= Integer.MIN_VALUE;
        return OptionsViewModelImpl.yc(this.d, this);
    }
}

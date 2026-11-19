package com.vuitton.android.presentation.screen.distantrepairs.form;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl", f = "DistantRepairFormBffViewModelImpl.kt", l = {208, 214}, m = "loadCareServiceForm", v = 2)
final class DistantRepairFormBffViewModelImpl$loadCareServiceForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f57122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormBffViewModelImpl f57123c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormBffViewModelImpl$loadCareServiceForm$1(DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57123c = distantRepairFormBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57122b = obj;
        this.d |= Integer.MIN_VALUE;
        return DistantRepairFormBffViewModelImpl.zc(this.f57123c, this);
    }
}

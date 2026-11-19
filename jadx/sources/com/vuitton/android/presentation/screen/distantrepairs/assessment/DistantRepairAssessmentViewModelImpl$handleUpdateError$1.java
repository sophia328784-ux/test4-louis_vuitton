package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl", f = "DistantRepairAssessmentViewModelImpl.kt", l = {632}, m = "handleUpdateError", v = 2)
final class DistantRepairAssessmentViewModelImpl$handleUpdateError$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f56930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56931c;
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f56932e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$handleUpdateError$1(DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = distantRepairAssessmentViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f56931c = obj;
        this.f56932e |= Integer.MIN_VALUE;
        int i2 = DistantRepairAssessmentViewModelImpl.R;
        return this.d.Dc(false, this);
    }
}

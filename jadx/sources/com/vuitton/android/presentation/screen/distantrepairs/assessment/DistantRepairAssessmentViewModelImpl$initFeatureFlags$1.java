package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl", f = "DistantRepairAssessmentViewModelImpl.kt", l = {215, 220, 225}, m = "initFeatureFlags", v = 2)
final class DistantRepairAssessmentViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f56933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f56934c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f56935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56936f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$initFeatureFlags$1(DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f56936f = distantRepairAssessmentViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f56935e = obj;
        this.g |= Integer.MIN_VALUE;
        return DistantRepairAssessmentViewModelImpl.zc(this.f56936f, this);
    }
}

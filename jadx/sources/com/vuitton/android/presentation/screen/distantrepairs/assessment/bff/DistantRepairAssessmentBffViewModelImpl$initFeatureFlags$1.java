package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.math.Primes;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {206, Primes.SMALL_FACTOR_LIMIT, 216}, m = "initFeatureFlags", v = 2)
final class DistantRepairAssessmentBffViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f56996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f56997c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f56998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f56999f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentBffViewModelImpl$initFeatureFlags$1(DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f56999f = distantRepairAssessmentBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f56998e = obj;
        this.g |= Integer.MIN_VALUE;
        return DistantRepairAssessmentBffViewModelImpl.Ac(this.f56999f, this);
    }
}

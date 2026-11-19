package com.vuitton.android.domain.usecase.aicompanion;

import com.vuitton.android.domain.repository.AICompanionRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;", "", "Lcom/vuitton/android/domain/repository/AICompanionRepository;", "aiCompanionRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AICompanionRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateAITooltipVisibilityUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AICompanionRepository f49170a;

    @Inject
    public UpdateAITooltipVisibilityUseCase(AICompanionRepository aICompanionRepository) {
        aICompanionRepository.getClass();
        this.f49170a = aICompanionRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(boolean z, ContinuationImpl continuationImpl) {
        UpdateAITooltipVisibilityUseCase$run$1 updateAITooltipVisibilityUseCase$run$1;
        if (continuationImpl instanceof UpdateAITooltipVisibilityUseCase$run$1) {
            updateAITooltipVisibilityUseCase$run$1 = (UpdateAITooltipVisibilityUseCase$run$1) continuationImpl;
            int i2 = updateAITooltipVisibilityUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                updateAITooltipVisibilityUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                updateAITooltipVisibilityUseCase$run$1 = new UpdateAITooltipVisibilityUseCase$run$1(this, continuationImpl);
            }
        } else {
            updateAITooltipVisibilityUseCase$run$1 = new UpdateAITooltipVisibilityUseCase$run$1(this, continuationImpl);
        }
        Object obj = updateAITooltipVisibilityUseCase$run$1.f49171b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = updateAITooltipVisibilityUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            updateAITooltipVisibilityUseCase$run$1.d = 1;
            Object objG = this.f49170a.g(z);
            return objG == coroutineSingletons ? coroutineSingletons : objG;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}

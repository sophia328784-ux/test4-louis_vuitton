package com.vuitton.android.domain.usecase.automatedtest;

import com.vuitton.android.domain.repository.AutomatedTestRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;", "", "Lcom/vuitton/android/domain/repository/AutomatedTestRepository;", "automatedTestRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AutomatedTestRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SetUiTestModeUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AutomatedTestRepository f49441a;

    @Inject
    public SetUiTestModeUseCase(AutomatedTestRepository automatedTestRepository) {
        automatedTestRepository.getClass();
        this.f49441a = automatedTestRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(boolean z, ContinuationImpl continuationImpl) {
        SetUiTestModeUseCase$run$1 setUiTestModeUseCase$run$1;
        if (continuationImpl instanceof SetUiTestModeUseCase$run$1) {
            setUiTestModeUseCase$run$1 = (SetUiTestModeUseCase$run$1) continuationImpl;
            int i2 = setUiTestModeUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                setUiTestModeUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                setUiTestModeUseCase$run$1 = new SetUiTestModeUseCase$run$1(this, continuationImpl);
            }
        } else {
            setUiTestModeUseCase$run$1 = new SetUiTestModeUseCase$run$1(this, continuationImpl);
        }
        Object obj = setUiTestModeUseCase$run$1.f49442b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = setUiTestModeUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            if (i3 == 2) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        AutomatedTestRepository automatedTestRepository = this.f49441a;
        if (z) {
            setUiTestModeUseCase$run$1.d = 1;
            Result.Failure failureC = automatedTestRepository.c();
            if (failureC != coroutineSingletons) {
                return failureC;
            }
        } else {
            setUiTestModeUseCase$run$1.d = 2;
            Result.Failure failureB = automatedTestRepository.b();
            if (failureB != coroutineSingletons) {
                return failureB;
            }
        }
        return coroutineSingletons;
    }
}

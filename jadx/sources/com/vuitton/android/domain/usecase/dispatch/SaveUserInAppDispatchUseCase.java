package com.vuitton.android.domain.usecase.dispatch;

import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.android.domain.service.localization.LanguageManager;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagBcp47;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;", "", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "inAppDispatchRepository", "Lcom/vuitton/android/domain/service/localization/LanguageManager;", "languageManager", "<init>", "(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/service/localization/LanguageManager;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SaveUserInAppDispatchUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatchRepository f49913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LanguageManager f49914b;

    @Inject
    public SaveUserInAppDispatchUseCase(InAppDispatchRepository inAppDispatchRepository, LanguageManager languageManager) {
        inAppDispatchRepository.getClass();
        languageManager.getClass();
        this.f49913a = inAppDispatchRepository;
        this.f49914b = languageManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(InAppDispatch inAppDispatch, ContinuationImpl continuationImpl) {
        SaveUserInAppDispatchUseCase$run$1 saveUserInAppDispatchUseCase$run$1;
        Object objD;
        if (continuationImpl instanceof SaveUserInAppDispatchUseCase$run$1) {
            saveUserInAppDispatchUseCase$run$1 = (SaveUserInAppDispatchUseCase$run$1) continuationImpl;
            int i2 = saveUserInAppDispatchUseCase$run$1.f49917e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                saveUserInAppDispatchUseCase$run$1.f49917e = i2 - Integer.MIN_VALUE;
            } else {
                saveUserInAppDispatchUseCase$run$1 = new SaveUserInAppDispatchUseCase$run$1(this, continuationImpl);
            }
        } else {
            saveUserInAppDispatchUseCase$run$1 = new SaveUserInAppDispatchUseCase$run$1(this, continuationImpl);
        }
        Object obj = saveUserInAppDispatchUseCase$run$1.f49916c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = saveUserInAppDispatchUseCase$run$1.f49917e;
        if (i3 == 0) {
            ResultKt.b(obj);
            saveUserInAppDispatchUseCase$run$1.f49915b = inAppDispatch;
            saveUserInAppDispatchUseCase$run$1.f49917e = 1;
            objD = this.f49913a.d(inAppDispatch, saveUserInAppDispatchUseCase$run$1);
            if (objD == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            inAppDispatch = saveUserInAppDispatchUseCase$run$1.f49915b;
            ResultKt.b(obj);
            objD = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objD instanceof Result.Failure) {
            return objD;
        }
        this.f49914b.a(CollectionsKt.O(new LanguageTagBcp47(inAppDispatch.d.h())));
        return Unit.f71739a;
    }
}

package com.vuitton.android.domain.usecase.audioguide;

import com.vuitton.android.domain.repository.AudioGuideRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;", "", "Lcom/vuitton/android/domain/repository/AudioGuideRepository;", "audioGuideRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AudioGuideRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetAccessDataUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioGuideRepository f49304a;

    @Inject
    public GetAccessDataUseCase(AudioGuideRepository audioGuideRepository) {
        audioGuideRepository.getClass();
        this.f49304a = audioGuideRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0078, code lost:
    
        if (r9.h(r0) == r1) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase$run$1) r0
            int r1 = r0.f49307e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49307e = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase$run$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.f49306c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49307e
            r3 = 0
            com.vuitton.android.domain.repository.AudioGuideRepository r9 = r9.f49304a
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L42
            if (r2 == r5) goto L38
            if (r2 != r4) goto L32
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            r10.getClass()
            goto L7b
        L32:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r3
        L38:
            long r5 = r0.f49305b
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r10 = r10.f71708b
            goto L5b
        L42:
            kotlin.ResultKt.b(r10)
            kotlin.time.Clock r10 = kotlin.time.InstantJvmKt.f74578a
            kotlin.time.Instant r10 = r10.now()
            long r6 = r10.a()
            r0.f49305b = r6
            r0.f49307e = r5
            java.lang.Object r10 = r9.b(r0)
            if (r10 != r1) goto L5a
            goto L7a
        L5a:
            r5 = r6
        L5b:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r10 instanceof kotlin.Result.Failure
            if (r2 == 0) goto L62
            goto L63
        L62:
            r3 = r10
        L63:
            com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData r3 = (com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData) r3
            if (r3 == 0) goto L6e
            long r7 = r3.f66572b
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 <= 0) goto L6e
            return r3
        L6e:
            if (r3 == 0) goto L7b
            r0.f49305b = r5
            r0.f49307e = r4
            java.lang.Object r9 = r9.h(r0)
            if (r9 != r1) goto L7b
        L7a:
            return r1
        L7b:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            java.lang.Exception r9 = new java.lang.Exception
            java.lang.String r10 = "No Audio guide accessible."
            r9.<init>(r10)
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

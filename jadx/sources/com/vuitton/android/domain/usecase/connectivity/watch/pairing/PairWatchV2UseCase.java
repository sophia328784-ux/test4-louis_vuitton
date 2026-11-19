package com.vuitton.android.domain.usecase.connectivity.watch.pairing;

import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PairWatchV2UseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f49846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WatchRepository f49848c;

    @Inject
    public PairWatchV2UseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, WatchRepository watchRepository) {
        requireUserInAppDispatchUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        watchRepository.getClass();
        this.f49846a = requireUserInAppDispatchUseCase;
        this.f49847b = requireCachedAppConfigUseCase;
        this.f49848c = watchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b0, code lost:
    
        if (r5.f(r2, r10, 2, r0) == r1) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2 r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase$run$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase$run$1 r0 = (com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase$run$1) r0
            int r1 = r0.f49853h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49853h = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase$run$1 r0 = new com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase$run$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f49852f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49853h
            r3 = 3
            r4 = 1
            com.vuitton.android.domain.repository.WatchRepository r5 = r8.f49848c
            r6 = 2
            r7 = 0
            if (r2 == 0) goto L55
            if (r2 == r4) goto L4c
            if (r2 == r6) goto L3b
            if (r2 != r3) goto L35
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r8 = r10.f71708b
            goto Lb3
        L35:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r7
        L3b:
            int r8 = r0.f49851e
            int r9 = r0.d
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r2 = r0.f49850c
            com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2 r4 = r0.f49849b
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            r10.getClass()
            goto La0
        L4c:
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r8 = r0.f49850c
            com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2 r9 = r0.f49849b
            kotlin.ResultKt.b(r10)
            r2 = r8
            goto L74
        L55:
            kotlin.ResultKt.b(r10)
            com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase r10 = r8.f49846a
            com.vuitton.android.domain.repository.InAppDispatchRepository r10 = r10.f49912a
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r10 = r10.b()
            com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase r8 = r8.f49847b
            r8.a()
            r0.f49849b = r9
            r0.f49850c = r10
            r0.f49853h = r4
            java.lang.Object r8 = r5.g(r10, r9, r0)
            if (r8 != r1) goto L72
            goto Lb2
        L72:
            r2 = r10
            r10 = r8
        L74:
            com.vuitton.foundation.model.domain.model.connectivity.Watch r10 = (com.vuitton.foundation.model.domain.model.connectivity.Watch) r10
            java.lang.String r8 = r10.f67300a
            java.lang.String r10 = r10.d
            kotlin.Pair r4 = new kotlin.Pair
            r4.<init>(r8, r10)
            java.lang.Object r8 = r4.f71705b
            if (r8 == 0) goto Lb5
            java.lang.Object r10 = r4.f71706c
            if (r10 == 0) goto Lb5
            java.lang.String r10 = (java.lang.String) r10
            java.lang.String r8 = (java.lang.String) r8
            r0.f49849b = r9
            r0.f49850c = r2
            r4 = 0
            r0.d = r4
            r0.f49851e = r4
            r0.f49853h = r6
            java.lang.Object r8 = r5.e(r8, r10, r0)
            if (r8 != r1) goto L9d
            goto Lb2
        L9d:
            r8 = r4
            r4 = r9
            r9 = r8
        La0:
            java.lang.String r10 = r4.f67386a
            r0.f49849b = r7
            r0.f49850c = r7
            r0.d = r9
            r0.f49851e = r8
            r0.f49853h = r3
            java.lang.Object r8 = r5.f(r2, r10, r6, r0)
            if (r8 != r1) goto Lb3
        Lb2:
            return r1
        Lb3:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
        Lb5:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase.a(com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

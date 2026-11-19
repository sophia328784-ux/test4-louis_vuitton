package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.PersonalSelectionsApi;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.PersonalSelectionsRepository;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;", "Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;", "personalSelectionsApi", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/foundation/logger/Logger;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PersonalSelectionsRepositoryImpl implements PersonalSelectionsRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PersonalSelectionsApi f47863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f47864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f47865c;
    public final Logger d;

    @Inject
    public PersonalSelectionsRepositoryImpl(PersonalSelectionsApi personalSelectionsApi, AuthTokenRepository authTokenRepository, UserSessionService userSessionService, Logger logger) {
        personalSelectionsApi.getClass();
        authTokenRepository.getClass();
        userSessionService.getClass();
        logger.getClass();
        this.f47863a = personalSelectionsApi;
        this.f47864b = authTokenRepository;
        this.f47865c = userSessionService;
        this.d = logger;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:53:0x00de A[Catch: all -> 0x0033, TryCatch #1 {all -> 0x0033, blocks: (B:14:0x002e, B:52:0x00d2, B:43:0x00a6, B:46:0x00b8, B:49:0x00bf, B:53:0x00de, B:54:0x00e5, B:38:0x008d, B:31:0x006d, B:34:0x007a, B:39:0x0093), top: B:73:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:70:0x012b  */
    /* JADX WARN: Code duplicated, block: B:71:0x010e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00cf, code lost:
    
        if (r12 == r2) goto L51;
     */
    @Override // com.vuitton.android.domain.repository.PersonalSelectionsRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl.a(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0085, code lost:
    
        if (r12 == r1) goto L26;
     */
    @Override // com.vuitton.android.domain.repository.PersonalSelectionsRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.String r10, java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r12 instanceof com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$likeSelection$1
            if (r0 == 0) goto L13
            r0 = r12
            com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$likeSelection$1 r0 = (com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$likeSelection$1) r0
            int r1 = r0.f47880i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47880i = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$likeSelection$1 r0 = new com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$likeSelection$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.g
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47880i
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2b
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L9c
            goto L88
        L2b:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r5
        L31:
            int r10 = r0.f47878f
            int r11 = r0.f47877e
            int r2 = r0.d
            java.lang.String r4 = r0.f47876c
            java.lang.String r6 = r0.f47875b
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L9c
            kotlin.Result r12 = (kotlin.Result) r12     // Catch: java.lang.Throwable -> L9c
            java.lang.Object r12 = r12.f71708b     // Catch: java.lang.Throwable -> L9c
            r8 = r2
            r2 = r10
            r10 = r6
            r6 = r8
            r8 = r12
            r12 = r11
            r11 = r4
            r4 = r8
            goto L69
        L4b:
            kotlin.ResultKt.b(r12)
            kotlin.Result$Companion r12 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L9c
            com.vuitton.android.domain.repository.AuthTokenRepository r12 = r9.f47864b     // Catch: java.lang.Throwable -> L9c
            r0.f47875b = r10     // Catch: java.lang.Throwable -> L9c
            r0.f47876c = r11     // Catch: java.lang.Throwable -> L9c
            r2 = 0
            r0.d = r2     // Catch: java.lang.Throwable -> L9c
            r0.f47877e = r2     // Catch: java.lang.Throwable -> L9c
            r0.f47878f = r2     // Catch: java.lang.Throwable -> L9c
            r0.f47880i = r4     // Catch: java.lang.Throwable -> L9c
            java.lang.Object r12 = r12.c(r0)     // Catch: java.lang.Throwable -> L9c
            if (r12 != r1) goto L66
            goto L87
        L66:
            r4 = r12
            r12 = r2
            r6 = r12
        L69:
            kotlin.ResultKt.b(r4)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L9c
            com.vuitton.android.data.api.bff.user.PersonalSelectionsApi r9 = r9.f47863a     // Catch: java.lang.Throwable -> L9c
            com.vuitton.android.data.dto.personalselections.InteractionRequestDto r7 = new com.vuitton.android.data.dto.personalselections.InteractionRequestDto     // Catch: java.lang.Throwable -> L9c
            r7.<init>(r11)     // Catch: java.lang.Throwable -> L9c
            r0.f47875b = r5     // Catch: java.lang.Throwable -> L9c
            r0.f47876c = r5     // Catch: java.lang.Throwable -> L9c
            r0.d = r6     // Catch: java.lang.Throwable -> L9c
            r0.f47877e = r12     // Catch: java.lang.Throwable -> L9c
            r0.f47878f = r2     // Catch: java.lang.Throwable -> L9c
            r0.f47880i = r3     // Catch: java.lang.Throwable -> L9c
            java.lang.Object r12 = r9.likeSelection(r4, r10, r7, r0)     // Catch: java.lang.Throwable -> L9c
            if (r12 != r1) goto L88
        L87:
            return r1
        L88:
            com.vuitton.android.data.dto.personalselections.PersonalSelectionsInteractionDto r12 = (com.vuitton.android.data.dto.personalselections.PersonalSelectionsInteractionDto) r12     // Catch: java.lang.Throwable -> L9c
            r12.getClass()     // Catch: java.lang.Throwable -> L9c
            com.vuitton.foundation.model.domain.model.personalselections.PersonalSelectionsInteraction r9 = new com.vuitton.foundation.model.domain.model.personalselections.PersonalSelectionsInteraction     // Catch: java.lang.Throwable -> L9c
            java.lang.String r10 = r12.f46324a     // Catch: java.lang.Throwable -> L9c
            boolean r11 = r12.f46325b     // Catch: java.lang.Throwable -> L9c
            r9.<init>(r10, r11)     // Catch: java.lang.Throwable -> L9c
            kotlin.Result r10 = new kotlin.Result     // Catch: java.lang.Throwable -> L9c
            r10.<init>(r9)     // Catch: java.lang.Throwable -> L9c
            goto La4
        L9c:
            r9 = move-exception
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
        La4:
            java.lang.Throwable r9 = kotlin.Result.a(r10)
            if (r9 != 0) goto Lab
            goto Lba
        Lab:
            boolean r10 = r9 instanceof java.util.concurrent.CancellationException
            if (r10 != 0) goto Lbf
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            kotlin.Result r9 = new kotlin.Result
            r9.<init>(r10)
            r10 = r9
        Lba:
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r9 = r10.f71708b
            return r9
        Lbf:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl.b(java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
    
        if (r10 == r1) goto L26;
     */
    @Override // com.vuitton.android.domain.repository.PersonalSelectionsRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(java.lang.String r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$unlikeSelection$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$unlikeSelection$1 r0 = (com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$unlikeSelection$1) r0
            int r1 = r0.f47885h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47885h = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$unlikeSelection$1 r0 = new com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl$unlikeSelection$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f47884f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47885h
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L46
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L8d
            goto L79
        L2b:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r3
        L31:
            int r9 = r0.f47883e
            int r2 = r0.d
            int r5 = r0.f47882c
            java.lang.String r6 = r0.f47881b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L8d
            kotlin.Result r10 = (kotlin.Result) r10     // Catch: java.lang.Throwable -> L8d
            java.lang.Object r10 = r10.f71708b     // Catch: java.lang.Throwable -> L8d
            r7 = r2
            r2 = r9
            r9 = r6
            r6 = r5
            r5 = r7
            goto L61
        L46:
            kotlin.ResultKt.b(r10)
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L8d
            com.vuitton.android.domain.repository.AuthTokenRepository r10 = r8.f47864b     // Catch: java.lang.Throwable -> L8d
            r0.f47881b = r9     // Catch: java.lang.Throwable -> L8d
            r2 = 0
            r0.f47882c = r2     // Catch: java.lang.Throwable -> L8d
            r0.d = r2     // Catch: java.lang.Throwable -> L8d
            r0.f47883e = r2     // Catch: java.lang.Throwable -> L8d
            r0.f47885h = r5     // Catch: java.lang.Throwable -> L8d
            java.lang.Object r10 = r10.c(r0)     // Catch: java.lang.Throwable -> L8d
            if (r10 != r1) goto L5f
            goto L78
        L5f:
            r5 = r2
            r6 = r5
        L61:
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L8d
            com.vuitton.android.data.api.bff.user.PersonalSelectionsApi r8 = r8.f47863a     // Catch: java.lang.Throwable -> L8d
            r0.f47881b = r3     // Catch: java.lang.Throwable -> L8d
            r0.f47882c = r6     // Catch: java.lang.Throwable -> L8d
            r0.d = r5     // Catch: java.lang.Throwable -> L8d
            r0.f47883e = r2     // Catch: java.lang.Throwable -> L8d
            r0.f47885h = r4     // Catch: java.lang.Throwable -> L8d
            java.lang.Object r10 = r8.unlikeSelection(r10, r9, r0)     // Catch: java.lang.Throwable -> L8d
            if (r10 != r1) goto L79
        L78:
            return r1
        L79:
            com.vuitton.android.data.dto.personalselections.PersonalSelectionsInteractionDto r10 = (com.vuitton.android.data.dto.personalselections.PersonalSelectionsInteractionDto) r10     // Catch: java.lang.Throwable -> L8d
            r10.getClass()     // Catch: java.lang.Throwable -> L8d
            com.vuitton.foundation.model.domain.model.personalselections.PersonalSelectionsInteraction r8 = new com.vuitton.foundation.model.domain.model.personalselections.PersonalSelectionsInteraction     // Catch: java.lang.Throwable -> L8d
            java.lang.String r9 = r10.f46324a     // Catch: java.lang.Throwable -> L8d
            boolean r10 = r10.f46325b     // Catch: java.lang.Throwable -> L8d
            r8.<init>(r9, r10)     // Catch: java.lang.Throwable -> L8d
            kotlin.Result r9 = new kotlin.Result     // Catch: java.lang.Throwable -> L8d
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L8d
            goto L95
        L8d:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
        L95:
            java.lang.Throwable r8 = kotlin.Result.a(r9)
            if (r8 != 0) goto L9c
            goto Lab
        L9c:
            boolean r9 = r8 instanceof java.util.concurrent.CancellationException
            if (r9 != 0) goto Lb0
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            kotlin.Result r8 = new kotlin.Result
            r8.<init>(r9)
            r9 = r8
        Lab:
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r8 = r9.f71708b
            return r8
        Lb0:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl.c(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
    
        if (r8 == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.PersonalSelectionsRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(kotlin.coroutines.jvm.internal.ContinuationImpl r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl.d(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.pass.PassLocalDataSource;
import com.vuitton.android.data.datasource.pass.PassNetworkDataSource;
import com.vuitton.android.domain.repository.PassRepository;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/repository/PassRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PassRepository;", "Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;", "passLocalDataSource", "Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;", "passNetworkDataSource", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PassRepositoryImpl implements PassRepository {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PassLocalDataSource f47837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PassNetworkDataSource f47838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f47839c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/PassRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public PassRepositoryImpl(PassLocalDataSource passLocalDataSource, PassNetworkDataSource passNetworkDataSource, Logger logger) {
        passLocalDataSource.getClass();
        passNetworkDataSource.getClass();
        logger.getClass();
        this.f47837a = passLocalDataSource;
        this.f47838b = passNetworkDataSource;
        this.f47839c = logger;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x008f A[Catch: all -> 0x00a5, TryCatch #0 {all -> 0x00a5, blocks: (B:13:0x002d, B:38:0x009e, B:18:0x0040, B:33:0x0084, B:35:0x008f, B:26:0x0066, B:29:0x0070), top: B:44:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009b, code lost:
    
        if (r5.f(r0) == r1) goto L37;
     */
    @Override // com.vuitton.android.domain.repository.PassRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r11 instanceof com.vuitton.android.data.repository.PassRepositoryImpl$isEligibleForPass$1
            if (r0 == 0) goto L13
            r0 = r11
            com.vuitton.android.data.repository.PassRepositoryImpl$isEligibleForPass$1 r0 = (com.vuitton.android.data.repository.PassRepositoryImpl$isEligibleForPass$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.PassRepositoryImpl$isEligibleForPass$1 r0 = new com.vuitton.android.data.repository.PassRepositoryImpl$isEligibleForPass$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.f47852e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            r3 = 0
            r4 = 0
            com.vuitton.android.data.datasource.pass.PassLocalDataSource r5 = r9.f47837a
            r6 = 3
            r7 = 2
            r8 = 1
            if (r2 == 0) goto L52
            if (r2 == r8) goto L48
            if (r2 == r7) goto L3c
            if (r2 != r6) goto L36
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> La5
            kotlin.Result r11 = (kotlin.Result) r11     // Catch: java.lang.Throwable -> La5
            r11.getClass()     // Catch: java.lang.Throwable -> La5
            goto L6e
        L36:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r3
        L3c:
            int r9 = r0.d
            boolean r10 = r0.f47851c
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> La5
            kotlin.Result r11 = (kotlin.Result) r11     // Catch: java.lang.Throwable -> La5
            java.lang.Object r11 = r11.f71708b     // Catch: java.lang.Throwable -> La5
            goto L84
        L48:
            java.lang.String r10 = r0.f47850b
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r11 = r11.f71708b
            goto L60
        L52:
            kotlin.ResultKt.b(r11)
            r0.f47850b = r10
            r0.g = r8
            java.lang.Object r11 = r5.c(r0)
            if (r11 != r1) goto L60
            goto L9d
        L60:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r11 instanceof kotlin.Result.Failure
            if (r2 != 0) goto Lae
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> La5
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> La5
            if (r11 == 0) goto L70
        L6e:
            r4 = r8
            goto L9e
        L70:
            com.vuitton.android.data.datasource.pass.PassNetworkDataSource r9 = r9.f47838b     // Catch: java.lang.Throwable -> La5
            r0.f47850b = r3     // Catch: java.lang.Throwable -> La5
            r0.f47851c = r11     // Catch: java.lang.Throwable -> La5
            r0.d = r4     // Catch: java.lang.Throwable -> La5
            r0.g = r7     // Catch: java.lang.Throwable -> La5
            java.lang.Object r9 = r9.b(r10, r0)     // Catch: java.lang.Throwable -> La5
            if (r9 != r1) goto L81
            goto L9d
        L81:
            r10 = r11
            r11 = r9
            r9 = r4
        L84:
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> La5
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> La5
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> La5
            if (r11 == 0) goto L9e
            r0.f47850b = r3     // Catch: java.lang.Throwable -> La5
            r0.f47851c = r10     // Catch: java.lang.Throwable -> La5
            r0.d = r9     // Catch: java.lang.Throwable -> La5
            r0.g = r6     // Catch: java.lang.Throwable -> La5
            java.lang.Object r9 = r5.f(r0)     // Catch: java.lang.Throwable -> La5
            if (r9 != r1) goto L6e
        L9d:
            return r1
        L9e:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r4)     // Catch: java.lang.Throwable -> La5
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> La5
            return r9
        La5:
            r9 = move-exception
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            return r10
        Lae:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.PassRepositoryImpl.a(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.PassRepository
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        PassRepositoryImpl$clearPassDataCache$1 passRepositoryImpl$clearPassDataCache$1;
        if (continuationImpl instanceof PassRepositoryImpl$clearPassDataCache$1) {
            passRepositoryImpl$clearPassDataCache$1 = (PassRepositoryImpl$clearPassDataCache$1) continuationImpl;
            int i2 = passRepositoryImpl$clearPassDataCache$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passRepositoryImpl$clearPassDataCache$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passRepositoryImpl$clearPassDataCache$1 = new PassRepositoryImpl$clearPassDataCache$1(this, continuationImpl);
            }
        } else {
            passRepositoryImpl$clearPassDataCache$1 = new PassRepositoryImpl$clearPassDataCache$1(this, continuationImpl);
        }
        Object obj = passRepositoryImpl$clearPassDataCache$1.f47840b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passRepositoryImpl$clearPassDataCache$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            passRepositoryImpl$clearPassDataCache$1.d = 1;
            Object objD = this.f47837a.d(passRepositoryImpl$clearPassDataCache$1);
            return objD == coroutineSingletons ? coroutineSingletons : objD;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.PassRepository
    public final Object c(String str, ContinuationImpl continuationImpl) throws Throwable {
        PassRepositoryImpl$getPass$1 passRepositoryImpl$getPass$1;
        if (continuationImpl instanceof PassRepositoryImpl$getPass$1) {
            passRepositoryImpl$getPass$1 = (PassRepositoryImpl$getPass$1) continuationImpl;
            int i2 = passRepositoryImpl$getPass$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passRepositoryImpl$getPass$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passRepositoryImpl$getPass$1 = new PassRepositoryImpl$getPass$1(this, continuationImpl);
            }
        } else {
            passRepositoryImpl$getPass$1 = new PassRepositoryImpl$getPass$1(this, continuationImpl);
        }
        Object obj = passRepositoryImpl$getPass$1.f47848b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passRepositoryImpl$getPass$1.d;
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
        if (this.f47837a.d) {
            passRepositoryImpl$getPass$1.d = 1;
            Object objE = e(str, passRepositoryImpl$getPass$1);
            if (objE != obj2) {
                return objE;
            }
        } else {
            passRepositoryImpl$getPass$1.d = 2;
            Object objD = d(str, passRepositoryImpl$getPass$1);
            if (objD != obj2) {
                return objD;
            }
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x018d, code lost:
    
        if (r5.e(r14, r4, r0) == r1) goto L85;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(java.lang.String r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instruction units count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.PassRepositoryImpl.d(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0094 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x0095 A[Catch: all -> 0x00b0, TRY_ENTER, TryCatch #0 {all -> 0x00b0, blocks: (B:13:0x002e, B:40:0x00a7, B:35:0x0095, B:37:0x0099, B:42:0x00af), top: B:46:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0099 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:13:0x002e, B:40:0x00a7, B:35:0x0095, B:37:0x0099, B:42:0x00af), top: B:46:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00af A[Catch: all -> 0x00b0, TRY_LEAVE, TryCatch #0 {all -> 0x00b0, blocks: (B:13:0x002e, B:40:0x00a7, B:35:0x0095, B:37:0x0099, B:42:0x00af), top: B:46:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
    
        if (r11 == r1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a4, code lost:
    
        if (r9 == r1) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(java.lang.String r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r11 instanceof com.vuitton.android.data.repository.PassRepositoryImpl$retrievePassFromCacheOrNetwork$1
            if (r0 == 0) goto L13
            r0 = r11
            com.vuitton.android.data.repository.PassRepositoryImpl$retrievePassFromCacheOrNetwork$1 r0 = (com.vuitton.android.data.repository.PassRepositoryImpl$retrievePassFromCacheOrNetwork$1) r0
            int r1 = r0.f47856e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47856e = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.PassRepositoryImpl$retrievePassFromCacheOrNetwork$1 r0 = new com.vuitton.android.data.repository.PassRepositoryImpl$retrievePassFromCacheOrNetwork$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.f47855c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47856e
            com.vuitton.foundation.logger.Logger r3 = r9.f47839c
            com.vuitton.android.data.datasource.pass.PassLocalDataSource r4 = r9.f47837a
            r5 = 3
            r6 = 2
            r7 = 1
            r8 = 0
            if (r2 == 0) goto L51
            if (r2 == r7) goto L47
            if (r2 == r6) goto L3d
            if (r2 != r5) goto L37
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> Lb0
            kotlin.Result r11 = (kotlin.Result) r11     // Catch: java.lang.Throwable -> Lb0
            java.lang.Object r9 = r11.f71708b     // Catch: java.lang.Throwable -> Lb0
            goto La7
        L37:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r8
        L3d:
            java.lang.String r10 = r0.f47854b
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r11 = r11.f71708b
            goto L86
        L47:
            java.lang.String r10 = r0.f47854b
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r11 = r11.f71708b
            goto L61
        L51:
            kotlin.ResultKt.b(r11)
            com.vuitton.android.data.dto.pass.ContentDispositionName r11 = com.vuitton.android.data.dto.pass.ContentDispositionName.CARD_TWO_DIMENSIONAL
            r0.f47854b = r10
            r0.f47856e = r7
            java.lang.Object r11 = r4.a(r11, r0)
            if (r11 != r1) goto L61
            goto La6
        L61:
            java.lang.Throwable r2 = kotlin.Result.a(r11)
            if (r2 != 0) goto L74
            java.io.File r11 = (java.io.File) r11
            com.vuitton.foundation.model.domain.model.pass.Pass$Normal r2 = new com.vuitton.foundation.model.domain.model.pass.Pass$Normal
            java.io.FileInputStream r4 = new java.io.FileInputStream
            r4.<init>(r11)
            r2.<init>(r4)
            goto L8e
        L74:
            boolean r11 = r2 instanceof com.vuitton.foundation.exception.CacheException.NoResultException
            if (r11 == 0) goto L88
            r3.getClass()
            r0.f47854b = r10
            r0.f47856e = r6
            java.lang.Object r11 = r4.b(r0)
            if (r11 != r1) goto L86
            goto La6
        L86:
            r2 = r11
            goto L8e
        L88:
            kotlin.Result$Failure r11 = new kotlin.Result$Failure
            r11.<init>(r2)
            goto L86
        L8e:
            java.lang.Throwable r11 = kotlin.Result.a(r2)
            if (r11 != 0) goto L95
            return r2
        L95:
            boolean r2 = r11 instanceof com.vuitton.foundation.exception.CacheException.NoResultException     // Catch: java.lang.Throwable -> Lb0
            if (r2 == 0) goto Laf
            r3.getClass()     // Catch: java.lang.Throwable -> Lb0
            r0.f47854b = r8     // Catch: java.lang.Throwable -> Lb0
            r0.f47856e = r5     // Catch: java.lang.Throwable -> Lb0
            java.lang.Object r9 = r9.d(r10, r0)     // Catch: java.lang.Throwable -> Lb0
            if (r9 != r1) goto La7
        La6:
            return r1
        La7:
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> Lb0
            com.vuitton.foundation.model.domain.model.pass.Pass r9 = (com.vuitton.foundation.model.domain.model.pass.Pass) r9     // Catch: java.lang.Throwable -> Lb0
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> Lb0
            return r9
        Laf:
            throw r11     // Catch: java.lang.Throwable -> Lb0
        Lb0:
            r9 = move-exception
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.PassRepositoryImpl.e(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

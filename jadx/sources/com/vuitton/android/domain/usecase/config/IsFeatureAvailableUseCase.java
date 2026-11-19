package com.vuitton.android.domain.usecase.config;

import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;", "determineFeatureStatusFromConfigsUseCase", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class IsFeatureAvailableUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DetermineFeatureStatusFromConfigsUseCase f49691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserPreferencesRepository f49692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BuildConfigProvider f49693c;

    @Inject
    public IsFeatureAvailableUseCase(DetermineFeatureStatusFromConfigsUseCase determineFeatureStatusFromConfigsUseCase, UserPreferencesRepository userPreferencesRepository, BuildConfigProvider buildConfigProvider) {
        determineFeatureStatusFromConfigsUseCase.getClass();
        userPreferencesRepository.getClass();
        buildConfigProvider.getClass();
        this.f49691a = determineFeatureStatusFromConfigsUseCase;
        this.f49692b = userPreferencesRepository;
        this.f49693c = buildConfigProvider;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0072  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Feature feature, ContinuationImpl continuationImpl) {
        IsFeatureAvailableUseCase$isAvailable$1 isFeatureAvailableUseCase$isAvailable$1;
        boolean z;
        if (continuationImpl instanceof IsFeatureAvailableUseCase$isAvailable$1) {
            isFeatureAvailableUseCase$isAvailable$1 = (IsFeatureAvailableUseCase$isAvailable$1) continuationImpl;
            int i2 = isFeatureAvailableUseCase$isAvailable$1.f49696e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                isFeatureAvailableUseCase$isAvailable$1.f49696e = i2 - Integer.MIN_VALUE;
            } else {
                isFeatureAvailableUseCase$isAvailable$1 = new IsFeatureAvailableUseCase$isAvailable$1(this, continuationImpl);
            }
        } else {
            isFeatureAvailableUseCase$isAvailable$1 = new IsFeatureAvailableUseCase$isAvailable$1(this, continuationImpl);
        }
        Object objA = isFeatureAvailableUseCase$isAvailable$1.f49695c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = isFeatureAvailableUseCase$isAvailable$1.f49696e;
        if (i3 == 0) {
            ResultKt.b(objA);
            isFeatureAvailableUseCase$isAvailable$1.f49694b = feature;
            isFeatureAvailableUseCase$isAvailable$1.f49696e = 1;
            objA = this.f49691a.a(feature, isFeatureAvailableUseCase$isAvailable$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            feature = isFeatureAvailableUseCase$isAvailable$1.f49694b;
            ResultKt.b(objA);
        }
        if (((Boolean) objA).booleanValue()) {
            this.f49693c.getClass();
            boolean zD = this.f49692b.d();
            feature.getClass();
            boolean z2 = feature == Feature.KEEP_ALL || feature == Feature.SNEAKERS;
            if (feature.getIsPreprodOnly()) {
                zD = false;
            } else if (!z2) {
                zD = true;
            }
            z = zD;
        }
        return Boolean.valueOf(z);
    }

    public final boolean b(Feature[] featureArr) {
        return ((Boolean) BuildersKt.e(EmptyCoroutineContext.f71840b, new IsFeatureAvailableUseCase$run$1(featureArr, this, null))).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0087  */
    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0076 -> B:24:0x007a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00a7 -> B:35:0x00ab). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(com.vuitton.foundation.model.domain.model.sync.Feature[] r10, boolean r11, kotlin.coroutines.Continuation r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase$runSuspend$1
            if (r0 == 0) goto L13
            r0 = r12
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase$runSuspend$1 r0 = (com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase$runSuspend$1) r0
            int r1 = r0.f49708i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49708i = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase$runSuspend$1 r0 = new com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase$runSuspend$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.g
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49708i
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L53
            if (r2 == r4) goto L41
            if (r2 != r3) goto L3a
            int r10 = r0.f49706f
            int r11 = r0.f49705e
            int r2 = r0.d
            boolean r6 = r0.f49704c
            com.vuitton.foundation.model.domain.model.sync.Feature[] r7 = r0.f49703b
            kotlin.ResultKt.b(r12)
            r8 = r2
            r2 = r0
            r0 = r6
            r6 = r8
            goto Lab
        L3a:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L41:
            int r10 = r0.f49706f
            int r11 = r0.f49705e
            int r2 = r0.d
            boolean r3 = r0.f49704c
            com.vuitton.foundation.model.domain.model.sync.Feature[] r6 = r0.f49703b
            kotlin.ResultKt.b(r12)
            r8 = r2
            r2 = r0
            r0 = r3
            r3 = r8
            goto L7a
        L53:
            kotlin.ResultKt.b(r12)
            if (r11 == 0) goto L89
            int r12 = r10.length
            r2 = r0
            r3 = r5
            r0 = r11
            r11 = r10
            r10 = r12
            r12 = r3
        L5f:
            if (r12 >= r10) goto L87
            r6 = r11[r12]
            r2.f49703b = r11
            r2.f49704c = r0
            r2.d = r3
            r2.f49705e = r12
            r2.f49706f = r10
            r2.f49708i = r4
            java.lang.Object r6 = r9.a(r6, r2)
            if (r6 != r1) goto L76
            goto La6
        L76:
            r8 = r6
            r6 = r11
            r11 = r12
            r12 = r8
        L7a:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto L83
            goto Lb8
        L83:
            int r12 = r11 + 1
            r11 = r6
            goto L5f
        L87:
            r4 = r5
            goto Lb8
        L89:
            int r12 = r10.length
            r2 = r0
            r6 = r5
            r0 = r11
            r11 = r10
            r10 = r12
            r12 = r6
        L90:
            if (r12 >= r10) goto Lb8
            r7 = r11[r12]
            r2.f49703b = r11
            r2.f49704c = r0
            r2.d = r6
            r2.f49705e = r12
            r2.f49706f = r10
            r2.f49708i = r3
            java.lang.Object r7 = r9.a(r7, r2)
            if (r7 != r1) goto La7
        La6:
            return r1
        La7:
            r8 = r7
            r7 = r11
            r11 = r12
            r12 = r8
        Lab:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 != 0) goto Lb4
            goto L87
        Lb4:
            int r12 = r11 + 1
            r11 = r7
            goto L90
        Lb8:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r4)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase.c(com.vuitton.foundation.model.domain.model.sync.Feature[], boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

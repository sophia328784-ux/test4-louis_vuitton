package com.vuitton.android.domain.usecase.connectivity;

import com.vuitton.android.domain.repository.LightUpRepository;
import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/repository/LightUpRepository;", "lightUpRepository", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/repository/WatchRepository;)V", "Params", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetConnectedObjectListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LightUpRepository f49737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WatchRepository f49738c;

    @Inject
    public GetConnectedObjectListUseCase(IsFeatureAvailableUseCase isFeatureAvailableUseCase, LightUpRepository lightUpRepository, WatchRepository watchRepository) {
        isFeatureAvailableUseCase.getClass();
        lightUpRepository.getClass();
        watchRepository.getClass();
        this.f49736a = isFeatureAvailableUseCase;
        this.f49737b = lightUpRepository;
        this.f49738c = watchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x007e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        if (r10 == r1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable a(com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase.Params r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$run$1) r0
            int r1 = r0.f49744f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49744f = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$run$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49744f
            r3 = 1
            r4 = 0
            r5 = 2
            if (r2 == 0) goto L3b
            if (r2 == r3) goto L35
            if (r2 != r5) goto L2f
            java.util.List r8 = r0.f49742c
            java.util.List r8 = (java.util.List) r8
            kotlin.ResultKt.b(r10)
            goto L81
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r4
        L35:
            com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$Params r9 = r0.f49741b
            kotlin.ResultKt.b(r10)
            goto L65
        L3b:
            kotlin.ResultKt.b(r10)
            boolean r10 = r9.f49739a
            if (r10 == 0) goto L68
            com.vuitton.foundation.model.domain.model.sync.Feature r10 = com.vuitton.foundation.model.domain.model.sync.Feature.KEEP_ALL
            com.vuitton.foundation.model.domain.model.sync.Feature[] r10 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r10}
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r2 = r8.f49736a
            boolean r10 = r2.b(r10)
            com.vuitton.foundation.model.domain.model.sync.Feature r6 = com.vuitton.foundation.model.domain.model.sync.Feature.SNEAKERS
            com.vuitton.foundation.model.domain.model.sync.Feature[] r6 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r6}
            boolean r2 = r2.b(r6)
            r0.f49741b = r9
            r0.f49744f = r3
            com.vuitton.android.domain.repository.LightUpRepository r3 = r8.f49737b
            java.io.Serializable r10 = r3.i(r10, r2, r0)
            if (r10 != r1) goto L65
            goto L7d
        L65:
            java.util.List r10 = (java.util.List) r10
            goto L6a
        L68:
            kotlin.collections.EmptyList r10 = kotlin.collections.EmptyList.f71768b
        L6a:
            boolean r9 = r9.f49740b
            r0.f49741b = r4
            r2 = r10
            java.util.List r2 = (java.util.List) r2
            r0.f49742c = r2
            r0.f49744f = r5
            com.vuitton.android.domain.repository.WatchRepository r8 = r8.f49738c
            java.lang.Object r8 = r8.b(r9, r0)
            if (r8 != r1) goto L7e
        L7d:
            return r1
        L7e:
            r7 = r10
            r10 = r8
            r8 = r7
        L81:
            java.util.List r10 = (java.util.List) r10
            java.util.Collection r8 = (java.util.Collection) r8
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.ArrayList r8 = kotlin.collections.CollectionsKt.Y(r8, r10)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase.a(com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$Params, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;", "", "", "withLightUp", "fromServer", "<init>", "(ZZ)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Params {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f49739a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f49740b;

        public /* synthetic */ Params(boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return false;
            }
            Params params = (Params) obj;
            return this.f49739a == params.f49739a && this.f49740b == params.f49740b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f49740b) + (Boolean.hashCode(this.f49739a) * 31);
        }

        public final String toString() {
            return "Params(withLightUp=" + this.f49739a + ", fromServer=" + this.f49740b + ")";
        }

        public Params(boolean z, boolean z2) {
            this.f49739a = z;
            this.f49740b = z2;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Params() {
            boolean z = false;
            this(z, z, 3, null);
        }
    }
}

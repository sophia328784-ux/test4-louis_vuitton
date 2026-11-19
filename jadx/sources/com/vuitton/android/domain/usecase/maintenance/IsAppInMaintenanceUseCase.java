package com.vuitton.android.domain.usecase.maintenance;

import com.vuitton.android.domain.repository.MaintenanceRepository;
import com.vuitton.foundation.exception.NetworkException;
import defpackage.fc;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;", "", "Lcom/vuitton/android/domain/repository/MaintenanceRepository;", "maintenanceRepository", "<init>", "(Lcom/vuitton/android/domain/repository/MaintenanceRepository;)V", "MaintenanceStatusException", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class IsAppInMaintenanceUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaintenanceRepository f50143a;

    @Inject
    public IsAppInMaintenanceUseCase(MaintenanceRepository maintenanceRepository) {
        maintenanceRepository.getClass();
        this.f50143a = maintenanceRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        IsAppInMaintenanceUseCase$run$1 isAppInMaintenanceUseCase$run$1;
        Object objA;
        if (continuationImpl instanceof IsAppInMaintenanceUseCase$run$1) {
            isAppInMaintenanceUseCase$run$1 = (IsAppInMaintenanceUseCase$run$1) continuationImpl;
            int i2 = isAppInMaintenanceUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                isAppInMaintenanceUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                isAppInMaintenanceUseCase$run$1 = new IsAppInMaintenanceUseCase$run$1(this, continuationImpl);
            }
        } else {
            isAppInMaintenanceUseCase$run$1 = new IsAppInMaintenanceUseCase$run$1(this, continuationImpl);
        }
        Object obj = isAppInMaintenanceUseCase$run$1.f50146b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = isAppInMaintenanceUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            isAppInMaintenanceUseCase$run$1.d = 1;
            objA = this.f50143a.a(isAppInMaintenanceUseCase$run$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objA);
        if (thA == null) {
            return objA;
        }
        try {
            if (thA instanceof NetworkException) {
                throw new MaintenanceStatusException.NetworkException(thA.getMessage());
            }
            throw new MaintenanceStatusException.GenericException(thA.getMessage());
        } catch (Throwable th) {
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase$MaintenanceStatusException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NetworkException", "GenericException", "Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase$MaintenanceStatusException$GenericException;", "Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase$MaintenanceStatusException$NetworkException;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class MaintenanceStatusException extends Exception {
        public MaintenanceStatusException(String str, DefaultConstructorMarker defaultConstructorMarker) {
            super(str);
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase$MaintenanceStatusException$GenericException;", "Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase$MaintenanceStatusException;", "", "message", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class GenericException extends MaintenanceStatusException {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f50144b;

            public /* synthetic */ GenericException(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? null : str);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof GenericException) && Intrinsics.c(this.f50144b, ((GenericException) obj).f50144b);
            }

            @Override // java.lang.Throwable
            public final String getMessage() {
                return this.f50144b;
            }

            public final int hashCode() {
                String str = this.f50144b;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            @Override // java.lang.Throwable
            public final String toString() {
                return fc.h("GenericException(message=", this.f50144b, ")");
            }

            public GenericException(String str) {
                super(str, null);
                this.f50144b = str;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public GenericException() {
                this(null, 1, 0 == true ? 1 : 0);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase$MaintenanceStatusException$NetworkException;", "Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase$MaintenanceStatusException;", "", "message", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NetworkException extends MaintenanceStatusException {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f50145b;

            public /* synthetic */ NetworkException(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? null : str);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof NetworkException) && Intrinsics.c(this.f50145b, ((NetworkException) obj).f50145b);
            }

            @Override // java.lang.Throwable
            public final String getMessage() {
                return this.f50145b;
            }

            public final int hashCode() {
                String str = this.f50145b;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            @Override // java.lang.Throwable
            public final String toString() {
                return fc.h("NetworkException(message=", this.f50145b, ")");
            }

            public NetworkException(String str) {
                super(str, null);
                this.f50145b = str;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public NetworkException() {
                this(null, 1, 0 == true ? 1 : 0);
            }
        }
    }
}

package com.vuitton.android.domain.monitoring.authentication;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NativeRegisterMonitoring {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "ActivateAccount", "Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Action$ActivateAccount;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Action$ActivateAccount;", "Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ActivateAccount implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ActivateAccount f48828a = new ActivateAccount();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Account Activation";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ActivateAccount);
            }

            public final int hashCode() {
                return -964904539;
            }

            public final String toString() {
                return "ActivateAccount";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "ActivateAccountError", "Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Error$ActivateAccountError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Error$ActivateAccountError;", "Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ActivateAccountError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48829a;

            public ActivateAccountError(Throwable th) {
                th.getClass();
                this.f48829a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48829a() {
                return this.f48829a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ActivateAccountError) && Intrinsics.c(this.f48829a, ((ActivateAccountError) obj).f48829a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "account_activation_error";
            }

            public final int hashCode() {
                return this.f48829a.hashCode();
            }

            public final String toString() {
                return d21.n("ActivateAccountError(error=", ")", this.f48829a);
            }
        }
    }
}

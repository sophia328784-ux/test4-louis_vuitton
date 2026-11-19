package com.vuitton.android.domain.monitoring.authentication;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ForgetPasswordMonitoring {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "LoadForgetPassword", "Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Action$LoadForgetPassword;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Action$LoadForgetPassword;", "Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadForgetPassword implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadForgetPassword f48824a = new LoadForgetPassword();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Forget Password";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadForgetPassword);
            }

            public final int hashCode() {
                return 515244849;
            }

            public final String toString() {
                return "LoadForgetPassword";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "LoadForgetPasswordError", "Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Error$LoadForgetPasswordError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Error$LoadForgetPasswordError;", "Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadForgetPasswordError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48825a;

            public LoadForgetPasswordError(Throwable th) {
                th.getClass();
                this.f48825a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48825a() {
                return this.f48825a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadForgetPasswordError) && Intrinsics.c(this.f48825a, ((LoadForgetPasswordError) obj).f48825a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "forget_password_error";
            }

            public final int hashCode() {
                return this.f48825a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadForgetPasswordError(error=", ")", this.f48825a);
            }
        }
    }
}

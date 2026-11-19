package com.vuitton.android.presentation.screen.authentication.forgetpassword.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent;", "", "ForgetPasswordInitiateSuccess", "ForgetPasswordSuccess", "ForgetPasswordError", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordError;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordInitiateSuccess;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordSuccess;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ForgetPasswordUiEvent {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordError;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;", "error", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ForgetPasswordError extends ForgetPasswordUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ForgetPasswordExceptionUiModel f53583a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ForgetPasswordError(ForgetPasswordExceptionUiModel forgetPasswordExceptionUiModel) {
            super(null);
            forgetPasswordExceptionUiModel.getClass();
            this.f53583a = forgetPasswordExceptionUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ForgetPasswordError) && Intrinsics.c(this.f53583a, ((ForgetPasswordError) obj).f53583a);
        }

        public final int hashCode() {
            return this.f53583a.hashCode();
        }

        public final String toString() {
            return "ForgetPasswordError(error=" + this.f53583a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordInitiateSuccess;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ForgetPasswordInitiateSuccess extends ForgetPasswordUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ForgetPasswordInitiateSuccess f53584a = new ForgetPasswordInitiateSuccess(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ForgetPasswordInitiateSuccess);
        }

        public final int hashCode() {
            return -977322179;
        }

        public final String toString() {
            return "ForgetPasswordInitiateSuccess";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordSuccess;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ForgetPasswordSuccess extends ForgetPasswordUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ForgetPasswordSuccess f53585a = new ForgetPasswordSuccess(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ForgetPasswordSuccess);
        }

        public final int hashCode() {
            return 1405840150;
        }

        public final String toString() {
            return "ForgetPasswordSuccess";
        }
    }

    public ForgetPasswordUiEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

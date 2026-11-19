package com.vuitton.android.presentation.screen.authentication.forgetpassword.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;", "", "PasswordAlreadyUsed", "InvalidOtp", "ExpiredOtp", "UnknownError", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$ExpiredOtp;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$InvalidOtp;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$PasswordAlreadyUsed;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$UnknownError;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ForgetPasswordExceptionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53567a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$ExpiredOtp;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExpiredOtp extends ForgetPasswordExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53568b;

        public ExpiredOtp(String str) {
            super(str, null);
            this.f53568b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53567a() {
            return this.f53568b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExpiredOtp) && Intrinsics.c(this.f53568b, ((ExpiredOtp) obj).f53568b);
        }

        public final int hashCode() {
            String str = this.f53568b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("ExpiredOtp(message=", this.f53568b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$InvalidOtp;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidOtp extends ForgetPasswordExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53569b;

        public InvalidOtp(String str) {
            super(str, null);
            this.f53569b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53567a() {
            return this.f53569b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidOtp) && Intrinsics.c(this.f53569b, ((InvalidOtp) obj).f53569b);
        }

        public final int hashCode() {
            String str = this.f53569b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidOtp(message=", this.f53569b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$PasswordAlreadyUsed;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PasswordAlreadyUsed extends ForgetPasswordExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53570b;

        public PasswordAlreadyUsed(String str) {
            super(str, null);
            this.f53570b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53567a() {
            return this.f53570b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PasswordAlreadyUsed) && Intrinsics.c(this.f53570b, ((PasswordAlreadyUsed) obj).f53570b);
        }

        public final int hashCode() {
            String str = this.f53570b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("PasswordAlreadyUsed(message=", this.f53570b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$UnknownError;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnknownError extends ForgetPasswordExceptionUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53571b;

        public UnknownError(String str) {
            super(str, null);
            this.f53571b = str;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordExceptionUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF53567a() {
            return this.f53571b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnknownError) && Intrinsics.c(this.f53571b, ((UnknownError) obj).f53571b);
        }

        public final int hashCode() {
            String str = this.f53571b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("UnknownError(message=", this.f53571b, ")");
        }
    }

    public ForgetPasswordExceptionUiModel(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f53567a = str;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public String getF53567a() {
        return this.f53567a;
    }
}

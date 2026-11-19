package com.vuitton.android.presentation.screen.authentication.login.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel;", "", "InvalidPassword", "UnknownError", "Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$InvalidPassword;", "Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$UnknownError;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NativeLoginExceptionUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$InvalidPassword;", "Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvalidPassword extends NativeLoginExceptionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53682a;

        public InvalidPassword(String str) {
            super(str, null);
            this.f53682a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidPassword) && Intrinsics.c(this.f53682a, ((InvalidPassword) obj).f53682a);
        }

        public final int hashCode() {
            String str = this.f53682a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InvalidPassword(message=", this.f53682a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$UnknownError;", "Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnknownError extends NativeLoginExceptionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53683a;

        public UnknownError(String str) {
            super(str, null);
            this.f53683a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnknownError) && Intrinsics.c(this.f53683a, ((UnknownError) obj).f53683a);
        }

        public final int hashCode() {
            String str = this.f53683a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("UnknownError(message=", this.f53683a, ")");
        }
    }

    public NativeLoginExceptionUiModel(String str, DefaultConstructorMarker defaultConstructorMarker) {
    }
}

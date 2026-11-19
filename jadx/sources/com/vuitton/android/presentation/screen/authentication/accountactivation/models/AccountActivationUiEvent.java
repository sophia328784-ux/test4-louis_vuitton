package com.vuitton.android.presentation.screen.authentication.accountactivation.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;", "", "InitiateSuccess", "ActivationSuccess", "Error", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$ActivationSuccess;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$Error;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$InitiateSuccess;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AccountActivationUiEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$ActivationSuccess;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivationSuccess extends AccountActivationUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ActivationSuccess f53390a = new ActivationSuccess(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ActivationSuccess);
        }

        public final int hashCode() {
            return 1228836356;
        }

        public final String toString() {
            return "ActivationSuccess";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$Error;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends AccountActivationUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53391a;

        public Error(String str) {
            super(null);
            this.f53391a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && Intrinsics.c(this.f53391a, ((Error) obj).f53391a);
        }

        public final int hashCode() {
            String str = this.f53391a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Error(message=", this.f53391a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$InitiateSuccess;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InitiateSuccess extends AccountActivationUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final InitiateSuccess f53392a = new InitiateSuccess(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InitiateSuccess);
        }

        public final int hashCode() {
            return -968825631;
        }

        public final String toString() {
            return "InitiateSuccess";
        }
    }

    public AccountActivationUiEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

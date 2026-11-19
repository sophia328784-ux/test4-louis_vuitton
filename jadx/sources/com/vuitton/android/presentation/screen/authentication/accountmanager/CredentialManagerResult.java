package com.vuitton.android.presentation.screen.authentication.accountmanager;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult;", "", "Success", "Failure", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Failure;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CredentialManagerResult {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Failure;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Failure implements CredentialManagerResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Failure f53405a = new Failure();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Failure);
        }

        public final int hashCode() {
            return -127713480;
        }

        public final String toString() {
            return "Failure";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Success;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;", "accountCredentials", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success implements CredentialManagerResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AccountCredentials f53406a;

        public Success(AccountCredentials accountCredentials) {
            accountCredentials.getClass();
            this.f53406a = accountCredentials;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f53406a, ((Success) obj).f53406a);
        }

        public final int hashCode() {
            return this.f53406a.hashCode();
        }

        public final String toString() {
            return "Success(accountCredentials=" + this.f53406a + ")";
        }
    }
}

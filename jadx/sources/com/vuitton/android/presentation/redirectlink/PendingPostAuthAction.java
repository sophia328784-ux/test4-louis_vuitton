package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.presentation.screen.authentication.LoginRedirection;
import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bp\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;", "", "LoginRedirect", "PairingV2", "Travel", "Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;", "Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;", "Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$Travel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PendingPostAuthAction {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;", "Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;", "param", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairingV2 implements PendingPostAuthAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PairWatchV2Ui f52037a;

        public PairingV2(PairWatchV2Ui pairWatchV2Ui) {
            pairWatchV2Ui.getClass();
            this.f52037a = pairWatchV2Ui;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PairingV2) && Intrinsics.c(this.f52037a, ((PairingV2) obj).f52037a);
        }

        public final int hashCode() {
            return this.f52037a.hashCode();
        }

        public final String toString() {
            return "PairingV2(param=" + this.f52037a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$Travel;", "Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Travel implements PendingPostAuthAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Travel f52038a = new Travel();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Travel);
        }

        public final int hashCode() {
            return -973976696;
        }

        public final String toString() {
            return "Travel";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;", "Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;", "Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;", "loginRedirection", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;", "args", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LoginRedirect implements PendingPostAuthAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginRedirection f52035a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final RedirectionArgs f52036b;

        public LoginRedirect(LoginRedirection loginRedirection, RedirectionArgs redirectionArgs) {
            loginRedirection.getClass();
            this.f52035a = loginRedirection;
            this.f52036b = redirectionArgs;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LoginRedirect)) {
                return false;
            }
            LoginRedirect loginRedirect = (LoginRedirect) obj;
            return this.f52035a == loginRedirect.f52035a && Intrinsics.c(this.f52036b, loginRedirect.f52036b);
        }

        public final int hashCode() {
            int iHashCode = this.f52035a.hashCode() * 31;
            RedirectionArgs redirectionArgs = this.f52036b;
            return iHashCode + (redirectionArgs == null ? 0 : redirectionArgs.hashCode());
        }

        public final String toString() {
            return "LoginRedirect(loginRedirection=" + this.f52035a + ", args=" + this.f52036b + ")";
        }

        public /* synthetic */ LoginRedirect(LoginRedirection loginRedirection, RedirectionArgs redirectionArgs, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(loginRedirection, (i2 & 2) != 0 ? null : redirectionArgs);
        }
    }
}

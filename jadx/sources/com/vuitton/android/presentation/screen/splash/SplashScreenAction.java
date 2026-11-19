package com.vuitton.android.presentation.screen.splash;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\u0082\u0001\u000b\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017¨\u0006\u0018À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "", "ForceUpdateAppVersion", "ForceUpdateOsVersion", "RetryPopup", "DispatchPage", "AppInMaintenance", "RestartApp", "Idle", "ShowSecurityDialog", "GoMain", "GoPrivacyPolicy", "GoOnboarding", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$AppInMaintenance;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$DispatchPage;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateAppVersion;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateOsVersion;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoMain;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoOnboarding;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoPrivacyPolicy;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RestartApp;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SplashScreenAction {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$AppInMaintenance;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AppInMaintenance implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AppInMaintenance f64422a = new AppInMaintenance();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AppInMaintenance);
        }

        public final int hashCode() {
            return 1066645130;
        }

        public final String toString() {
            return "AppInMaintenance";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$DispatchPage;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DispatchPage implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DispatchPage f64423a = new DispatchPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DispatchPage);
        }

        public final int hashCode() {
            return -98663642;
        }

        public final String toString() {
            return "DispatchPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateAppVersion;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ForceUpdateAppVersion implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ForceUpdateAppVersion f64424a = new ForceUpdateAppVersion();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ForceUpdateAppVersion);
        }

        public final int hashCode() {
            return -983047730;
        }

        public final String toString() {
            return "ForceUpdateAppVersion";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateOsVersion;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ForceUpdateOsVersion implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ForceUpdateOsVersion f64425a = new ForceUpdateOsVersion();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ForceUpdateOsVersion);
        }

        public final int hashCode() {
            return 901134621;
        }

        public final String toString() {
            return "ForceUpdateOsVersion";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoMain;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "", "deepLinkUriString", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoMain implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64426a;

        public GoMain(String str) {
            this.f64426a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof GoMain) && Intrinsics.c(this.f64426a, ((GoMain) obj).f64426a);
        }

        public final int hashCode() {
            String str = this.f64426a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("GoMain(deepLinkUriString=", this.f64426a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoOnboarding;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "", "deepLinkUriString", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoOnboarding implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64427a;

        public GoOnboarding(String str) {
            this.f64427a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof GoOnboarding) && Intrinsics.c(this.f64427a, ((GoOnboarding) obj).f64427a);
        }

        public final int hashCode() {
            String str = this.f64427a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("GoOnboarding(deepLinkUriString=", this.f64427a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoPrivacyPolicy;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "", "deepLinkUriString", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoPrivacyPolicy implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64428a;

        public GoPrivacyPolicy(String str) {
            this.f64428a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof GoPrivacyPolicy) && Intrinsics.c(this.f64428a, ((GoPrivacyPolicy) obj).f64428a);
        }

        public final int hashCode() {
            String str = this.f64428a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("GoPrivacyPolicy(deepLinkUriString=", this.f64428a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Idle implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Idle f64429a = new Idle();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Idle);
        }

        public final int hashCode() {
            return 1311424977;
        }

        public final String toString() {
            return "Idle";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RestartApp;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RestartApp implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RestartApp f64430a = new RestartApp();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RestartApp);
        }

        public final int hashCode() {
            return 281920975;
        }

        public final String toString() {
            return "RestartApp";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RetryPopup implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RetryPopup f64431a = new RetryPopup();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RetryPopup);
        }

        public final int hashCode() {
            return 905320225;
        }

        public final String toString() {
            return "RetryPopup";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShowSecurityDialog implements SplashScreenAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ShowSecurityDialog f64432a = new ShowSecurityDialog();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShowSecurityDialog);
        }

        public final int hashCode() {
            return 1792400450;
        }

        public final String toString() {
            return "ShowSecurityDialog";
        }
    }
}

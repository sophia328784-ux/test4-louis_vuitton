package com.vuitton.android.presentation.screen.onboarding.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0010\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0082\u0001\u0010\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !¨\u0006\"À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "", "AuthenticationScreen", "StartScreen", "NotificationScreen", "GeolocationScreen", "IconsScreen", "LogInClickEvent", "SignUpClickEvent", "GuestClickEvent", "StartClickEvent", "NotificationsContinueClickEvent", "NotificationsAllowedEvent", "NotificationsRefusedEvent", "GeolocationContinueClickEvent", "GeolocationAllowedEvent", "GeolocationRefusedEvent", "IconsConfirmClickEvent", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$AuthenticationScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationAllowedEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationContinueClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationRefusedEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GuestClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$IconsConfirmClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$IconsScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$LogInClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsAllowedEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsContinueClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsRefusedEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$SignUpClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$StartClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$StartScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OnboardingTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$AuthenticationScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AuthenticationScreen implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AuthenticationScreen f59584a = new AuthenticationScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AuthenticationScreen);
        }

        public final int hashCode() {
            return -3316769;
        }

        public final String toString() {
            return "AuthenticationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationAllowedEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GeolocationAllowedEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GeolocationAllowedEvent f59585a = new GeolocationAllowedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GeolocationAllowedEvent);
        }

        public final int hashCode() {
            return -1560391107;
        }

        public final String toString() {
            return "GeolocationAllowedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationContinueClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GeolocationContinueClickEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GeolocationContinueClickEvent f59586a = new GeolocationContinueClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GeolocationContinueClickEvent);
        }

        public final int hashCode() {
            return 15163940;
        }

        public final String toString() {
            return "GeolocationContinueClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationRefusedEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GeolocationRefusedEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GeolocationRefusedEvent f59587a = new GeolocationRefusedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GeolocationRefusedEvent);
        }

        public final int hashCode() {
            return 870754837;
        }

        public final String toString() {
            return "GeolocationRefusedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GeolocationScreen implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GeolocationScreen f59588a = new GeolocationScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GeolocationScreen);
        }

        public final int hashCode() {
            return 1424307479;
        }

        public final String toString() {
            return "GeolocationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GuestClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GuestClickEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GuestClickEvent f59589a = new GuestClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GuestClickEvent);
        }

        public final int hashCode() {
            return -351477201;
        }

        public final String toString() {
            return "GuestClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$IconsConfirmClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "", "iconId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class IconsConfirmClickEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59590a;

        public IconsConfirmClickEvent(String str) {
            str.getClass();
            this.f59590a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof IconsConfirmClickEvent) && Intrinsics.c(this.f59590a, ((IconsConfirmClickEvent) obj).f59590a);
        }

        public final int hashCode() {
            return this.f59590a.hashCode();
        }

        public final String toString() {
            return fc.h("IconsConfirmClickEvent(iconId=", this.f59590a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$IconsScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class IconsScreen implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final IconsScreen f59591a = new IconsScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof IconsScreen);
        }

        public final int hashCode() {
            return -780008725;
        }

        public final String toString() {
            return "IconsScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$LogInClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LogInClickEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LogInClickEvent f59592a = new LogInClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LogInClickEvent);
        }

        public final int hashCode() {
            return 2108159648;
        }

        public final String toString() {
            return "LogInClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationScreen implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationScreen f59593a = new NotificationScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationScreen);
        }

        public final int hashCode() {
            return -1225514286;
        }

        public final String toString() {
            return "NotificationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsAllowedEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationsAllowedEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationsAllowedEvent f59594a = new NotificationsAllowedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationsAllowedEvent);
        }

        public final int hashCode() {
            return 1740347615;
        }

        public final String toString() {
            return "NotificationsAllowedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsContinueClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationsContinueClickEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationsContinueClickEvent f59595a = new NotificationsContinueClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationsContinueClickEvent);
        }

        public final int hashCode() {
            return -238442682;
        }

        public final String toString() {
            return "NotificationsContinueClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsRefusedEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationsRefusedEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationsRefusedEvent f59596a = new NotificationsRefusedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationsRefusedEvent);
        }

        public final int hashCode() {
            return -123473737;
        }

        public final String toString() {
            return "NotificationsRefusedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$SignUpClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SignUpClickEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SignUpClickEvent f59597a = new SignUpClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SignUpClickEvent);
        }

        public final int hashCode() {
            return -817477211;
        }

        public final String toString() {
            return "SignUpClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$StartClickEvent;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StartClickEvent implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final StartClickEvent f59598a = new StartClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof StartClickEvent);
        }

        public final int hashCode() {
            return 2109363257;
        }

        public final String toString() {
            return "StartClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$StartScreen;", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StartScreen implements OnboardingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final StartScreen f59599a = new StartScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof StartScreen);
        }

        public final int hashCode() {
            return -1812046285;
        }

        public final String toString() {
            return "StartScreen";
        }
    }
}

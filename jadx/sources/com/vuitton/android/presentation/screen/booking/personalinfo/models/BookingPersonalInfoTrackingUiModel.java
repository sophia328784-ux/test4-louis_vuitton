package com.vuitton.android.presentation.screen.booking.personalinfo.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel;", "", "LoginScreen", "PersonalInfoScreen", "LoginContinueEvent", "PersonalInfoConfirmEvent", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$LoginContinueEvent;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$LoginScreen;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$PersonalInfoConfirmEvent;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$PersonalInfoScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingPersonalInfoTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$LoginContinueEvent;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LoginContinueEvent implements BookingPersonalInfoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LoginContinueEvent f54727a = new LoginContinueEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoginContinueEvent);
        }

        public final int hashCode() {
            return -833273687;
        }

        public final String toString() {
            return "LoginContinueEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$LoginScreen;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LoginScreen implements BookingPersonalInfoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LoginScreen f54728a = new LoginScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoginScreen);
        }

        public final int hashCode() {
            return 439410358;
        }

        public final String toString() {
            return "LoginScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$PersonalInfoConfirmEvent;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PersonalInfoConfirmEvent implements BookingPersonalInfoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PersonalInfoConfirmEvent f54729a = new PersonalInfoConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PersonalInfoConfirmEvent);
        }

        public final int hashCode() {
            return -1247582713;
        }

        public final String toString() {
            return "PersonalInfoConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$PersonalInfoScreen;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PersonalInfoScreen implements BookingPersonalInfoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PersonalInfoScreen f54730a = new PersonalInfoScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PersonalInfoScreen);
        }

        public final int hashCode() {
            return -1917890439;
        }

        public final String toString() {
            return "PersonalInfoScreen";
        }
    }
}

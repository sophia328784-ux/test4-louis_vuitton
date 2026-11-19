package com.vuitton.android.presentation.screen.booking.personalinfo.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent;", "", "NavigateToLogin", "NavigateToInfoForm", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent$NavigateToInfoForm;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent$NavigateToLogin;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingPersonalInfoNavigationEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent$NavigateToInfoForm;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToInfoForm implements BookingPersonalInfoNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NavigateToInfoForm f54725a = new NavigateToInfoForm();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateToInfoForm);
        }

        public final int hashCode() {
            return 535660085;
        }

        public final String toString() {
            return "NavigateToInfoForm";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent$NavigateToLogin;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToLogin implements BookingPersonalInfoNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NavigateToLogin f54726a = new NavigateToLogin();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateToLogin);
        }

        public final int hashCode() {
            return 1926767270;
        }

        public final String toString() {
            return "NavigateToLogin";
        }
    }
}

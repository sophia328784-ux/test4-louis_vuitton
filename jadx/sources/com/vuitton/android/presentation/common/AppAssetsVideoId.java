package com.vuitton.android.presentation.common;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/common/AppAssetsVideoId;", "", "OnboardingOnlyVideoId", "LoginVideoId", "Lcom/vuitton/android/presentation/common/AppAssetsVideoId$LoginVideoId;", "Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AppAssetsVideoId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50721b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/common/AppAssetsVideoId$LoginVideoId;", "Lcom/vuitton/android/presentation/common/AppAssetsVideoId;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LoginVideoId extends AppAssetsVideoId {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final LoginVideoId f50722c = new LoginVideoId("a063269d-5962-4f0f-82bf-c7760e38b732", "a06327ca-ec92-4a11-811f-3b1b142cf438", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoginVideoId);
        }

        public final int hashCode() {
            return -1782808503;
        }

        public final String toString() {
            return "LoginVideoId";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId;", "Lcom/vuitton/android/presentation/common/AppAssetsVideoId;", "NotificationVideoId", "GeolocationVideoId", "Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId$GeolocationVideoId;", "Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId$NotificationVideoId;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class OnboardingOnlyVideoId extends AppAssetsVideoId {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId$GeolocationVideoId;", "Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class GeolocationVideoId extends OnboardingOnlyVideoId {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final GeolocationVideoId f50723c = new GeolocationVideoId("a06325c3-0a66-4cf8-b2ff-fae0e653533e", "a06326ff-46c0-41fa-aaa0-4b4ee19360cc", null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof GeolocationVideoId);
            }

            public final int hashCode() {
                return -1713466133;
            }

            public final String toString() {
                return "GeolocationVideoId";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId$NotificationVideoId;", "Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NotificationVideoId extends OnboardingOnlyVideoId {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final NotificationVideoId f50724c = new NotificationVideoId("a0632665-1866-42d3-a6d8-aa597fa58f1f", "a0632799-d119-4c70-a3fc-2f75853093c8", null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof NotificationVideoId);
            }

            public final int hashCode() {
                return 1679389712;
            }

            public final String toString() {
                return "NotificationVideoId";
            }
        }

        public OnboardingOnlyVideoId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            super(str, str2, null);
        }
    }

    public AppAssetsVideoId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f50720a = str;
        this.f50721b = str2;
    }
}

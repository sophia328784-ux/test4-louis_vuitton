package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;", "", "OnSocialLoginClickEvent", "OnSocialLoginSuccessEvent", "OnSocialLoginFailureEvent", "OnSocialLoginCloseEvent", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginCloseEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SocialLoginTrackingUiModel {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginClickEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialLoginClickEvent implements SocialLoginTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54171a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54173c;

        public OnSocialLoginClickEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54171a = trackingAuthOrigin;
            this.f54172b = trackingAuthEntryPoint;
            this.f54173c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialLoginClickEvent)) {
                return false;
            }
            OnSocialLoginClickEvent onSocialLoginClickEvent = (OnSocialLoginClickEvent) obj;
            return this.f54171a == onSocialLoginClickEvent.f54171a && this.f54172b == onSocialLoginClickEvent.f54172b && this.f54173c == onSocialLoginClickEvent.f54173c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54171a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54172b;
            return this.f54173c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialLoginClickEvent(origin=" + this.f54171a + ", entryPoint=" + this.f54172b + ", provider=" + this.f54173c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginCloseEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialLoginCloseEvent implements SocialLoginTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54174a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54175b;

        public OnSocialLoginCloseEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint) {
            this.f54174a = trackingAuthOrigin;
            this.f54175b = trackingAuthEntryPoint;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialLoginCloseEvent)) {
                return false;
            }
            OnSocialLoginCloseEvent onSocialLoginCloseEvent = (OnSocialLoginCloseEvent) obj;
            return this.f54174a == onSocialLoginCloseEvent.f54174a && this.f54175b == onSocialLoginCloseEvent.f54175b;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54174a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54175b;
            return iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0);
        }

        public final String toString() {
            return "OnSocialLoginCloseEvent(origin=" + this.f54174a + ", entryPoint=" + this.f54175b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginFailureEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialLoginFailureEvent implements SocialLoginTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54176a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54177b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54178c;

        public OnSocialLoginFailureEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54176a = trackingAuthOrigin;
            this.f54177b = trackingAuthEntryPoint;
            this.f54178c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialLoginFailureEvent)) {
                return false;
            }
            OnSocialLoginFailureEvent onSocialLoginFailureEvent = (OnSocialLoginFailureEvent) obj;
            return this.f54176a == onSocialLoginFailureEvent.f54176a && this.f54177b == onSocialLoginFailureEvent.f54177b && this.f54178c == onSocialLoginFailureEvent.f54178c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54176a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54177b;
            return this.f54178c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialLoginFailureEvent(origin=" + this.f54176a + ", entryPoint=" + this.f54177b + ", provider=" + this.f54178c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel$OnSocialLoginSuccessEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialLoginSuccessEvent implements SocialLoginTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54180b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54181c;

        public OnSocialLoginSuccessEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54179a = trackingAuthOrigin;
            this.f54180b = trackingAuthEntryPoint;
            this.f54181c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialLoginSuccessEvent)) {
                return false;
            }
            OnSocialLoginSuccessEvent onSocialLoginSuccessEvent = (OnSocialLoginSuccessEvent) obj;
            return this.f54179a == onSocialLoginSuccessEvent.f54179a && this.f54180b == onSocialLoginSuccessEvent.f54180b && this.f54181c == onSocialLoginSuccessEvent.f54181c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54179a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54180b;
            return this.f54181c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialLoginSuccessEvent(origin=" + this.f54179a + ", entryPoint=" + this.f54180b + ", provider=" + this.f54181c + ")";
        }
    }
}

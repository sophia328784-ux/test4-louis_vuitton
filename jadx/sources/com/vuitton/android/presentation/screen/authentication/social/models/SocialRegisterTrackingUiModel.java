package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.o60;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\b\n\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "", "OnSocialRegisterClickEvent", "OnSocialRegisterCloseEvent", "OnSocialRegisterConfirmEvent", "OnSocialRegisterPrivacyCheckBoxEvent", "OnSocialRegisterPrivacyLinkEvent", "OnSocialRegisterCloseProfileEvent", "OnSocialRegisterSuccessEvent", "OnSocialRegisterFailureEvent", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SocialRegisterTrackingUiModel {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialRegisterClickEvent implements SocialRegisterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54202a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54204c;

        public OnSocialRegisterClickEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54202a = trackingAuthOrigin;
            this.f54203b = trackingAuthEntryPoint;
            this.f54204c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialRegisterClickEvent)) {
                return false;
            }
            OnSocialRegisterClickEvent onSocialRegisterClickEvent = (OnSocialRegisterClickEvent) obj;
            return this.f54202a == onSocialRegisterClickEvent.f54202a && this.f54203b == onSocialRegisterClickEvent.f54203b && this.f54204c == onSocialRegisterClickEvent.f54204c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54202a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54203b;
            return this.f54204c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialRegisterClickEvent(origin=" + this.f54202a + ", entryPoint=" + this.f54203b + ", provider=" + this.f54204c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialRegisterCloseEvent implements SocialRegisterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54206b;

        public OnSocialRegisterCloseEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint) {
            this.f54205a = trackingAuthOrigin;
            this.f54206b = trackingAuthEntryPoint;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialRegisterCloseEvent)) {
                return false;
            }
            OnSocialRegisterCloseEvent onSocialRegisterCloseEvent = (OnSocialRegisterCloseEvent) obj;
            return this.f54205a == onSocialRegisterCloseEvent.f54205a && this.f54206b == onSocialRegisterCloseEvent.f54206b;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54205a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54206b;
            return iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0);
        }

        public final String toString() {
            return "OnSocialRegisterCloseEvent(origin=" + this.f54205a + ", entryPoint=" + this.f54206b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialRegisterCloseProfileEvent implements SocialRegisterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54207a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54209c;

        public OnSocialRegisterCloseProfileEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54207a = trackingAuthOrigin;
            this.f54208b = trackingAuthEntryPoint;
            this.f54209c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialRegisterCloseProfileEvent)) {
                return false;
            }
            OnSocialRegisterCloseProfileEvent onSocialRegisterCloseProfileEvent = (OnSocialRegisterCloseProfileEvent) obj;
            return this.f54207a == onSocialRegisterCloseProfileEvent.f54207a && this.f54208b == onSocialRegisterCloseProfileEvent.f54208b && this.f54209c == onSocialRegisterCloseProfileEvent.f54209c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54207a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54208b;
            return this.f54209c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialRegisterCloseProfileEvent(origin=" + this.f54207a + ", entryPoint=" + this.f54208b + ", provider=" + this.f54209c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialRegisterConfirmEvent implements SocialRegisterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54211b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54212c;

        public OnSocialRegisterConfirmEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54210a = trackingAuthOrigin;
            this.f54211b = trackingAuthEntryPoint;
            this.f54212c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialRegisterConfirmEvent)) {
                return false;
            }
            OnSocialRegisterConfirmEvent onSocialRegisterConfirmEvent = (OnSocialRegisterConfirmEvent) obj;
            return this.f54210a == onSocialRegisterConfirmEvent.f54210a && this.f54211b == onSocialRegisterConfirmEvent.f54211b && this.f54212c == onSocialRegisterConfirmEvent.f54212c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54210a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54211b;
            return this.f54212c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialRegisterConfirmEvent(origin=" + this.f54210a + ", entryPoint=" + this.f54211b + ", provider=" + this.f54212c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialRegisterFailureEvent implements SocialRegisterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54214b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54215c;

        public OnSocialRegisterFailureEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54213a = trackingAuthOrigin;
            this.f54214b = trackingAuthEntryPoint;
            this.f54215c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialRegisterFailureEvent)) {
                return false;
            }
            OnSocialRegisterFailureEvent onSocialRegisterFailureEvent = (OnSocialRegisterFailureEvent) obj;
            return this.f54213a == onSocialRegisterFailureEvent.f54213a && this.f54214b == onSocialRegisterFailureEvent.f54214b && this.f54215c == onSocialRegisterFailureEvent.f54215c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54213a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54214b;
            return this.f54215c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialRegisterFailureEvent(origin=" + this.f54213a + ", entryPoint=" + this.f54214b + ", provider=" + this.f54215c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "", "isChecked", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;ZLcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialRegisterPrivacyCheckBoxEvent implements SocialRegisterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54216a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54217b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f54218c;
        public final SocialAuthMode d;

        public OnSocialRegisterPrivacyCheckBoxEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, boolean z, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54216a = trackingAuthOrigin;
            this.f54217b = trackingAuthEntryPoint;
            this.f54218c = z;
            this.d = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialRegisterPrivacyCheckBoxEvent)) {
                return false;
            }
            OnSocialRegisterPrivacyCheckBoxEvent onSocialRegisterPrivacyCheckBoxEvent = (OnSocialRegisterPrivacyCheckBoxEvent) obj;
            return this.f54216a == onSocialRegisterPrivacyCheckBoxEvent.f54216a && this.f54217b == onSocialRegisterPrivacyCheckBoxEvent.f54217b && this.f54218c == onSocialRegisterPrivacyCheckBoxEvent.f54218c && this.d == onSocialRegisterPrivacyCheckBoxEvent.d;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54216a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54217b;
            return this.d.hashCode() + o60.b((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31, 31, this.f54218c);
        }

        public final String toString() {
            return "OnSocialRegisterPrivacyCheckBoxEvent(origin=" + this.f54216a + ", entryPoint=" + this.f54217b + ", isChecked=" + this.f54218c + ", provider=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialRegisterPrivacyLinkEvent implements SocialRegisterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54221c;

        public OnSocialRegisterPrivacyLinkEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54219a = trackingAuthOrigin;
            this.f54220b = trackingAuthEntryPoint;
            this.f54221c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialRegisterPrivacyLinkEvent)) {
                return false;
            }
            OnSocialRegisterPrivacyLinkEvent onSocialRegisterPrivacyLinkEvent = (OnSocialRegisterPrivacyLinkEvent) obj;
            return this.f54219a == onSocialRegisterPrivacyLinkEvent.f54219a && this.f54220b == onSocialRegisterPrivacyLinkEvent.f54220b && this.f54221c == onSocialRegisterPrivacyLinkEvent.f54221c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54219a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54220b;
            return this.f54221c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialRegisterPrivacyLinkEvent(origin=" + this.f54219a + ", entryPoint=" + this.f54220b + ", provider=" + this.f54221c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSocialRegisterSuccessEvent implements SocialRegisterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f54222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f54223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocialAuthMode f54224c;

        public OnSocialRegisterSuccessEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
            socialAuthMode.getClass();
            this.f54222a = trackingAuthOrigin;
            this.f54223b = trackingAuthEntryPoint;
            this.f54224c = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSocialRegisterSuccessEvent)) {
                return false;
            }
            OnSocialRegisterSuccessEvent onSocialRegisterSuccessEvent = (OnSocialRegisterSuccessEvent) obj;
            return this.f54222a == onSocialRegisterSuccessEvent.f54222a && this.f54223b == onSocialRegisterSuccessEvent.f54223b && this.f54224c == onSocialRegisterSuccessEvent.f54224c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f54222a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f54223b;
            return this.f54224c.hashCode() + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "OnSocialRegisterSuccessEvent(origin=" + this.f54222a + ", entryPoint=" + this.f54223b + ", provider=" + this.f54224c + ")";
        }
    }
}

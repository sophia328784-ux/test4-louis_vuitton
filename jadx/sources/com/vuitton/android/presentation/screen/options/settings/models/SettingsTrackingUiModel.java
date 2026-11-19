package com.vuitton.android.presentation.screen.options.settings.models;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000e\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0082\u0001\u000e\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d¨\u0006\u001eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "", "GoogleCustomerMatchBottomSheetScreen", "MissingPhoneNumberBottomSheetScreen", "ContactPreferencesScreen", "ConsentToggleEvent", "ViaPartnersClickEvent", "PrivacyPolicyClickEvent", "OpenProfileClickEvent", "CloseMissingPhoneNumberBottomSheetEvent", "SmsConsentToggleEvent", "ContactByPhoneToggleEvent", "ContactBySmsToggleEvent", "ContactByMailToggleEvent", "NewsletterToggleEvent", "EmailTrackingToggleEvent", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$CloseMissingPhoneNumberBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ConsentToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByMailToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByPhoneToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactBySmsToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactPreferencesScreen;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$EmailTrackingToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$GoogleCustomerMatchBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$MissingPhoneNumberBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$NewsletterToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$OpenProfileClickEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$PrivacyPolicyClickEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$SmsConsentToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SettingsTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$CloseMissingPhoneNumberBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseMissingPhoneNumberBottomSheetEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseMissingPhoneNumberBottomSheetEvent f60053a = new CloseMissingPhoneNumberBottomSheetEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseMissingPhoneNumberBottomSheetEvent);
        }

        public final int hashCode() {
            return -941676684;
        }

        public final String toString() {
            return "CloseMissingPhoneNumberBottomSheetEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ConsentToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConsentToggleEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60054a;

        public ConsentToggleEvent(boolean z) {
            this.f60054a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConsentToggleEvent) && this.f60054a == ((ConsentToggleEvent) obj).f60054a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60054a);
        }

        public final String toString() {
            return tr.i("ConsentToggleEvent(enabled=", ")", this.f60054a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByMailToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactByMailToggleEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60055a;

        public ContactByMailToggleEvent(boolean z) {
            this.f60055a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ContactByMailToggleEvent) && this.f60055a == ((ContactByMailToggleEvent) obj).f60055a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60055a);
        }

        public final String toString() {
            return tr.i("ContactByMailToggleEvent(enabled=", ")", this.f60055a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByPhoneToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactByPhoneToggleEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60056a;

        public ContactByPhoneToggleEvent(boolean z) {
            this.f60056a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ContactByPhoneToggleEvent) && this.f60056a == ((ContactByPhoneToggleEvent) obj).f60056a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60056a);
        }

        public final String toString() {
            return tr.i("ContactByPhoneToggleEvent(enabled=", ")", this.f60056a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactBySmsToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactBySmsToggleEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60057a;

        public ContactBySmsToggleEvent(boolean z) {
            this.f60057a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ContactBySmsToggleEvent) && this.f60057a == ((ContactBySmsToggleEvent) obj).f60057a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60057a);
        }

        public final String toString() {
            return tr.i("ContactBySmsToggleEvent(enabled=", ")", this.f60057a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactPreferencesScreen;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactPreferencesScreen implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContactPreferencesScreen f60058a = new ContactPreferencesScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContactPreferencesScreen);
        }

        public final int hashCode() {
            return 132910271;
        }

        public final String toString() {
            return "ContactPreferencesScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$EmailTrackingToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EmailTrackingToggleEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60059a;

        public EmailTrackingToggleEvent(boolean z) {
            this.f60059a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EmailTrackingToggleEvent) && this.f60059a == ((EmailTrackingToggleEvent) obj).f60059a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60059a);
        }

        public final String toString() {
            return tr.i("EmailTrackingToggleEvent(enabled=", ")", this.f60059a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$GoogleCustomerMatchBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoogleCustomerMatchBottomSheetScreen implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GoogleCustomerMatchBottomSheetScreen f60060a = new GoogleCustomerMatchBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoogleCustomerMatchBottomSheetScreen);
        }

        public final int hashCode() {
            return 920817997;
        }

        public final String toString() {
            return "GoogleCustomerMatchBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$MissingPhoneNumberBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MissingPhoneNumberBottomSheetScreen implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final MissingPhoneNumberBottomSheetScreen f60061a = new MissingPhoneNumberBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MissingPhoneNumberBottomSheetScreen);
        }

        public final int hashCode() {
            return 1758229524;
        }

        public final String toString() {
            return "MissingPhoneNumberBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$NewsletterToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NewsletterToggleEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60062a;

        public NewsletterToggleEvent(boolean z) {
            this.f60062a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NewsletterToggleEvent) && this.f60062a == ((NewsletterToggleEvent) obj).f60062a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60062a);
        }

        public final String toString() {
            return tr.i("NewsletterToggleEvent(enabled=", ")", this.f60062a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$OpenProfileClickEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenProfileClickEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenProfileClickEvent f60063a = new OpenProfileClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenProfileClickEvent);
        }

        public final int hashCode() {
            return 603766198;
        }

        public final String toString() {
            return "OpenProfileClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$PrivacyPolicyClickEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PrivacyPolicyClickEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PrivacyPolicyClickEvent f60064a = new PrivacyPolicyClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PrivacyPolicyClickEvent);
        }

        public final int hashCode() {
            return 1669914001;
        }

        public final String toString() {
            return "PrivacyPolicyClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$SmsConsentToggleEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "", "enabled", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SmsConsentToggleEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60065a;

        public SmsConsentToggleEvent(boolean z) {
            this.f60065a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SmsConsentToggleEvent) && this.f60065a == ((SmsConsentToggleEvent) obj).f60065a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60065a);
        }

        public final String toString() {
            return tr.i("SmsConsentToggleEvent(enabled=", ")", this.f60065a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;", "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViaPartnersClickEvent implements SettingsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ViaPartnersClickEvent f60066a = new ViaPartnersClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ViaPartnersClickEvent);
        }

        public final int hashCode() {
            return -1424278512;
        }

        public final String toString() {
            return "ViaPartnersClickEvent";
        }
    }
}

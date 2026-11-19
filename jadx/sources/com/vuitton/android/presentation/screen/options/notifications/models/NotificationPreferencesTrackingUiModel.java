package com.vuitton.android.presentation.screen.options.notifications.models;

import defpackage.cj;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;", "", "NotificationsPreferencesEntryPointEvent", "NotificationsPreferencesSaveEvent", "NotificationsPreferencesSettingsEvent", "EnableBackInStock", "DisableBackInStock", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$DisableBackInStock;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$EnableBackInStock;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesEntryPointEvent;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesSaveEvent;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesSettingsEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NotificationPreferencesTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$DisableBackInStock;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DisableBackInStock implements NotificationPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DisableBackInStock f59934a = new DisableBackInStock();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DisableBackInStock);
        }

        public final int hashCode() {
            return -593683664;
        }

        public final String toString() {
            return "DisableBackInStock";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$EnableBackInStock;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EnableBackInStock implements NotificationPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EnableBackInStock f59935a = new EnableBackInStock();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EnableBackInStock);
        }

        public final int hashCode() {
            return 1412211097;
        }

        public final String toString() {
            return "EnableBackInStock";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesEntryPointEvent;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationsPreferencesEntryPointEvent implements NotificationPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationsPreferencesEntryPointEvent f59936a = new NotificationsPreferencesEntryPointEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationsPreferencesEntryPointEvent);
        }

        public final int hashCode() {
            return 249805182;
        }

        public final String toString() {
            return "NotificationsPreferencesEntryPointEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesSaveEvent;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;", "", "notifsAll", "notifsBrand", "notifsProduct", "notifyMe", "<init>", "(ZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationsPreferencesSaveEvent implements NotificationPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59937a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f59938b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f59939c;
        public final boolean d;

        public NotificationsPreferencesSaveEvent(boolean z, boolean z2, boolean z3, boolean z4) {
            this.f59937a = z;
            this.f59938b = z2;
            this.f59939c = z3;
            this.d = z4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NotificationsPreferencesSaveEvent)) {
                return false;
            }
            NotificationsPreferencesSaveEvent notificationsPreferencesSaveEvent = (NotificationsPreferencesSaveEvent) obj;
            return this.f59937a == notificationsPreferencesSaveEvent.f59937a && this.f59938b == notificationsPreferencesSaveEvent.f59938b && this.f59939c == notificationsPreferencesSaveEvent.f59939c && this.d == notificationsPreferencesSaveEvent.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + o60.b(o60.b(Boolean.hashCode(this.f59937a) * 31, 31, this.f59938b), 31, this.f59939c);
        }

        public final String toString() {
            return pq0.p(cj.m("NotificationsPreferencesSaveEvent(notifsAll=", ", notifsBrand=", ", notifsProduct=", this.f59937a, this.f59938b), this.f59939c, ", notifyMe=", this.d, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesSettingsEvent;", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationsPreferencesSettingsEvent implements NotificationPreferencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationsPreferencesSettingsEvent f59940a = new NotificationsPreferencesSettingsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationsPreferencesSettingsEvent);
        }

        public final int hashCode() {
            return 319041849;
        }

        public final String toString() {
            return "NotificationsPreferencesSettingsEvent";
        }
    }
}

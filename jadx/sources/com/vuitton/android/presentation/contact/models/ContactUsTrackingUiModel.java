package com.vuitton.android.presentation.contact.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\n\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\u0082\u0001\n\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "", "ContactUsScreen", "PowerfrontScreen", "OnViewMoreClickEvent", "OnIconClickEvent", "OnContactMethodClickEvent", "OnPowerfrontCloseEvent", "OnPowerfrontMinimiseEvent", "OnAppLinkClickEvent", "OnPowerfrontAcceptConsentEvent", "OnPowerfrontNotificationClickEvent", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$ContactUsScreen;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnAppLinkClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnContactMethodClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontCloseEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontMinimiseEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontNotificationClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$PowerfrontScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ContactUsTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$ContactUsScreen;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "", "isChatEnabled", "", "origin", "<init>", "(ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactUsScreen extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f51140a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51141b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContactUsScreen(boolean z, String str) {
            super(null);
            str.getClass();
            this.f51140a = z;
            this.f51141b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ContactUsScreen)) {
                return false;
            }
            ContactUsScreen contactUsScreen = (ContactUsScreen) obj;
            return this.f51140a == contactUsScreen.f51140a && Intrinsics.c(this.f51141b, contactUsScreen.f51141b);
        }

        public final int hashCode() {
            return this.f51141b.hashCode() + (Boolean.hashCode(this.f51140a) * 31);
        }

        public final String toString() {
            return "ContactUsScreen(isChatEnabled=" + this.f51140a + ", origin=" + this.f51141b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnAppLinkClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAppLinkClickEvent extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51142a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnAppLinkClickEvent(String str) {
            super(null);
            str.getClass();
            this.f51142a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnAppLinkClickEvent) && Intrinsics.c(this.f51142a, ((OnAppLinkClickEvent) obj).f51142a);
        }

        public final int hashCode() {
            return this.f51142a.hashCode();
        }

        public final String toString() {
            return fc.h("OnAppLinkClickEvent(url=", this.f51142a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnContactMethodClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "contactUsMethod", "", "origin", "<init>", "(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnContactMethodClickEvent extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContactUsMethod f51143a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51144b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnContactMethodClickEvent(ContactUsMethod contactUsMethod, String str) {
            super(null);
            contactUsMethod.getClass();
            str.getClass();
            this.f51143a = contactUsMethod;
            this.f51144b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnContactMethodClickEvent)) {
                return false;
            }
            OnContactMethodClickEvent onContactMethodClickEvent = (OnContactMethodClickEvent) obj;
            return Intrinsics.c(this.f51143a, onContactMethodClickEvent.f51143a) && Intrinsics.c(this.f51144b, onContactMethodClickEvent.f51144b);
        }

        public final int hashCode() {
            return this.f51144b.hashCode() + (this.f51143a.hashCode() * 31);
        }

        public final String toString() {
            return "OnContactMethodClickEvent(contactUsMethod=" + this.f51143a + ", origin=" + this.f51144b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "", "hasNotification", "", "screen", "origin", "<init>", "(ZLjava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnIconClickEvent extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f51145a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51146b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f51147c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnIconClickEvent(boolean z, String str, String str2) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f51145a = z;
            this.f51146b = str;
            this.f51147c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnIconClickEvent)) {
                return false;
            }
            OnIconClickEvent onIconClickEvent = (OnIconClickEvent) obj;
            return this.f51145a == onIconClickEvent.f51145a && Intrinsics.c(this.f51146b, onIconClickEvent.f51146b) && Intrinsics.c(this.f51147c, onIconClickEvent.f51147c);
        }

        public final int hashCode() {
            return this.f51147c.hashCode() + fc.b(Boolean.hashCode(this.f51145a) * 31, 31, this.f51146b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OnIconClickEvent(hasNotification=");
            sb.append(this.f51145a);
            sb.append(", screen=");
            sb.append(this.f51146b);
            sb.append(", origin=");
            return n00.r(this.f51147c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "", "origin", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPowerfrontAcceptConsentEvent extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51148a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnPowerfrontAcceptConsentEvent(String str) {
            super(null);
            str.getClass();
            this.f51148a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnPowerfrontAcceptConsentEvent) && Intrinsics.c(this.f51148a, ((OnPowerfrontAcceptConsentEvent) obj).f51148a);
        }

        public final int hashCode() {
            return this.f51148a.hashCode();
        }

        public final String toString() {
            return fc.h("OnPowerfrontAcceptConsentEvent(origin=", this.f51148a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontCloseEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "", "origin", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPowerfrontCloseEvent extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51149a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnPowerfrontCloseEvent(String str) {
            super(null);
            str.getClass();
            this.f51149a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnPowerfrontCloseEvent) && Intrinsics.c(this.f51149a, ((OnPowerfrontCloseEvent) obj).f51149a);
        }

        public final int hashCode() {
            return this.f51149a.hashCode();
        }

        public final String toString() {
            return fc.h("OnPowerfrontCloseEvent(origin=", this.f51149a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontMinimiseEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "", "origin", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPowerfrontMinimiseEvent extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51150a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnPowerfrontMinimiseEvent(String str) {
            super(null);
            str.getClass();
            this.f51150a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnPowerfrontMinimiseEvent) && Intrinsics.c(this.f51150a, ((OnPowerfrontMinimiseEvent) obj).f51150a);
        }

        public final int hashCode() {
            return this.f51150a.hashCode();
        }

        public final String toString() {
            return fc.h("OnPowerfrontMinimiseEvent(origin=", this.f51150a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontNotificationClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPowerfrontNotificationClickEvent extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnPowerfrontNotificationClickEvent f51151a = new OnPowerfrontNotificationClickEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnPowerfrontNotificationClickEvent);
        }

        public final int hashCode() {
            return -405880517;
        }

        public final String toString() {
            return "OnPowerfrontNotificationClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "", "origin", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnViewMoreClickEvent extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51152a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnViewMoreClickEvent(String str) {
            super(null);
            str.getClass();
            this.f51152a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnViewMoreClickEvent) && Intrinsics.c(this.f51152a, ((OnViewMoreClickEvent) obj).f51152a);
        }

        public final int hashCode() {
            return this.f51152a.hashCode();
        }

        public final String toString() {
            return fc.h("OnViewMoreClickEvent(origin=", this.f51152a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$PowerfrontScreen;", "Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PowerfrontScreen extends ContactUsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PowerfrontScreen f51153a = new PowerfrontScreen(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PowerfrontScreen);
        }

        public final int hashCode() {
            return 1502938923;
        }

        public final String toString() {
            return "PowerfrontScreen";
        }
    }

    public ContactUsTrackingUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

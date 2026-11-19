package com.vuitton.android.core.events;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0010\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0082\u0001\u0010\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !¨\u0006\"À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent;", "", "ConnectivityRefreshFromServerEvent", "RefreshCertificatesOnMyLVEvent", "RefreshRepairsEvent", "RefreshRepairAddressEvent", "RefreshTrunkSpeakerItemEvent", "WishListUpdatedEvent", "RefreshUserAvatar", "RefreshUnreadNotifications", "RefreshAppointmentsEvent", "RefreshCartCountEvent", "RefreshCartEvent", "LogInEvent", "LogOutEvent", "RefreshAuthFromCheckoutEvent", "ChatConsentUpdatedEvent", "ConsentsUpdatedEvent", "Lcom/vuitton/android/core/events/AppEvent$ChatConsentUpdatedEvent;", "Lcom/vuitton/android/core/events/AppEvent$ConnectivityRefreshFromServerEvent;", "Lcom/vuitton/android/core/events/AppEvent$ConsentsUpdatedEvent;", "Lcom/vuitton/android/core/events/AppEvent$LogInEvent;", "Lcom/vuitton/android/core/events/AppEvent$LogOutEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshAuthFromCheckoutEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshCartCountEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshCartEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshCertificatesOnMyLVEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshRepairAddressEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshTrunkSpeakerItemEvent;", "Lcom/vuitton/android/core/events/AppEvent$RefreshUnreadNotifications;", "Lcom/vuitton/android/core/events/AppEvent$RefreshUserAvatar;", "Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AppEvent {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$ChatConsentUpdatedEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "", "hasConsent", "<init>", "(Z)V", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChatConsentUpdatedEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f43494a;

        public ChatConsentUpdatedEvent(boolean z) {
            this.f43494a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChatConsentUpdatedEvent) && this.f43494a == ((ChatConsentUpdatedEvent) obj).f43494a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f43494a);
        }

        public final String toString() {
            return tr.i("ChatConsentUpdatedEvent(hasConsent=", ")", this.f43494a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$ConnectivityRefreshFromServerEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConnectivityRefreshFromServerEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ConnectivityRefreshFromServerEvent f43495a = new ConnectivityRefreshFromServerEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ConnectivityRefreshFromServerEvent);
        }

        public final int hashCode() {
            return 2084271303;
        }

        public final String toString() {
            return "ConnectivityRefreshFromServerEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$ConsentsUpdatedEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConsentsUpdatedEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ConsentsUpdatedEvent f43496a = new ConsentsUpdatedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ConsentsUpdatedEvent);
        }

        public final int hashCode() {
            return -824040234;
        }

        public final String toString() {
            return "ConsentsUpdatedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$LogInEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LogInEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LogInEvent f43497a = new LogInEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LogInEvent);
        }

        public final int hashCode() {
            return -333318641;
        }

        public final String toString() {
            return "LogInEvent";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$LogOutEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LogOutEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LogOutEvent f43498a = new LogOutEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LogOutEvent);
        }

        public final int hashCode() {
            return -952609390;
        }

        public final String toString() {
            return "LogOutEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshAppointmentsEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RefreshAppointmentsEvent f43499a = new RefreshAppointmentsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RefreshAppointmentsEvent);
        }

        public final int hashCode() {
            return -1129892439;
        }

        public final String toString() {
            return "RefreshAppointmentsEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshCartEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshCartEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RefreshCartEvent f43502a = new RefreshCartEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RefreshCartEvent);
        }

        public final int hashCode() {
            return -2042721859;
        }

        public final String toString() {
            return "RefreshCartEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshCertificatesOnMyLVEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshCertificatesOnMyLVEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RefreshCertificatesOnMyLVEvent f43503a = new RefreshCertificatesOnMyLVEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RefreshCertificatesOnMyLVEvent);
        }

        public final int hashCode() {
            return -169721172;
        }

        public final String toString() {
            return "RefreshCertificatesOnMyLVEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshRepairAddressEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshRepairAddressEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RefreshRepairAddressEvent f43504a = new RefreshRepairAddressEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RefreshRepairAddressEvent);
        }

        public final int hashCode() {
            return 212580400;
        }

        public final String toString() {
            return "RefreshRepairAddressEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshRepairsEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RefreshRepairsEvent f43505a = new RefreshRepairsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RefreshRepairsEvent);
        }

        public final int hashCode() {
            return -492239247;
        }

        public final String toString() {
            return "RefreshRepairsEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshTrunkSpeakerItemEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshTrunkSpeakerItemEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RefreshTrunkSpeakerItemEvent f43506a = new RefreshTrunkSpeakerItemEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RefreshTrunkSpeakerItemEvent);
        }

        public final int hashCode() {
            return 1655829951;
        }

        public final String toString() {
            return "RefreshTrunkSpeakerItemEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshUnreadNotifications;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshUnreadNotifications implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RefreshUnreadNotifications f43507a = new RefreshUnreadNotifications();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RefreshUnreadNotifications);
        }

        public final int hashCode() {
            return 1766601756;
        }

        public final String toString() {
            return "RefreshUnreadNotifications";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshUserAvatar;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshUserAvatar implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RefreshUserAvatar f43508a = new RefreshUserAvatar();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RefreshUserAvatar);
        }

        public final int hashCode() {
            return 612078337;
        }

        public final String toString() {
            return "RefreshUserAvatar";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WishListUpdatedEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WishListUpdatedEvent f43509a = new WishListUpdatedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WishListUpdatedEvent);
        }

        public final int hashCode() {
            return -1187841758;
        }

        public final String toString() {
            return "WishListUpdatedEvent";
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshAuthFromCheckoutEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "", "currentWebViewUrl", "<init>", "(Ljava/lang/String;)V", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshAuthFromCheckoutEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f43500a;

        public /* synthetic */ RefreshAuthFromCheckoutEvent(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RefreshAuthFromCheckoutEvent) && Intrinsics.c(this.f43500a, ((RefreshAuthFromCheckoutEvent) obj).f43500a);
        }

        public final int hashCode() {
            String str = this.f43500a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("RefreshAuthFromCheckoutEvent(currentWebViewUrl=", this.f43500a, ")");
        }

        public RefreshAuthFromCheckoutEvent(String str) {
            this.f43500a = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public RefreshAuthFromCheckoutEvent() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/core/events/AppEvent$RefreshCartCountEvent;", "Lcom/vuitton/android/core/events/AppEvent;", "", b.a.f24018f, "<init>", "(Ljava/lang/Integer;)V", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RefreshCartCountEvent implements AppEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Integer f43501a;

        public /* synthetic */ RefreshCartCountEvent(Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : num);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RefreshCartCountEvent) && Intrinsics.c(this.f43501a, ((RefreshCartCountEvent) obj).f43501a);
        }

        public final int hashCode() {
            Integer num = this.f43501a;
            if (num == null) {
                return 0;
            }
            return num.hashCode();
        }

        public final String toString() {
            return "RefreshCartCountEvent(count=" + this.f43501a + ")";
        }

        public RefreshCartCountEvent(Integer num) {
            this.f43501a = num;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public RefreshCartCountEvent() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }
}

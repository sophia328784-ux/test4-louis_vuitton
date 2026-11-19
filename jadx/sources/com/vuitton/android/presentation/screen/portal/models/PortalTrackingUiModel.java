package com.vuitton.android.presentation.screen.portal.models;

import com.vuitton.android.presentation.screen.portal.PortalSwipeType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;", "", "Screen", "OnPortalSwipeEvent", "OnHitCtaPortalEvent", "OnHitClosePortalEvent", "OnNotifyMeClickEvent", "OnNotifyMeSuccessEvent", "OnNotifyMeAlreadyNotifiedEvent", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitClosePortalEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitCtaPortalEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeClickEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeSuccessEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnPortalSwipeEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$Screen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PortalTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitClosePortalEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitClosePortalEvent implements PortalTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitClosePortalEvent f63317a = new OnHitClosePortalEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitClosePortalEvent);
        }

        public final int hashCode() {
            return 436651309;
        }

        public final String toString() {
            return "OnHitClosePortalEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitCtaPortalEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitCtaPortalEvent implements PortalTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitCtaPortalEvent f63318a = new OnHitCtaPortalEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitCtaPortalEvent);
        }

        public final int hashCode() {
            return 491578325;
        }

        public final String toString() {
            return "OnHitCtaPortalEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnNotifyMeAlreadyNotifiedEvent implements PortalTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnNotifyMeAlreadyNotifiedEvent f63319a = new OnNotifyMeAlreadyNotifiedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNotifyMeAlreadyNotifiedEvent);
        }

        public final int hashCode() {
            return -2092924857;
        }

        public final String toString() {
            return "OnNotifyMeAlreadyNotifiedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeClickEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnNotifyMeClickEvent implements PortalTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnNotifyMeClickEvent f63320a = new OnNotifyMeClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNotifyMeClickEvent);
        }

        public final int hashCode() {
            return -1578443761;
        }

        public final String toString() {
            return "OnNotifyMeClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeSuccessEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnNotifyMeSuccessEvent implements PortalTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnNotifyMeSuccessEvent f63321a = new OnNotifyMeSuccessEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNotifyMeSuccessEvent);
        }

        public final int hashCode() {
            return -615931084;
        }

        public final String toString() {
            return "OnNotifyMeSuccessEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnPortalSwipeEvent;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/portal/PortalSwipeType;", "action", "<init>", "(Lcom/vuitton/android/presentation/screen/portal/PortalSwipeType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPortalSwipeEvent implements PortalTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PortalSwipeType f63322a;

        public OnPortalSwipeEvent(PortalSwipeType portalSwipeType) {
            portalSwipeType.getClass();
            this.f63322a = portalSwipeType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnPortalSwipeEvent) && this.f63322a == ((OnPortalSwipeEvent) obj).f63322a;
        }

        public final int hashCode() {
            return this.f63322a.hashCode();
        }

        public final String toString() {
            return "OnPortalSwipeEvent(action=" + this.f63322a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$Screen;", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Screen implements PortalTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Screen f63323a = new Screen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Screen);
        }

        public final int hashCode() {
            return -1175165079;
        }

        public final String toString() {
            return "Screen";
        }
    }
}

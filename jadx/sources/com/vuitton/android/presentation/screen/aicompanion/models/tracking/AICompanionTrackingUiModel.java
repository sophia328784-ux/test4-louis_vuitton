package com.vuitton.android.presentation.screen.aicompanion.models.tracking;

import com.batch.android.s.b;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0017\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0082\u0001\u0017\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./¨\u00060À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "", "MainScreen", "HistoryScreen", "OnHitCompanionEntryButtonEvent", "OnHitCompanionBannerEvent", "OnHitExitOnboardingEvent", "OnHitSkipOnboardingEvent", "OnHitVersionLabelEvent", "OnHitLeaveConfirmationButtonEvent", "OnHitStayButtonEvent", "OnCloseExitPopinEvent", "OnHitExitCompanionButtonEvent", "OnHitHistoryButtonEvent", "OnHitSuggestionCardEvent", "OnHitMicrophoneButtonEvent", "OnHitSendButtonEvent", "OnLongPressMessageEvent", "OnHitCopyMessageEvent", "OnHitEditMessageEvent", "OnHitNewConversationEvent", "OnHitHistoryConversationEvent", "OnHitDeleteHistoryConversationEvent", "OnHitHistoryNewConversationEvent", "OnHitRedirectCardEvent", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$HistoryScreen;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$MainScreen;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnCloseExitPopinEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionBannerEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionEntryButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCopyMessageEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitDeleteHistoryConversationEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitEditMessageEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitExitCompanionButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitExitOnboardingEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryConversationEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryNewConversationEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitLeaveConfirmationButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitMicrophoneButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitNewConversationEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitRedirectCardEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSendButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSkipOnboardingEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitStayButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSuggestionCardEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitVersionLabelEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnLongPressMessageEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AICompanionTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$HistoryScreen;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HistoryScreen implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HistoryScreen f52912a = new HistoryScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof HistoryScreen);
        }

        public final int hashCode() {
            return -2054590776;
        }

        public final String toString() {
            return "HistoryScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$MainScreen;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MainScreen implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final MainScreen f52913a = new MainScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MainScreen);
        }

        public final int hashCode() {
            return 1058318301;
        }

        public final String toString() {
            return "MainScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnCloseExitPopinEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCloseExitPopinEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCloseExitPopinEvent f52914a = new OnCloseExitPopinEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCloseExitPopinEvent);
        }

        public final int hashCode() {
            return 1235554595;
        }

        public final String toString() {
            return "OnCloseExitPopinEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionBannerEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "", "origin", b.a.f24015b, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitCompanionBannerEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52915a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f52916b;

        public OnHitCompanionBannerEvent(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f52915a = str;
            this.f52916b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitCompanionBannerEvent)) {
                return false;
            }
            OnHitCompanionBannerEvent onHitCompanionBannerEvent = (OnHitCompanionBannerEvent) obj;
            return Intrinsics.c(this.f52915a, onHitCompanionBannerEvent.f52915a) && Intrinsics.c(this.f52916b, onHitCompanionBannerEvent.f52916b);
        }

        public final int hashCode() {
            return this.f52916b.hashCode() + (this.f52915a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("OnHitCompanionBannerEvent(origin=", this.f52915a, ", id=", this.f52916b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCompanionEntryButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "", "origin", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitCompanionEntryButtonEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52917a;

        public OnHitCompanionEntryButtonEvent(String str) {
            str.getClass();
            this.f52917a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitCompanionEntryButtonEvent) && Intrinsics.c(this.f52917a, ((OnHitCompanionEntryButtonEvent) obj).f52917a);
        }

        public final int hashCode() {
            return this.f52917a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitCompanionEntryButtonEvent(origin=", this.f52917a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCopyMessageEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitCopyMessageEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitCopyMessageEvent f52918a = new OnHitCopyMessageEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitCopyMessageEvent);
        }

        public final int hashCode() {
            return 1082067172;
        }

        public final String toString() {
            return "OnHitCopyMessageEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitDeleteHistoryConversationEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitDeleteHistoryConversationEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitDeleteHistoryConversationEvent f52919a = new OnHitDeleteHistoryConversationEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitDeleteHistoryConversationEvent);
        }

        public final int hashCode() {
            return 1180672874;
        }

        public final String toString() {
            return "OnHitDeleteHistoryConversationEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitEditMessageEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitEditMessageEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitEditMessageEvent f52920a = new OnHitEditMessageEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitEditMessageEvent);
        }

        public final int hashCode() {
            return 1368756217;
        }

        public final String toString() {
            return "OnHitEditMessageEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitExitCompanionButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitExitCompanionButtonEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitExitCompanionButtonEvent f52921a = new OnHitExitCompanionButtonEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitExitCompanionButtonEvent);
        }

        public final int hashCode() {
            return -1934736362;
        }

        public final String toString() {
            return "OnHitExitCompanionButtonEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitExitOnboardingEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitExitOnboardingEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitExitOnboardingEvent f52922a = new OnHitExitOnboardingEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitExitOnboardingEvent);
        }

        public final int hashCode() {
            return -156101435;
        }

        public final String toString() {
            return "OnHitExitOnboardingEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitHistoryButtonEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitHistoryButtonEvent f52923a = new OnHitHistoryButtonEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitHistoryButtonEvent);
        }

        public final int hashCode() {
            return 259160144;
        }

        public final String toString() {
            return "OnHitHistoryButtonEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryConversationEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitHistoryConversationEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitHistoryConversationEvent f52924a = new OnHitHistoryConversationEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitHistoryConversationEvent);
        }

        public final int hashCode() {
            return 974190495;
        }

        public final String toString() {
            return "OnHitHistoryConversationEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryNewConversationEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitHistoryNewConversationEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitHistoryNewConversationEvent f52925a = new OnHitHistoryNewConversationEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitHistoryNewConversationEvent);
        }

        public final int hashCode() {
            return -593650353;
        }

        public final String toString() {
            return "OnHitHistoryNewConversationEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitLeaveConfirmationButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitLeaveConfirmationButtonEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitLeaveConfirmationButtonEvent f52926a = new OnHitLeaveConfirmationButtonEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitLeaveConfirmationButtonEvent);
        }

        public final int hashCode() {
            return -1390030248;
        }

        public final String toString() {
            return "OnHitLeaveConfirmationButtonEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitMicrophoneButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitMicrophoneButtonEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitMicrophoneButtonEvent f52927a = new OnHitMicrophoneButtonEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitMicrophoneButtonEvent);
        }

        public final int hashCode() {
            return 1095424642;
        }

        public final String toString() {
            return "OnHitMicrophoneButtonEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitNewConversationEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitNewConversationEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitNewConversationEvent f52928a = new OnHitNewConversationEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitNewConversationEvent);
        }

        public final int hashCode() {
            return 325110291;
        }

        public final String toString() {
            return "OnHitNewConversationEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitRedirectCardEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitRedirectCardEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52929a;

        public OnHitRedirectCardEvent(String str) {
            str.getClass();
            this.f52929a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitRedirectCardEvent) && Intrinsics.c(this.f52929a, ((OnHitRedirectCardEvent) obj).f52929a);
        }

        public final int hashCode() {
            return this.f52929a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitRedirectCardEvent(id=", this.f52929a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSendButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitSendButtonEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitSendButtonEvent f52930a = new OnHitSendButtonEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitSendButtonEvent);
        }

        public final int hashCode() {
            return -562065308;
        }

        public final String toString() {
            return "OnHitSendButtonEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSkipOnboardingEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitSkipOnboardingEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitSkipOnboardingEvent f52931a = new OnHitSkipOnboardingEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitSkipOnboardingEvent);
        }

        public final int hashCode() {
            return -1269597628;
        }

        public final String toString() {
            return "OnHitSkipOnboardingEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitStayButtonEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitStayButtonEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitStayButtonEvent f52932a = new OnHitStayButtonEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitStayButtonEvent);
        }

        public final int hashCode() {
            return -1620468493;
        }

        public final String toString() {
            return "OnHitStayButtonEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSuggestionCardEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitSuggestionCardEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitSuggestionCardEvent f52933a = new OnHitSuggestionCardEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitSuggestionCardEvent);
        }

        public final int hashCode() {
            return 1372134474;
        }

        public final String toString() {
            return "OnHitSuggestionCardEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitVersionLabelEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitVersionLabelEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitVersionLabelEvent f52934a = new OnHitVersionLabelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitVersionLabelEvent);
        }

        public final int hashCode() {
            return -521623422;
        }

        public final String toString() {
            return "OnHitVersionLabelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnLongPressMessageEvent;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnLongPressMessageEvent implements AICompanionTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnLongPressMessageEvent f52935a = new OnLongPressMessageEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnLongPressMessageEvent);
        }

        public final int hashCode() {
            return 988068259;
        }

        public final String toString() {
            return "OnLongPressMessageEvent";
        }
    }
}

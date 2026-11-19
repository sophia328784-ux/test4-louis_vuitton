package com.vuitton.android.presentation.screen.booking.summary.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\t\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u0082\u0001\t\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "", "SummaryScreen", "ModifyEvent", "DeleteIntentionEvent", "DeleteConfirmationEvent", "ExtendExperienceEvent", "CloseIntentionEvent", "CloseAbortedEvent", "CloseConfirmedEvent", "ContinueEvent", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseAbortedEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseConfirmedEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseIntentionEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ContinueEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteConfirmationEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteIntentionEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ExtendExperienceEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ModifyEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$SummaryScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingSummaryTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseAbortedEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseAbortedEvent implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseAbortedEvent f54804a = new CloseAbortedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseAbortedEvent);
        }

        public final int hashCode() {
            return 463316766;
        }

        public final String toString() {
            return "CloseAbortedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseConfirmedEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseConfirmedEvent implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseConfirmedEvent f54805a = new CloseConfirmedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseConfirmedEvent);
        }

        public final int hashCode() {
            return -1269413682;
        }

        public final String toString() {
            return "CloseConfirmedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseIntentionEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseIntentionEvent implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseIntentionEvent f54806a = new CloseIntentionEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseIntentionEvent);
        }

        public final int hashCode() {
            return 449663073;
        }

        public final String toString() {
            return "CloseIntentionEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ContinueEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContinueEvent implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContinueEvent f54807a = new ContinueEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContinueEvent);
        }

        public final int hashCode() {
            return 859511982;
        }

        public final String toString() {
            return "ContinueEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteConfirmationEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeleteConfirmationEvent implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54808a;

        public DeleteConfirmationEvent(String str) {
            str.getClass();
            this.f54808a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DeleteConfirmationEvent) && Intrinsics.c(this.f54808a, ((DeleteConfirmationEvent) obj).f54808a);
        }

        public final int hashCode() {
            return this.f54808a.hashCode();
        }

        public final String toString() {
            return fc.h("DeleteConfirmationEvent(experienceId=", this.f54808a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteIntentionEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeleteIntentionEvent implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54809a;

        public DeleteIntentionEvent(String str) {
            str.getClass();
            this.f54809a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DeleteIntentionEvent) && Intrinsics.c(this.f54809a, ((DeleteIntentionEvent) obj).f54809a);
        }

        public final int hashCode() {
            return this.f54809a.hashCode();
        }

        public final String toString() {
            return fc.h("DeleteIntentionEvent(experienceId=", this.f54809a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ExtendExperienceEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExtendExperienceEvent implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54810a;

        public ExtendExperienceEvent(String str) {
            str.getClass();
            this.f54810a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExtendExperienceEvent) && Intrinsics.c(this.f54810a, ((ExtendExperienceEvent) obj).f54810a);
        }

        public final int hashCode() {
            return this.f54810a.hashCode();
        }

        public final String toString() {
            return fc.h("ExtendExperienceEvent(experienceId=", this.f54810a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ModifyEvent;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModifyEvent implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54811a;

        public ModifyEvent(String str) {
            str.getClass();
            this.f54811a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ModifyEvent) && Intrinsics.c(this.f54811a, ((ModifyEvent) obj).f54811a);
        }

        public final int hashCode() {
            return this.f54811a.hashCode();
        }

        public final String toString() {
            return fc.h("ModifyEvent(experienceId=", this.f54811a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$SummaryScreen;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SummaryScreen implements BookingSummaryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SummaryScreen f54812a = new SummaryScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SummaryScreen);
        }

        public final int hashCode() {
            return -1164544467;
        }

        public final String toString() {
            return "SummaryScreen";
        }
    }
}

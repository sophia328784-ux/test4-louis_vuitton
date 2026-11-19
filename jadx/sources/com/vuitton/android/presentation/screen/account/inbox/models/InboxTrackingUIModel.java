package com.vuitton.android.presentation.screen.account.inbox.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\t\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u0082\u0001\t\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "", "Screen", "NotificationClicked", "NotificationLongClicked", "NotificationSwiped", "NotificationDeleted", "TryAgainClicked", "NotificationDialogClosed", "TooltipOpened", "TooltipClosed", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationClicked;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationDeleted;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationDialogClosed;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationLongClicked;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationSwiped;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$Screen;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TooltipClosed;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TooltipOpened;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TryAgainClicked;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface InboxTrackingUIModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationClicked;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationClicked implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationClicked f52417a = new NotificationClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationClicked);
        }

        public final int hashCode() {
            return -932298750;
        }

        public final String toString() {
            return "NotificationClicked";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationDeleted;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationDeleted implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationDeleted f52418a = new NotificationDeleted();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationDeleted);
        }

        public final int hashCode() {
            return -242360332;
        }

        public final String toString() {
            return "NotificationDeleted";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationDialogClosed;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationDialogClosed implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationDialogClosed f52419a = new NotificationDialogClosed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationDialogClosed);
        }

        public final int hashCode() {
            return 975877593;
        }

        public final String toString() {
            return "NotificationDialogClosed";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationLongClicked;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationLongClicked implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationLongClicked f52420a = new NotificationLongClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationLongClicked);
        }

        public final int hashCode() {
            return -845567898;
        }

        public final String toString() {
            return "NotificationLongClicked";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationSwiped;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationSwiped implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationSwiped f52421a = new NotificationSwiped();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationSwiped);
        }

        public final int hashCode() {
            return -1224404689;
        }

        public final String toString() {
            return "NotificationSwiped";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$Screen;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Screen implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Screen f52422a = new Screen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Screen);
        }

        public final int hashCode() {
            return 74053478;
        }

        public final String toString() {
            return "Screen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TooltipClosed;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TooltipClosed implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TooltipClosed f52423a = new TooltipClosed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TooltipClosed);
        }

        public final int hashCode() {
            return 158739221;
        }

        public final String toString() {
            return "TooltipClosed";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TooltipOpened;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TooltipOpened implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TooltipOpened f52424a = new TooltipOpened();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TooltipOpened);
        }

        public final int hashCode() {
            return 505680402;
        }

        public final String toString() {
            return "TooltipOpened";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TryAgainClicked;", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TryAgainClicked implements InboxTrackingUIModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TryAgainClicked f52425a = new TryAgainClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TryAgainClicked);
        }

        public final int hashCode() {
            return -453525432;
        }

        public final String toString() {
            return "TryAgainClicked";
        }
    }
}

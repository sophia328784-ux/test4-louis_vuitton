package com.vuitton.android.presentation.screen.booking.confirmation.models;

import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;", "", "ConfirmationScreen", "AddToCalendarEvent", "ViewQrCodeEvent", "OpenDirectionEvent", "CloseEvent", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$AddToCalendarEvent;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$CloseEvent;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$OpenDirectionEvent;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ViewQrCodeEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingConfirmationTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$AddToCalendarEvent;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCalendarEvent implements BookingConfirmationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54389a;

        public AddToCalendarEvent(String str) {
            str.getClass();
            this.f54389a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddToCalendarEvent) && Intrinsics.c(this.f54389a, ((AddToCalendarEvent) obj).f54389a);
        }

        public final int hashCode() {
            return this.f54389a.hashCode();
        }

        public final String toString() {
            return fc.h("AddToCalendarEvent(experienceId=", this.f54389a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$CloseEvent;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseEvent implements BookingConfirmationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseEvent f54390a = new CloseEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseEvent);
        }

        public final int hashCode() {
            return 1280298337;
        }

        public final String toString() {
            return "CloseEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;", "", "", "experienceIds", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConfirmationScreen implements BookingConfirmationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f54391a;

        public ConfirmationScreen(List<String> list) {
            list.getClass();
            this.f54391a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConfirmationScreen) && Intrinsics.c(this.f54391a, ((ConfirmationScreen) obj).f54391a);
        }

        public final int hashCode() {
            return this.f54391a.hashCode();
        }

        public final String toString() {
            return d21.o("ConfirmationScreen(experienceIds=", ")", this.f54391a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$OpenDirectionEvent;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenDirectionEvent implements BookingConfirmationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54392a;

        public OpenDirectionEvent(String str) {
            str.getClass();
            this.f54392a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenDirectionEvent) && Intrinsics.c(this.f54392a, ((OpenDirectionEvent) obj).f54392a);
        }

        public final int hashCode() {
            return this.f54392a.hashCode();
        }

        public final String toString() {
            return fc.h("OpenDirectionEvent(experienceId=", this.f54392a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ViewQrCodeEvent;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewQrCodeEvent implements BookingConfirmationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54393a;

        public ViewQrCodeEvent(String str) {
            str.getClass();
            this.f54393a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ViewQrCodeEvent) && Intrinsics.c(this.f54393a, ((ViewQrCodeEvent) obj).f54393a);
        }

        public final int hashCode() {
            return this.f54393a.hashCode();
        }

        public final String toString() {
            return fc.h("ViewQrCodeEvent(experienceId=", this.f54393a, ")");
        }
    }
}

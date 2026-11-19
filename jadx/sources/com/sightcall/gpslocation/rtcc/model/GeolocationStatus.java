package com.sightcall.gpslocation.rtcc.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\n\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011B\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\n\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b¨\u0006\u001c"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "Success", "Declined", "Unavailable", "Timeout", "FirstUsagePopupDisplayed", "FirstUsagePopupAccepted", "FirstUsagePopupDeclined", "InstructionPopup", "AttendeeSettings", "UnknownError", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$AttendeeSettings;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Declined;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$InstructionPopup;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Success;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Timeout;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Unavailable;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$UnknownError;", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class GeolocationStatus {
    private final String value;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$AttendeeSettings;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AttendeeSettings extends GeolocationStatus {
        public static final AttendeeSettings INSTANCE = new AttendeeSettings();

        private AttendeeSettings() {
            super("attendeeSettings", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Declined;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Declined extends GeolocationStatus {
        public static final Declined INSTANCE = new Declined();

        private Declined() {
            super("declined", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class FirstUsagePopupAccepted extends GeolocationStatus {
        public static final FirstUsagePopupAccepted INSTANCE = new FirstUsagePopupAccepted();

        private FirstUsagePopupAccepted() {
            super("firstUsagePopupAccepted", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class FirstUsagePopupDeclined extends GeolocationStatus {
        public static final FirstUsagePopupDeclined INSTANCE = new FirstUsagePopupDeclined();

        private FirstUsagePopupDeclined() {
            super("firstUsagePopupDeclined", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class FirstUsagePopupDisplayed extends GeolocationStatus {
        public static final FirstUsagePopupDisplayed INSTANCE = new FirstUsagePopupDisplayed();

        private FirstUsagePopupDisplayed() {
            super("firstUsagePopupDisplayed", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$InstructionPopup;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InstructionPopup extends GeolocationStatus {
        public static final InstructionPopup INSTANCE = new InstructionPopup();

        private InstructionPopup() {
            super("instructionPopup", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Success;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Success extends GeolocationStatus {
        public static final Success INSTANCE = new Success();

        private Success() {
            super("success", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Timeout;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Timeout extends GeolocationStatus {
        public static final Timeout INSTANCE = new Timeout();

        private Timeout() {
            super("timeout", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Unavailable;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Unavailable extends GeolocationStatus {
        public static final Unavailable INSTANCE = new Unavailable();

        private Unavailable() {
            super("unavailable", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$UnknownError;", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "<init>", "()V", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class UnknownError extends GeolocationStatus {
        public static final UnknownError INSTANCE = new UnknownError();

        private UnknownError() {
            super("unknownError", null);
        }
    }

    private GeolocationStatus(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    public /* synthetic */ GeolocationStatus(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }
}

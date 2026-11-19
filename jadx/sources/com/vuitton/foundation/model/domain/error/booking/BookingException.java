package com.vuitton.foundation.model.domain.error.booking;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/booking/BookingException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "PrebookWithSameTimeSlot", "AppointmentAlreadyExist", "ReservationWithSameType", "ReservationWithSameTimeSlot", "Lcom/vuitton/foundation/model/domain/error/booking/BookingException$AppointmentAlreadyExist;", "Lcom/vuitton/foundation/model/domain/error/booking/BookingException$PrebookWithSameTimeSlot;", "Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameTimeSlot;", "Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BookingException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66208b;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/booking/BookingException$AppointmentAlreadyExist;", "Lcom/vuitton/foundation/model/domain/error/booking/BookingException;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AppointmentAlreadyExist extends BookingException {
        public AppointmentAlreadyExist(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/booking/BookingException$PrebookWithSameTimeSlot;", "Lcom/vuitton/foundation/model/domain/error/booking/BookingException;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PrebookWithSameTimeSlot extends BookingException {
        public PrebookWithSameTimeSlot(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameTimeSlot;", "Lcom/vuitton/foundation/model/domain/error/booking/BookingException;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ReservationWithSameTimeSlot extends BookingException {
        public ReservationWithSameTimeSlot(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/booking/BookingException$ReservationWithSameType;", "Lcom/vuitton/foundation/model/domain/error/booking/BookingException;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ReservationWithSameType extends BookingException {
        public ReservationWithSameType(String str) {
            super(str, null);
        }
    }

    public BookingException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66208b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66208b;
    }
}

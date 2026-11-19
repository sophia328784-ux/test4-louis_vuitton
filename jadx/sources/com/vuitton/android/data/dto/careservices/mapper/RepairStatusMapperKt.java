package com.vuitton.android.data.dto.careservices.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairStatusMapperKt {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44958a;

        static {
            int[] iArr = new int[RepairStatusDto.values().length];
            try {
                iArr[RepairStatusDto.DROPPED_IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RepairStatusDto.DROPPED_IN_STORE_WITH_STORE_NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RepairStatusDto.ROUTING_TO_WORKSHOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RepairStatusDto.EXPERTISE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[RepairStatusDto.RESTORATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[RepairStatusDto.RESTORATION_NOT_PERFORMED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[RepairStatusDto.READY_FOR_PICK_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[RepairStatusDto.READY_FOR_PICK_UP_WITH_STORE_NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[RepairStatusDto.HOME_DELIVERY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[RepairStatusDto.HISTORY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[RepairStatusDto.REQUEST_SUBMITTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[RepairStatusDto.CANCELLED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[RepairStatusDto.PRELIMINARY_ASSESSMENT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[RepairStatusDto.PRELIMINARY_ASSESSMENT_ACC.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[RepairStatusDto.PRELIMINARY_ASSESSMENT_DEC.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[RepairStatusDto.SHIPPING_TO_ATELIER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[RepairStatusDto.RECEIVED_AT_ATELIER.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[RepairStatusDto.SHIPPED_FROM_EHUB.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[RepairStatusDto.UNDER_ASSESSMENT.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[RepairStatusDto.REPAIR_IN_PROGRESS.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[RepairStatusDto.AWAITING_PAYMENT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[RepairStatusDto.PAYMENT_CONFIRMED.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[RepairStatusDto.PAYMENT_INITIATED.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[RepairStatusDto.PAYMENT_CONTACT.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[RepairStatusDto.CONFIRM_ADDRESS.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[RepairStatusDto.SHIPPING_IN_PREPARATION.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[RepairStatusDto.SHIPPING.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[RepairStatusDto.DELIVERED_TO_CLIENT.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            f44958a = iArr;
        }
    }

    public static final RepairStatus a(RepairStatusDto repairStatusDto) {
        repairStatusDto.getClass();
        switch (WhenMappings.f44958a[repairStatusDto.ordinal()]) {
            case 1:
                return RepairStatus.DROPPED_IN_STORE;
            case 2:
                return RepairStatus.DROPPED_IN_STORE_WITH_STORE_NAME;
            case 3:
                return RepairStatus.ROUTING_TO_WORKSHOP;
            case 4:
                return RepairStatus.EXPERTISE;
            case 5:
                return RepairStatus.RESTORATION;
            case 6:
                return RepairStatus.RESTORATION_NOT_PERFORMED;
            case 7:
                return RepairStatus.READY_FOR_PICK_UP;
            case 8:
                return RepairStatus.READY_FOR_PICK_UP_WITH_STORE_NAME;
            case 9:
                return RepairStatus.HOME_DELIVERY;
            case 10:
                return RepairStatus.HISTORY;
            case 11:
                return RepairStatus.REQUEST_SUBMITTED;
            case 12:
                return RepairStatus.CANCELLED;
            case 13:
                return RepairStatus.PRELIMINARY_ASSESSMENT;
            case 14:
                return RepairStatus.PRELIMINARY_ASSESSMENT_ACC;
            case 15:
                return RepairStatus.PRELIMINARY_ASSESSMENT_DEC;
            case 16:
                return RepairStatus.SHIPPING_TO_ATELIER;
            case 17:
                return RepairStatus.RECEIVED_AT_ATELIER;
            case 18:
                return RepairStatus.SHIPPED_FROM_EHUB;
            case 19:
                return RepairStatus.UNDER_ASSESSMENT;
            case 20:
                return RepairStatus.REPAIR_IN_PROGRESS;
            case 21:
                return RepairStatus.AWAITING_PAYMENT;
            case 22:
                return RepairStatus.PAYMENT_CONFIRMED;
            case 23:
                return RepairStatus.PAYMENT_INITIATED;
            case 24:
                return RepairStatus.PAYMENT_CONTACT;
            case 25:
                return RepairStatus.CONFIRM_ADDRESS;
            case 26:
                return RepairStatus.SHIPPING_IN_PREPARATION;
            case 27:
                return RepairStatus.SHIPPING;
            case 28:
                return RepairStatus.DELIVERED_TO_CLIENT;
            default:
                v40.g();
                return null;
        }
    }
}

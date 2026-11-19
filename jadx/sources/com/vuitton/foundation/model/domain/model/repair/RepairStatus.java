package com.vuitton.foundation.model.domain.model.repair;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u001d\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001d¨\u0006\u001e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;", "", "AWAITING_PAYMENT", "CANCELLED", "CONFIRM_ADDRESS", "DELIVERED_TO_CLIENT", "DROPPED_IN_STORE", "DROPPED_IN_STORE_WITH_STORE_NAME", "EXPERTISE", "HISTORY", "HOME_DELIVERY", "PAYMENT_CONFIRMED", "PAYMENT_CONTACT", "PAYMENT_INITIATED", "PRELIMINARY_ASSESSMENT", "PRELIMINARY_ASSESSMENT_ACC", "PRELIMINARY_ASSESSMENT_DEC", "READY_FOR_PICK_UP", "READY_FOR_PICK_UP_WITH_STORE_NAME", "RECEIVED_AT_ATELIER", "REPAIR_IN_PROGRESS", "REQUEST_SUBMITTED", "RESTORATION", "RESTORATION_NOT_PERFORMED", "ROUTING_TO_WORKSHOP", "SHIPPED_FROM_EHUB", "SHIPPING", "SHIPPING_IN_PREPARATION", "SHIPPING_TO_ATELIER", "UNDER_ASSESSMENT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RepairStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RepairStatus[] $VALUES;
    public static final RepairStatus AWAITING_PAYMENT;
    public static final RepairStatus CANCELLED;
    public static final RepairStatus CONFIRM_ADDRESS;
    public static final RepairStatus DELIVERED_TO_CLIENT;
    public static final RepairStatus DROPPED_IN_STORE;
    public static final RepairStatus DROPPED_IN_STORE_WITH_STORE_NAME;
    public static final RepairStatus EXPERTISE;
    public static final RepairStatus HISTORY;
    public static final RepairStatus HOME_DELIVERY;
    public static final RepairStatus PAYMENT_CONFIRMED;
    public static final RepairStatus PAYMENT_CONTACT;
    public static final RepairStatus PAYMENT_INITIATED;
    public static final RepairStatus PRELIMINARY_ASSESSMENT;
    public static final RepairStatus PRELIMINARY_ASSESSMENT_ACC;
    public static final RepairStatus PRELIMINARY_ASSESSMENT_DEC;
    public static final RepairStatus READY_FOR_PICK_UP;
    public static final RepairStatus READY_FOR_PICK_UP_WITH_STORE_NAME;
    public static final RepairStatus RECEIVED_AT_ATELIER;
    public static final RepairStatus REPAIR_IN_PROGRESS;
    public static final RepairStatus REQUEST_SUBMITTED;
    public static final RepairStatus RESTORATION;
    public static final RepairStatus RESTORATION_NOT_PERFORMED;
    public static final RepairStatus ROUTING_TO_WORKSHOP;
    public static final RepairStatus SHIPPED_FROM_EHUB;
    public static final RepairStatus SHIPPING;
    public static final RepairStatus SHIPPING_IN_PREPARATION;
    public static final RepairStatus SHIPPING_TO_ATELIER;
    public static final RepairStatus UNDER_ASSESSMENT;

    static {
        RepairStatus repairStatus = new RepairStatus("AWAITING_PAYMENT", 0);
        AWAITING_PAYMENT = repairStatus;
        RepairStatus repairStatus2 = new RepairStatus("CANCELLED", 1);
        CANCELLED = repairStatus2;
        RepairStatus repairStatus3 = new RepairStatus("CONFIRM_ADDRESS", 2);
        CONFIRM_ADDRESS = repairStatus3;
        RepairStatus repairStatus4 = new RepairStatus("DELIVERED_TO_CLIENT", 3);
        DELIVERED_TO_CLIENT = repairStatus4;
        RepairStatus repairStatus5 = new RepairStatus("DROPPED_IN_STORE", 4);
        DROPPED_IN_STORE = repairStatus5;
        RepairStatus repairStatus6 = new RepairStatus("DROPPED_IN_STORE_WITH_STORE_NAME", 5);
        DROPPED_IN_STORE_WITH_STORE_NAME = repairStatus6;
        RepairStatus repairStatus7 = new RepairStatus("EXPERTISE", 6);
        EXPERTISE = repairStatus7;
        RepairStatus repairStatus8 = new RepairStatus("HISTORY", 7);
        HISTORY = repairStatus8;
        RepairStatus repairStatus9 = new RepairStatus("HOME_DELIVERY", 8);
        HOME_DELIVERY = repairStatus9;
        RepairStatus repairStatus10 = new RepairStatus("PAYMENT_CONFIRMED", 9);
        PAYMENT_CONFIRMED = repairStatus10;
        RepairStatus repairStatus11 = new RepairStatus("PAYMENT_CONTACT", 10);
        PAYMENT_CONTACT = repairStatus11;
        RepairStatus repairStatus12 = new RepairStatus("PAYMENT_INITIATED", 11);
        PAYMENT_INITIATED = repairStatus12;
        RepairStatus repairStatus13 = new RepairStatus("PRELIMINARY_ASSESSMENT", 12);
        PRELIMINARY_ASSESSMENT = repairStatus13;
        RepairStatus repairStatus14 = new RepairStatus("PRELIMINARY_ASSESSMENT_ACC", 13);
        PRELIMINARY_ASSESSMENT_ACC = repairStatus14;
        RepairStatus repairStatus15 = new RepairStatus("PRELIMINARY_ASSESSMENT_DEC", 14);
        PRELIMINARY_ASSESSMENT_DEC = repairStatus15;
        RepairStatus repairStatus16 = new RepairStatus("READY_FOR_PICK_UP", 15);
        READY_FOR_PICK_UP = repairStatus16;
        RepairStatus repairStatus17 = new RepairStatus("READY_FOR_PICK_UP_WITH_STORE_NAME", 16);
        READY_FOR_PICK_UP_WITH_STORE_NAME = repairStatus17;
        RepairStatus repairStatus18 = new RepairStatus("RECEIVED_AT_ATELIER", 17);
        RECEIVED_AT_ATELIER = repairStatus18;
        RepairStatus repairStatus19 = new RepairStatus("REPAIR_IN_PROGRESS", 18);
        REPAIR_IN_PROGRESS = repairStatus19;
        RepairStatus repairStatus20 = new RepairStatus("REQUEST_SUBMITTED", 19);
        REQUEST_SUBMITTED = repairStatus20;
        RepairStatus repairStatus21 = new RepairStatus("RESTORATION", 20);
        RESTORATION = repairStatus21;
        RepairStatus repairStatus22 = new RepairStatus("RESTORATION_NOT_PERFORMED", 21);
        RESTORATION_NOT_PERFORMED = repairStatus22;
        RepairStatus repairStatus23 = new RepairStatus("ROUTING_TO_WORKSHOP", 22);
        ROUTING_TO_WORKSHOP = repairStatus23;
        RepairStatus repairStatus24 = new RepairStatus("SHIPPED_FROM_EHUB", 23);
        SHIPPED_FROM_EHUB = repairStatus24;
        RepairStatus repairStatus25 = new RepairStatus("SHIPPING", 24);
        SHIPPING = repairStatus25;
        RepairStatus repairStatus26 = new RepairStatus("SHIPPING_IN_PREPARATION", 25);
        SHIPPING_IN_PREPARATION = repairStatus26;
        RepairStatus repairStatus27 = new RepairStatus("SHIPPING_TO_ATELIER", 26);
        SHIPPING_TO_ATELIER = repairStatus27;
        RepairStatus repairStatus28 = new RepairStatus("UNDER_ASSESSMENT", 27);
        UNDER_ASSESSMENT = repairStatus28;
        RepairStatus[] repairStatusArr = {repairStatus, repairStatus2, repairStatus3, repairStatus4, repairStatus5, repairStatus6, repairStatus7, repairStatus8, repairStatus9, repairStatus10, repairStatus11, repairStatus12, repairStatus13, repairStatus14, repairStatus15, repairStatus16, repairStatus17, repairStatus18, repairStatus19, repairStatus20, repairStatus21, repairStatus22, repairStatus23, repairStatus24, repairStatus25, repairStatus26, repairStatus27, repairStatus28};
        $VALUES = repairStatusArr;
        $ENTRIES = EnumEntriesKt.a(repairStatusArr);
    }

    public static RepairStatus valueOf(String str) {
        return (RepairStatus) Enum.valueOf(RepairStatus.class, str);
    }

    public static RepairStatus[] values() {
        return (RepairStatus[]) $VALUES.clone();
    }
}

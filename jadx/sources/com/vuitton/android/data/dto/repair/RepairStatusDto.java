package com.vuitton.android.data.dto.repair;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.wq0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u001e\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/data/dto/repair/RepairStatusDto;", "", "Companion", "DROPPED_IN_STORE", "DROPPED_IN_STORE_WITH_STORE_NAME", "ROUTING_TO_WORKSHOP", "EXPERTISE", "RESTORATION", "RESTORATION_NOT_PERFORMED", "READY_FOR_PICK_UP", "READY_FOR_PICK_UP_WITH_STORE_NAME", "HOME_DELIVERY", "HISTORY", "REQUEST_SUBMITTED", "CANCELLED", "PRELIMINARY_ASSESSMENT", "PRELIMINARY_ASSESSMENT_ACC", "PRELIMINARY_ASSESSMENT_DEC", "SHIPPING_TO_ATELIER", "RECEIVED_AT_ATELIER", "SHIPPED_FROM_EHUB", "UNDER_ASSESSMENT", "REPAIR_IN_PROGRESS", "AWAITING_PAYMENT", "PAYMENT_CONFIRMED", "PAYMENT_INITIATED", "PAYMENT_CONTACT", "CONFIRM_ADDRESS", "SHIPPING_IN_PREPARATION", "SHIPPING", "DELIVERED_TO_CLIENT", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class RepairStatusDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RepairStatusDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    @SerialName
    public static final RepairStatusDto AWAITING_PAYMENT;

    @SerialName
    public static final RepairStatusDto CANCELLED;

    @SerialName
    public static final RepairStatusDto CONFIRM_ADDRESS;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final RepairStatusDto DELIVERED_TO_CLIENT;

    @SerialName
    public static final RepairStatusDto DROPPED_IN_STORE;

    @SerialName
    public static final RepairStatusDto DROPPED_IN_STORE_WITH_STORE_NAME;

    @SerialName
    public static final RepairStatusDto EXPERTISE;

    @SerialName
    public static final RepairStatusDto HISTORY;

    @SerialName
    public static final RepairStatusDto HOME_DELIVERY;

    @SerialName
    public static final RepairStatusDto PAYMENT_CONFIRMED;

    @SerialName
    public static final RepairStatusDto PAYMENT_CONTACT;

    @SerialName
    public static final RepairStatusDto PAYMENT_INITIATED;

    @SerialName
    public static final RepairStatusDto PRELIMINARY_ASSESSMENT;

    @SerialName
    public static final RepairStatusDto PRELIMINARY_ASSESSMENT_ACC;

    @SerialName
    public static final RepairStatusDto PRELIMINARY_ASSESSMENT_DEC;

    @SerialName
    public static final RepairStatusDto READY_FOR_PICK_UP;

    @SerialName
    public static final RepairStatusDto READY_FOR_PICK_UP_WITH_STORE_NAME;

    @SerialName
    public static final RepairStatusDto RECEIVED_AT_ATELIER;

    @SerialName
    public static final RepairStatusDto REPAIR_IN_PROGRESS;

    @SerialName
    public static final RepairStatusDto REQUEST_SUBMITTED;

    @SerialName
    public static final RepairStatusDto RESTORATION;

    @SerialName
    public static final RepairStatusDto RESTORATION_NOT_PERFORMED;

    @SerialName
    public static final RepairStatusDto ROUTING_TO_WORKSHOP;

    @SerialName
    public static final RepairStatusDto SHIPPED_FROM_EHUB;

    @SerialName
    public static final RepairStatusDto SHIPPING;

    @SerialName
    public static final RepairStatusDto SHIPPING_IN_PREPARATION;

    @SerialName
    public static final RepairStatusDto SHIPPING_TO_ATELIER;

    @SerialName
    public static final RepairStatusDto UNDER_ASSESSMENT;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/repair/RepairStatusDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RepairStatusDto> serializer() {
            return (KSerializer) RepairStatusDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        RepairStatusDto repairStatusDto = new RepairStatusDto("DROPPED_IN_STORE", 0);
        DROPPED_IN_STORE = repairStatusDto;
        RepairStatusDto repairStatusDto2 = new RepairStatusDto("DROPPED_IN_STORE_WITH_STORE_NAME", 1);
        DROPPED_IN_STORE_WITH_STORE_NAME = repairStatusDto2;
        RepairStatusDto repairStatusDto3 = new RepairStatusDto("ROUTING_TO_WORKSHOP", 2);
        ROUTING_TO_WORKSHOP = repairStatusDto3;
        RepairStatusDto repairStatusDto4 = new RepairStatusDto("EXPERTISE", 3);
        EXPERTISE = repairStatusDto4;
        RepairStatusDto repairStatusDto5 = new RepairStatusDto("RESTORATION", 4);
        RESTORATION = repairStatusDto5;
        RepairStatusDto repairStatusDto6 = new RepairStatusDto("RESTORATION_NOT_PERFORMED", 5);
        RESTORATION_NOT_PERFORMED = repairStatusDto6;
        RepairStatusDto repairStatusDto7 = new RepairStatusDto("READY_FOR_PICK_UP", 6);
        READY_FOR_PICK_UP = repairStatusDto7;
        RepairStatusDto repairStatusDto8 = new RepairStatusDto("READY_FOR_PICK_UP_WITH_STORE_NAME", 7);
        READY_FOR_PICK_UP_WITH_STORE_NAME = repairStatusDto8;
        RepairStatusDto repairStatusDto9 = new RepairStatusDto("HOME_DELIVERY", 8);
        HOME_DELIVERY = repairStatusDto9;
        RepairStatusDto repairStatusDto10 = new RepairStatusDto("HISTORY", 9);
        HISTORY = repairStatusDto10;
        RepairStatusDto repairStatusDto11 = new RepairStatusDto("REQUEST_SUBMITTED", 10);
        REQUEST_SUBMITTED = repairStatusDto11;
        RepairStatusDto repairStatusDto12 = new RepairStatusDto("CANCELLED", 11);
        CANCELLED = repairStatusDto12;
        RepairStatusDto repairStatusDto13 = new RepairStatusDto("PRELIMINARY_ASSESSMENT", 12);
        PRELIMINARY_ASSESSMENT = repairStatusDto13;
        RepairStatusDto repairStatusDto14 = new RepairStatusDto("PRELIMINARY_ASSESSMENT_ACC", 13);
        PRELIMINARY_ASSESSMENT_ACC = repairStatusDto14;
        RepairStatusDto repairStatusDto15 = new RepairStatusDto("PRELIMINARY_ASSESSMENT_DEC", 14);
        PRELIMINARY_ASSESSMENT_DEC = repairStatusDto15;
        RepairStatusDto repairStatusDto16 = new RepairStatusDto("SHIPPING_TO_ATELIER", 15);
        SHIPPING_TO_ATELIER = repairStatusDto16;
        RepairStatusDto repairStatusDto17 = new RepairStatusDto("RECEIVED_AT_ATELIER", 16);
        RECEIVED_AT_ATELIER = repairStatusDto17;
        RepairStatusDto repairStatusDto18 = new RepairStatusDto("SHIPPED_FROM_EHUB", 17);
        SHIPPED_FROM_EHUB = repairStatusDto18;
        RepairStatusDto repairStatusDto19 = new RepairStatusDto("UNDER_ASSESSMENT", 18);
        UNDER_ASSESSMENT = repairStatusDto19;
        RepairStatusDto repairStatusDto20 = new RepairStatusDto("REPAIR_IN_PROGRESS", 19);
        REPAIR_IN_PROGRESS = repairStatusDto20;
        RepairStatusDto repairStatusDto21 = new RepairStatusDto("AWAITING_PAYMENT", 20);
        AWAITING_PAYMENT = repairStatusDto21;
        RepairStatusDto repairStatusDto22 = new RepairStatusDto("PAYMENT_CONFIRMED", 21);
        PAYMENT_CONFIRMED = repairStatusDto22;
        RepairStatusDto repairStatusDto23 = new RepairStatusDto("PAYMENT_INITIATED", 22);
        PAYMENT_INITIATED = repairStatusDto23;
        RepairStatusDto repairStatusDto24 = new RepairStatusDto("PAYMENT_CONTACT", 23);
        PAYMENT_CONTACT = repairStatusDto24;
        RepairStatusDto repairStatusDto25 = new RepairStatusDto("CONFIRM_ADDRESS", 24);
        CONFIRM_ADDRESS = repairStatusDto25;
        RepairStatusDto repairStatusDto26 = new RepairStatusDto("SHIPPING_IN_PREPARATION", 25);
        SHIPPING_IN_PREPARATION = repairStatusDto26;
        RepairStatusDto repairStatusDto27 = new RepairStatusDto("SHIPPING", 26);
        SHIPPING = repairStatusDto27;
        RepairStatusDto repairStatusDto28 = new RepairStatusDto("DELIVERED_TO_CLIENT", 27);
        DELIVERED_TO_CLIENT = repairStatusDto28;
        RepairStatusDto[] repairStatusDtoArr = {repairStatusDto, repairStatusDto2, repairStatusDto3, repairStatusDto4, repairStatusDto5, repairStatusDto6, repairStatusDto7, repairStatusDto8, repairStatusDto9, repairStatusDto10, repairStatusDto11, repairStatusDto12, repairStatusDto13, repairStatusDto14, repairStatusDto15, repairStatusDto16, repairStatusDto17, repairStatusDto18, repairStatusDto19, repairStatusDto20, repairStatusDto21, repairStatusDto22, repairStatusDto23, repairStatusDto24, repairStatusDto25, repairStatusDto26, repairStatusDto27, repairStatusDto28};
        $VALUES = repairStatusDtoArr;
        $ENTRIES = EnumEntriesKt.a(repairStatusDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(22));
    }

    public static RepairStatusDto valueOf(String str) {
        return (RepairStatusDto) Enum.valueOf(RepairStatusDto.class, str);
    }

    public static RepairStatusDto[] values() {
        return (RepairStatusDto[]) $VALUES.clone();
    }
}

package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairStatusUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57399a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f57400b;

        static {
            int[] iArr = new int[RepairStatus.values().length];
            try {
                iArr[RepairStatus.AWAITING_PAYMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RepairStatus.CANCELLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RepairStatus.CONFIRM_ADDRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RepairStatus.DELIVERED_TO_CLIENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[RepairStatus.DROPPED_IN_STORE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[RepairStatus.DROPPED_IN_STORE_WITH_STORE_NAME.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[RepairStatus.EXPERTISE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[RepairStatus.HISTORY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[RepairStatus.HOME_DELIVERY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[RepairStatus.PAYMENT_CONFIRMED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[RepairStatus.PAYMENT_CONTACT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[RepairStatus.PAYMENT_INITIATED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[RepairStatus.PRELIMINARY_ASSESSMENT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[RepairStatus.PRELIMINARY_ASSESSMENT_ACC.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[RepairStatus.PRELIMINARY_ASSESSMENT_DEC.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[RepairStatus.READY_FOR_PICK_UP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[RepairStatus.READY_FOR_PICK_UP_WITH_STORE_NAME.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[RepairStatus.RECEIVED_AT_ATELIER.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[RepairStatus.REPAIR_IN_PROGRESS.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[RepairStatus.REQUEST_SUBMITTED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[RepairStatus.RESTORATION.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[RepairStatus.RESTORATION_NOT_PERFORMED.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[RepairStatus.ROUTING_TO_WORKSHOP.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[RepairStatus.SHIPPED_FROM_EHUB.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[RepairStatus.SHIPPING.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[RepairStatus.SHIPPING_IN_PREPARATION.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[RepairStatus.SHIPPING_TO_ATELIER.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[RepairStatus.UNDER_ASSESSMENT.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            f57399a = iArr;
            int[] iArr2 = new int[RepairStatusUiModel.values().length];
            try {
                iArr2[RepairStatusUiModel.AWAITING_PAYMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr2[RepairStatusUiModel.CANCELLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr2[RepairStatusUiModel.CONFIRM_ADDRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr2[RepairStatusUiModel.DELIVERED_TO_CLIENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr2[RepairStatusUiModel.DROPPED_IN_STORE.ordinal()] = 5;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr2[RepairStatusUiModel.DROPPED_IN_STORE_WITH_STORE_NAME.ordinal()] = 6;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr2[RepairStatusUiModel.EXPERTISE.ordinal()] = 7;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr2[RepairStatusUiModel.HISTORY.ordinal()] = 8;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr2[RepairStatusUiModel.HOME_DELIVERY.ordinal()] = 9;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr2[RepairStatusUiModel.PAYMENT_CONFIRMED.ordinal()] = 10;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr2[RepairStatusUiModel.PAYMENT_CONTACT.ordinal()] = 11;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr2[RepairStatusUiModel.PAYMENT_INITIATED.ordinal()] = 12;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr2[RepairStatusUiModel.PRELIMINARY_ASSESSMENT.ordinal()] = 13;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr2[RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC.ordinal()] = 14;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr2[RepairStatusUiModel.PRELIMINARY_ASSESSMENT_DEC.ordinal()] = 15;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr2[RepairStatusUiModel.READY_FOR_PICK_UP.ordinal()] = 16;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr2[RepairStatusUiModel.READY_FOR_PICK_UP_WITH_STORE_NAME.ordinal()] = 17;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr2[RepairStatusUiModel.RECEIVED_AT_ATELIER.ordinal()] = 18;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr2[RepairStatusUiModel.REPAIR_IN_PROGRESS.ordinal()] = 19;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr2[RepairStatusUiModel.REQUEST_SUBMITTED.ordinal()] = 20;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr2[RepairStatusUiModel.RESTORATION.ordinal()] = 21;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr2[RepairStatusUiModel.RESTORATION_NOT_PERFORMED.ordinal()] = 22;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr2[RepairStatusUiModel.ROUTING_TO_WORKSHOP.ordinal()] = 23;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr2[RepairStatusUiModel.SHIPPED_FROM_EHUB.ordinal()] = 24;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr2[RepairStatusUiModel.SHIPPING.ordinal()] = 25;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr2[RepairStatusUiModel.SHIPPING_IN_PREPARATION.ordinal()] = 26;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr2[RepairStatusUiModel.SHIPPING_TO_ATELIER.ordinal()] = 27;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr2[RepairStatusUiModel.UNDER_ASSESSMENT.ordinal()] = 28;
            } catch (NoSuchFieldError unused56) {
            }
            f57400b = iArr2;
        }
    }

    public static final boolean a(RepairStatusUiModel repairStatusUiModel) {
        repairStatusUiModel.getClass();
        return ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.AWAITING_PAYMENT, RepairStatusUiModel.CONFIRM_ADDRESS, RepairStatusUiModel.PAYMENT_CONFIRMED, RepairStatusUiModel.PAYMENT_CONTACT, RepairStatusUiModel.PAYMENT_INITIATED, RepairStatusUiModel.RECEIVED_AT_ATELIER, RepairStatusUiModel.REPAIR_IN_PROGRESS, RepairStatusUiModel.SHIPPING, RepairStatusUiModel.SHIPPING_IN_PREPARATION, RepairStatusUiModel.SHIPPING_TO_ATELIER});
    }

    public static final boolean b(RepairStatusUiModel repairStatusUiModel) {
        repairStatusUiModel.getClass();
        return ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC, RepairStatusUiModel.PRELIMINARY_ASSESSMENT_DEC, RepairStatusUiModel.RECEIVED_AT_ATELIER, RepairStatusUiModel.REQUEST_SUBMITTED, RepairStatusUiModel.SHIPPING_TO_ATELIER, RepairStatusUiModel.UNDER_ASSESSMENT});
    }

    public static final boolean c(RepairStatusUiModel repairStatusUiModel) {
        repairStatusUiModel.getClass();
        return ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.AWAITING_PAYMENT, RepairStatusUiModel.CANCELLED, RepairStatusUiModel.CONFIRM_ADDRESS, RepairStatusUiModel.DELIVERED_TO_CLIENT, RepairStatusUiModel.PAYMENT_CONFIRMED, RepairStatusUiModel.PAYMENT_CONTACT, RepairStatusUiModel.PAYMENT_INITIATED, RepairStatusUiModel.PRELIMINARY_ASSESSMENT, RepairStatusUiModel.REPAIR_IN_PROGRESS, RepairStatusUiModel.SHIPPING, RepairStatusUiModel.SHIPPING_IN_PREPARATION});
    }

    public static final RepairStatus d(RepairStatusUiModel repairStatusUiModel) {
        repairStatusUiModel.getClass();
        switch (WhenMappings.f57400b[repairStatusUiModel.ordinal()]) {
            case 1:
                return RepairStatus.AWAITING_PAYMENT;
            case 2:
                return RepairStatus.CANCELLED;
            case 3:
                return RepairStatus.CONFIRM_ADDRESS;
            case 4:
                return RepairStatus.DELIVERED_TO_CLIENT;
            case 5:
                return RepairStatus.DROPPED_IN_STORE;
            case 6:
                return RepairStatus.DROPPED_IN_STORE_WITH_STORE_NAME;
            case 7:
                return RepairStatus.EXPERTISE;
            case 8:
                return RepairStatus.HISTORY;
            case 9:
                return RepairStatus.HOME_DELIVERY;
            case 10:
                return RepairStatus.PAYMENT_CONFIRMED;
            case 11:
                return RepairStatus.PAYMENT_CONTACT;
            case 12:
                return RepairStatus.PAYMENT_INITIATED;
            case 13:
                return RepairStatus.PRELIMINARY_ASSESSMENT;
            case 14:
                return RepairStatus.PRELIMINARY_ASSESSMENT_ACC;
            case 15:
                return RepairStatus.PRELIMINARY_ASSESSMENT_DEC;
            case 16:
                return RepairStatus.READY_FOR_PICK_UP;
            case 17:
                return RepairStatus.READY_FOR_PICK_UP_WITH_STORE_NAME;
            case 18:
                return RepairStatus.RECEIVED_AT_ATELIER;
            case 19:
                return RepairStatus.REPAIR_IN_PROGRESS;
            case 20:
                return RepairStatus.REQUEST_SUBMITTED;
            case 21:
                return RepairStatus.RESTORATION;
            case 22:
                return RepairStatus.RESTORATION_NOT_PERFORMED;
            case 23:
                return RepairStatus.ROUTING_TO_WORKSHOP;
            case 24:
                return RepairStatus.SHIPPED_FROM_EHUB;
            case 25:
                return RepairStatus.SHIPPING;
            case 26:
                return RepairStatus.SHIPPING_IN_PREPARATION;
            case 27:
                return RepairStatus.SHIPPING_TO_ATELIER;
            case 28:
                return RepairStatus.UNDER_ASSESSMENT;
            default:
                v40.g();
                return null;
        }
    }

    public static final RepairStatusUiModel e(RepairStatus repairStatus, boolean z) {
        repairStatus.getClass();
        switch (WhenMappings.f57399a[repairStatus.ordinal()]) {
            case 1:
                return RepairStatusUiModel.AWAITING_PAYMENT;
            case 2:
                return RepairStatusUiModel.CANCELLED;
            case 3:
                return RepairStatusUiModel.CONFIRM_ADDRESS;
            case 4:
                return RepairStatusUiModel.DELIVERED_TO_CLIENT;
            case 5:
                return RepairStatusUiModel.DROPPED_IN_STORE;
            case 6:
                return RepairStatusUiModel.DROPPED_IN_STORE_WITH_STORE_NAME;
            case 7:
                return RepairStatusUiModel.EXPERTISE;
            case 8:
                return RepairStatusUiModel.HISTORY;
            case 9:
                return RepairStatusUiModel.HOME_DELIVERY;
            case 10:
                return RepairStatusUiModel.PAYMENT_CONFIRMED;
            case 11:
                return RepairStatusUiModel.PAYMENT_CONTACT;
            case 12:
                return RepairStatusUiModel.PAYMENT_INITIATED;
            case 13:
                return RepairStatusUiModel.PRELIMINARY_ASSESSMENT;
            case 14:
                return RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC;
            case 15:
                return RepairStatusUiModel.PRELIMINARY_ASSESSMENT_DEC;
            case 16:
                return RepairStatusUiModel.READY_FOR_PICK_UP;
            case 17:
                return RepairStatusUiModel.READY_FOR_PICK_UP_WITH_STORE_NAME;
            case 18:
                return RepairStatusUiModel.RECEIVED_AT_ATELIER;
            case 19:
                return RepairStatusUiModel.REPAIR_IN_PROGRESS;
            case 20:
                return RepairStatusUiModel.REQUEST_SUBMITTED;
            case 21:
                return RepairStatusUiModel.RESTORATION;
            case 22:
                return RepairStatusUiModel.RESTORATION_NOT_PERFORMED;
            case 23:
                return RepairStatusUiModel.ROUTING_TO_WORKSHOP;
            case 24:
                return z ? RepairStatusUiModel.SHIPPED_FROM_EHUB : RepairStatusUiModel.RECEIVED_AT_ATELIER;
            case 25:
                return RepairStatusUiModel.SHIPPING;
            case 26:
                return RepairStatusUiModel.SHIPPING_IN_PREPARATION;
            case 27:
                return RepairStatusUiModel.SHIPPING_TO_ATELIER;
            case 28:
                return RepairStatusUiModel.UNDER_ASSESSMENT;
            default:
                v40.g();
                return null;
        }
    }
}

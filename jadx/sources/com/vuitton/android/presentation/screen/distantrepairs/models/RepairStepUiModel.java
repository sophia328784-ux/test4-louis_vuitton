package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00078\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", "defaultStatus", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", NBSSpanMetricUnit.Bit, "()Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", "", "statusList", "[Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", NBSSpanMetricUnit.Day, "()[Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", "STEP_ONE", "STEP_TWO", "STEP_THREE", "STEP_FOUR", "STEP_FIVE", "STEP_SIX", "STEP_SEVEN", "STEP_EIGHT", "STEP_NINE", "STEP_TEN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class RepairStepUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RepairStepUiModel[] $VALUES;
    public static final RepairStepUiModel STEP_EIGHT;
    public static final RepairStepUiModel STEP_FIVE;
    public static final RepairStepUiModel STEP_FOUR;
    public static final RepairStepUiModel STEP_NINE;
    public static final RepairStepUiModel STEP_ONE;
    public static final RepairStepUiModel STEP_SEVEN;
    public static final RepairStepUiModel STEP_SIX;
    public static final RepairStepUiModel STEP_TEN;
    public static final RepairStepUiModel STEP_THREE;
    public static final RepairStepUiModel STEP_TWO;
    private final RepairStatusUiModel defaultStatus;
    private final RepairStatusUiModel[] statusList;

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_EIGHT", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_EIGHT extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            RepairStatusUiModel repairStatusUiModel2;
            repairStatusUiModel.getClass();
            RepairStatusUiModel[] statusList = getStatusList();
            if (statusList != null) {
                int length = statusList.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        repairStatusUiModel2 = null;
                        break;
                    }
                    repairStatusUiModel2 = statusList[i2];
                    if (repairStatusUiModel2 == repairStatusUiModel) {
                        break;
                    }
                    i2++;
                }
                if (repairStatusUiModel2 != null) {
                    return repairStatusUiModel2;
                }
            }
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_FIVE", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_FIVE extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            repairStatusUiModel.getClass();
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_FOUR", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_FOUR extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            repairStatusUiModel.getClass();
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_NINE", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_NINE extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            RepairStatusUiModel repairStatusUiModel2;
            repairStatusUiModel.getClass();
            RepairStatusUiModel[] statusList = getStatusList();
            if (statusList != null) {
                int length = statusList.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        repairStatusUiModel2 = null;
                        break;
                    }
                    repairStatusUiModel2 = statusList[i2];
                    if (repairStatusUiModel2 == repairStatusUiModel) {
                        break;
                    }
                    i2++;
                }
                if (repairStatusUiModel2 != null) {
                    return repairStatusUiModel2;
                }
            }
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_ONE", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_ONE extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            repairStatusUiModel.getClass();
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_SEVEN", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_SEVEN extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            repairStatusUiModel.getClass();
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_SIX", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_SIX extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            repairStatusUiModel.getClass();
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_TEN", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_TEN extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            repairStatusUiModel.getClass();
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_THREE", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_THREE extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            RepairStatusUiModel repairStatusUiModel2;
            repairStatusUiModel.getClass();
            RepairStatusUiModel[] statusList = getStatusList();
            if (statusList != null) {
                int length = statusList.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        repairStatusUiModel2 = null;
                        break;
                    }
                    repairStatusUiModel2 = statusList[i2];
                    if (repairStatusUiModel2 == repairStatusUiModel) {
                        break;
                    }
                    i2++;
                }
                if (repairStatusUiModel2 != null) {
                    return repairStatusUiModel2;
                }
            }
            return getDefaultStatus();
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel.STEP_TWO", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class STEP_TWO extends RepairStepUiModel {
        @Override // com.vuitton.android.presentation.screen.distantrepairs.models.RepairStepUiModel
        public final RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel) {
            repairStatusUiModel.getClass();
            return getDefaultStatus();
        }
    }

    static {
        STEP_ONE step_one = new STEP_ONE("STEP_ONE", 0, RepairStatusUiModel.REQUEST_SUBMITTED, null);
        STEP_ONE = step_one;
        STEP_TWO step_two = new STEP_TWO("STEP_TWO", 1, RepairStatusUiModel.PRELIMINARY_ASSESSMENT, null);
        STEP_TWO = step_two;
        RepairStatusUiModel repairStatusUiModel = RepairStatusUiModel.SHIPPING_TO_ATELIER;
        STEP_THREE step_three = new STEP_THREE("STEP_THREE", 2, repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC, repairStatusUiModel}, null);
        STEP_THREE = step_three;
        STEP_FOUR step_four = new STEP_FOUR("STEP_FOUR", 3, RepairStatusUiModel.RECEIVED_AT_ATELIER, null);
        STEP_FOUR = step_four;
        STEP_FIVE step_five = new STEP_FIVE("STEP_FIVE", 4, RepairStatusUiModel.SHIPPED_FROM_EHUB, null);
        STEP_FIVE = step_five;
        STEP_SIX step_six = new STEP_SIX("STEP_SIX", 5, RepairStatusUiModel.UNDER_ASSESSMENT, null);
        STEP_SIX = step_six;
        STEP_SEVEN step_seven = new STEP_SEVEN("STEP_SEVEN", 6, RepairStatusUiModel.REPAIR_IN_PROGRESS, null);
        STEP_SEVEN = step_seven;
        RepairStatusUiModel repairStatusUiModel2 = RepairStatusUiModel.AWAITING_PAYMENT;
        STEP_EIGHT step_eight = new STEP_EIGHT("STEP_EIGHT", 7, repairStatusUiModel2, new RepairStatusUiModel[]{repairStatusUiModel2, RepairStatusUiModel.PAYMENT_INITIATED, RepairStatusUiModel.PAYMENT_CONTACT, RepairStatusUiModel.CONFIRM_ADDRESS}, null);
        STEP_EIGHT = step_eight;
        RepairStatusUiModel repairStatusUiModel3 = RepairStatusUiModel.SHIPPING;
        STEP_NINE step_nine = new STEP_NINE("STEP_NINE", 8, repairStatusUiModel3, new RepairStatusUiModel[]{repairStatusUiModel3, RepairStatusUiModel.SHIPPING_IN_PREPARATION, RepairStatusUiModel.PAYMENT_CONFIRMED}, null);
        STEP_NINE = step_nine;
        STEP_TEN step_ten = new STEP_TEN("STEP_TEN", 9, RepairStatusUiModel.DELIVERED_TO_CLIENT, null);
        STEP_TEN = step_ten;
        RepairStepUiModel[] repairStepUiModelArr = {step_one, step_two, step_three, step_four, step_five, step_six, step_seven, step_eight, step_nine, step_ten};
        $VALUES = repairStepUiModelArr;
        $ENTRIES = EnumEntriesKt.a(repairStepUiModelArr);
    }

    public RepairStepUiModel(String str, int i2, RepairStatusUiModel repairStatusUiModel, RepairStatusUiModel[] repairStatusUiModelArr) {
        super(str, i2);
        this.defaultStatus = repairStatusUiModel;
        this.statusList = repairStatusUiModelArr;
    }

    public static EnumEntries c() {
        return $ENTRIES;
    }

    public static RepairStepUiModel valueOf(String str) {
        return (RepairStepUiModel) Enum.valueOf(RepairStepUiModel.class, str);
    }

    public static RepairStepUiModel[] values() {
        return (RepairStepUiModel[]) $VALUES.clone();
    }

    public abstract RepairStatusUiModel a(RepairStatusUiModel repairStatusUiModel);

    /* JADX INFO: renamed from: b, reason: from getter */
    public final RepairStatusUiModel getDefaultStatus() {
        return this.defaultStatus;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final RepairStatusUiModel[] getStatusList() {
        return this.statusList;
    }

    public /* synthetic */ RepairStepUiModel(String str, int i2, RepairStatusUiModel repairStatusUiModel, RepairStatusUiModel[] repairStatusUiModelArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i2, repairStatusUiModel, repairStatusUiModelArr);
    }
}

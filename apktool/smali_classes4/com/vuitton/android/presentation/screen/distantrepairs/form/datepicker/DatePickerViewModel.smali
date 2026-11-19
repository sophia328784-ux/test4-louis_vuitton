.class public interface abstract Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00a8\u0006\u0002\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract I7(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V
.end method

.method public abstract N6()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract Tb(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V
.end method

.method public abstract a5(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V
.end method

.method public abstract b()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract w3()Lkotlinx/coroutines/flow/StateFlow;
.end method

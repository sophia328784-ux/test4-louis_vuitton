.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$2$2$2$1$3$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$2$2$2$1$3$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$2$2$2$1$3$1$1$1$1;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$2$2$2$1$3$1$1$1$1;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt;->a:F

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$2$2$2$1$3$1$1$1$1;->d:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$2$2$2$1$3$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$2$2$2$1$3$1$1$1$1;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

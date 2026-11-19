.class public final synthetic Liu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Liu;->b:I

    iput-object p1, p0, Liu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    iput-object p2, p0, Liu;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Liu;->b:I

    iget-object v1, p0, Liu;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Liu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;->I7(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;->I7(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

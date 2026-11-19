.class public final synthetic Lhu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lhu;->b:I

    iput-object p1, p0, Lhu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    iput-object p2, p0, Lhu;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lhu;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lhu;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lhu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    check-cast p1, Ljava/time/LocalDate;

    check-cast p2, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;->Tb(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;->Tb(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

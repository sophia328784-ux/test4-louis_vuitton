.class final synthetic Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$onCreateView$1$1$1$1$3$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
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


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddToCalendarEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddToCalendarEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->p(Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v5

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f140866

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f140857

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "beginTime"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "title"

    const v3, 0x7f140852

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventLocation"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "availability"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->j:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

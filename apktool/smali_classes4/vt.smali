.class public final synthetic Lvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;I)V
    .locals 0

    iput p2, p0, Lvt;->b:I

    iput-object p1, p0, Lvt;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lvt;->b:I

    iget-object p0, p0, Lvt;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->N:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "SELECTED_CANCELLATION_REASON_ID"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->K0(Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->N:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->Va()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

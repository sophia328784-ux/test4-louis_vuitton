.class public final synthetic Lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;I)V
    .locals 0

    iput p2, p0, Lb;->b:I

    iput-object p1, p0, Lb;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lb;->b:I

    const/4 v1, -0x1

    iget-object p0, p0, Lb;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->s:Ld;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld;->invoke()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->k1(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

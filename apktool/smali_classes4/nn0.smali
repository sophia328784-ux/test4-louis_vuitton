.class public final synthetic Lnn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V
    .locals 0

    iput p2, p0, Lnn0;->b:I

    iput-object p1, p0, Lnn0;->c:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lnn0;->b:I

    iget-object p0, p0, Lnn0;->c:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/activity/compose/ManagedActivityResultLauncher;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToRegisterPage;->a:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToRegisterPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/activity/compose/ManagedActivityResultLauncher;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToLoginPage;->a:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToLoginPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenImage;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenImage;-><init>(Ljava/util/List;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenVideo;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenVideo;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f1411f0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Ldv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Ldv0;->b:I

    iput-object p1, p0, Ldv0;->c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    iput-object p2, p0, Ldv0;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ldv0;->b:I

    iget-object v1, p0, Ldv0;->d:Landroid/content/Context;

    iget-object p0, p0, Ldv0;->c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenLVPassEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenLVPassEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenPersonalSelectionEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenPersonalSelectionEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToPersonalSelectionsPage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToPersonalSelectionsPage;

    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

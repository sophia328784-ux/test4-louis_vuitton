.class public final synthetic Lvh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/OrderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/OrderActivity;I)V
    .locals 0

    iput p2, p0, Lvh0;->b:I

    iput-object p1, p0, Lvh0;->c:Lcom/vuitton/android/presentation/screen/orders/OrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lvh0;->b:I

    iget-object p0, p0, Lvh0;->c:Lcom/vuitton/android/presentation/screen/orders/OrderActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToImageViewerPage;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToImageViewerPage;-><init>(Ljava/util/List;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/orders/OrderDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/orders/OrderDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "EXTRA_RELOAD_ORDERS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToWebViewPage;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToWebViewPage;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/orders/OrderDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/orders/OrderDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p0, "Invalid URL : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    sget-object v0, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v1, "WebViewRouter"

    invoke-virtual {v0, v1, p0, p1}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

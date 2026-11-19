.class public final synthetic Lzb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;I)V
    .locals 0

    iput p2, p0, Lzb0;->b:I

    iput-object p1, p0, Lzb0;->c:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lzb0;->b:I

    iget-object p0, p0, Lzb0;->c:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;->q:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->f(Landroid/app/Activity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;->q:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;->p:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x7c

    invoke-static {v0, p0, p1, v1, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "webViewRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

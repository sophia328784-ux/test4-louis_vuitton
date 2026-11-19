.class public final synthetic Lar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V
    .locals 0

    iput p2, p0, Lar;->b:I

    iput-object p1, p0, Lar;->c:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lar;->b:I

    iget-object p0, p0, Lar;->c:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->m:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    sget v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->m:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    sget v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

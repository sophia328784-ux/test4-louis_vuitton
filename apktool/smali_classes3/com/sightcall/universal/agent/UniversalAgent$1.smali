.class Lcom/sightcall/universal/agent/UniversalAgent$1;
.super Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/UniversalAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-direct {p0}, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsDenied(Z)V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const-string v1, "Required permissions denied!"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->b(Lcom/sightcall/universal/agent/UniversalAgent;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$string;->universal_permissions_required_to_start:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v1}, Lcom/sightcall/universal/agent/UniversalAgent;->b(Lcom/sightcall/universal/agent/UniversalAgent;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->b(Lcom/sightcall/universal/agent/UniversalAgent;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->b(Lcom/sightcall/universal/agent/UniversalAgent;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPermissionsGranted()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->c(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/Scenario;->with(Lcom/sightcall/universal/scenario/Step;)Lcom/sightcall/universal/scenario/Scenario;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->start(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

.class Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;
.super Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/steps/PermissionsStep;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/steps/PermissionsStep;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    invoke-direct {p0}, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsDenied(Z)V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    sget-object v1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const-string v1, "Required permissions denied!"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$string;->universal_permissions_required_to_start:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "package"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/PermissionsStep;->access$200(Lcom/sightcall/universal/scenario/steps/PermissionsStep;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sightcall/universal/scenario/steps/PermissionsStep;->access$300(Lcom/sightcall/universal/scenario/steps/PermissionsStep;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionsGranted()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    sget-object v1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    new-instance v1, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    iget-object v2, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    invoke-static {v2}, Lcom/sightcall/universal/scenario/steps/PermissionsStep;->a(Lcom/sightcall/universal/scenario/steps/PermissionsStep;)Lcom/sightcall/universal/model/Config;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;-><init>(Lcom/sightcall/universal/model/Config;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sightcall/universal/scenario/Step;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/sightcall/universal/scenario/steps/PermissionsStep;->access$000(Lcom/sightcall/universal/scenario/steps/PermissionsStep;[Lcom/sightcall/universal/scenario/Step;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/PermissionsStep;->access$100(Lcom/sightcall/universal/scenario/steps/PermissionsStep;)V

    return-void
.end method

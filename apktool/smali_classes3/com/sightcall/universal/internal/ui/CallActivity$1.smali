.class Lcom/sightcall/universal/internal/ui/CallActivity$1;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallActivity;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$1;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$1;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$1;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->a0(Lcom/sightcall/universal/internal/ui/CallActivity;)Lcom/sightcall/universal/model/Session;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->buttonsLocal()[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/util/RealWearUtilsKt;->updateHelpVoiceCommands(Landroid/content/Context;[Lcom/sightcall/universal/internal/view/CallButton;)V

    return-void
.end method

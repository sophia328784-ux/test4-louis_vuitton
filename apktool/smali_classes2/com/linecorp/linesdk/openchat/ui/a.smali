.class public final synthetic Lcom/linecorp/linesdk/openchat/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic b:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/a;->b:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/a;->b:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->u(Landroid/view/MenuItem;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a02f1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;->UserProfile:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->v(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->v()V

    throw p0
.end method

.class public final synthetic Lhq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic b:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhq0;->b:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p0, p0, Lhq0;->b:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->u(Landroid/view/MenuItem;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->q(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;Landroid/view/MenuItem;)Z

    move-result p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->v()V

    throw p0
.end method

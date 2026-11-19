.class public final synthetic Landroidx/media3/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

.field public final synthetic c:Landroidx/media3/common/Player;

.field public final synthetic d:Landroidx/media3/common/TrackGroup;

.field public final synthetic e:Landroidx/media3/ui/PlayerControlView$TrackInformation;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/c;->b:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

    iput-object p2, p0, Landroidx/media3/ui/c;->c:Landroidx/media3/common/Player;

    iput-object p3, p0, Landroidx/media3/ui/c;->d:Landroidx/media3/common/TrackGroup;

    iput-object p4, p0, Landroidx/media3/ui/c;->e:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/c;->b:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

    iget-object v1, p0, Landroidx/media3/ui/c;->c:Landroidx/media3/common/Player;

    iget-object v2, p0, Landroidx/media3/ui/c;->d:Landroidx/media3/common/TrackGroup;

    iget-object p0, p0, Landroidx/media3/ui/c;->e:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {v0, v1, v2, p0}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->a(Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    throw p0
.end method

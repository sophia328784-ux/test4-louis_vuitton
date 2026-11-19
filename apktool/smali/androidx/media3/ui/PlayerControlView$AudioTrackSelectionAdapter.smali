.class final Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;
.super Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioTrackSelectionAdapter"
.end annotation


# instance fields
.field public final synthetic d:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f1409e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->d:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/common/Player;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->e(Landroidx/media3/common/TrackSelectionParameters;)Z

    move-result v0

    iget-object v1, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->c:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroidx/media3/ui/a;

    invoke-direct {v0, p0, v2}, Landroidx/media3/ui/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->d:Landroidx/media3/ui/PlayerControlView;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->c:[Ljava/lang/String;

    aput-object p1, p0, v0

    return-void
.end method

.method public final e(Landroidx/media3/common/TrackSelectionParameters;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v2, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->a:Landroidx/media3/common/Tracks$Group;

    iget-object v2, v2, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final f()V
    .locals 4

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->d:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->d(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->m(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->F0(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1409e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->c:[Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

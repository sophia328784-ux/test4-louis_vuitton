.class public final synthetic Li01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;


# direct methods
.method public synthetic constructor <init>(ILcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;)V
    .locals 0

    iput p1, p0, Li01;->b:I

    iput-object p2, p0, Li01;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Li01;->b:I

    const/4 v1, 0x0

    const v2, 0x7f140967

    const/4 v3, -0x1

    const v4, 0x1020002

    iget-object p0, p0, Li01;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Lcom/google/android/material/snackbar/Snackbar;->g(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Lcom/google/android/material/snackbar/Snackbar;->g(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->j:Landroid/widget/ImageView;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->R()Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceInfo;->getPlayStatus()Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object p0

    sget-object v1, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_PLAYING:Lcom/linkplay/core/status/LPPlayStatus;

    if-ne p0, v1, :cond_1

    const p0, 0x7f080382

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f080383

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Lcom/google/android/material/snackbar/Snackbar;->g(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Lcom/google/android/material/snackbar/Snackbar;->g(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "No media present"

    invoke-static {p0, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->g(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->R()Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linkplay/mediainfo/LPMediaInfo;->getPlayUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, ":episode:"

    invoke-static {v4, v5, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    :goto_2
    const/4 v5, 0x4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-static {v0}, Lcom/linkplay/core/utils/ToolsUtil;->isSpotifyTrackSource(Lcom/linkplay/core/device/LPDevice;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SPOTIFY"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getSkiplimit()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->k:Landroid/widget/ImageView;

    iget-object v0, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->f:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Lwu0;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lwu0;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v0, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->k:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->f:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08038b

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_7
    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->f:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    :pswitch_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->R()Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;

    move-result-object p0

    iget-object v2, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_8
    move-object v3, v1

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_9
    move-object v3, v1

    :goto_7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->R()Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTickTime()J

    move-result-wide v3

    goto :goto_8

    :cond_b
    move-wide v3, v1

    :goto_8
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTotalTime()J

    move-result-wide v1

    :cond_c
    const-wide/16 v5, 0x2710

    cmp-long v0, v1, v5

    if-lez v0, :cond_d

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    :cond_d
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;->f:Landroidx/appcompat/widget/AppCompatSeekBar;

    long-to-int v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    long-to-int v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

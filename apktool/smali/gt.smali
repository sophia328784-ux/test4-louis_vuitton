.class public final synthetic Lgt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final synthetic c:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgt;->b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Lgt;->c:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 7

    check-cast p1, Landroidx/media3/common/Format;

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    iget-object v0, p0, Lgt;->c:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->A0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-object p0, p0, Lgt;->b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    iget v0, p1, Landroidx/media3/common/Format;->G:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-le v0, v3, :cond_7

    iget-object v0, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "audio/eac3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v6, "audio/ac4"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string v3, "audio/ac3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :sswitch_3
    const-string v3, "audio/eac3-joc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v4

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    if-eqz v0, :cond_7

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    if-eqz v0, :cond_6

    iget-boolean v2, v0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->i:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p0, p1}, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    return v4

    :cond_7
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

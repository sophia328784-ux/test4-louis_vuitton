.class public final Landroidx/media3/common/MediaItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/String;

.field public d:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

.field public e:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

.field public f:Ljava/util/List;

.field public g:Ljava/lang/String;

.field public h:Lcom/google/common/collect/ImmutableList;

.field public i:Landroidx/media3/common/MediaItem$AdsConfiguration;

.field public j:Ljava/lang/Object;

.field public k:J

.field public l:Landroidx/media3/common/MediaMetadata;

.field public m:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

.field public n:Landroidx/media3/common/MediaItem$RequestMetadata;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->d:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    new-instance v0, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->e:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->f:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->h:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->m:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    sget-object v0, Landroidx/media3/common/MediaItem$RequestMetadata;->d:Landroidx/media3/common/MediaItem$RequestMetadata;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->n:Landroidx/media3/common/MediaItem$RequestMetadata;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$Builder;->k:J

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/MediaItem;
    .locals 12

    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->e:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    iget-object v1, v0, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->b:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->a:Ljava/util/UUID;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v2, p0, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    new-instance v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, p0, Landroidx/media3/common/MediaItem$Builder;->c:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/common/MediaItem$Builder;->e:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    iget-object v5, v4, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->a:Ljava/util/UUID;

    if-eqz v5, :cond_2

    new-instance v0, Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-direct {v0, v4}, Landroidx/media3/common/MediaItem$DrmConfiguration;-><init>(Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;)V

    :cond_2
    move-object v4, v0

    iget-object v5, p0, Landroidx/media3/common/MediaItem$Builder;->i:Landroidx/media3/common/MediaItem$AdsConfiguration;

    iget-object v6, p0, Landroidx/media3/common/MediaItem$Builder;->f:Ljava/util/List;

    iget-object v7, p0, Landroidx/media3/common/MediaItem$Builder;->g:Ljava/lang/String;

    iget-object v8, p0, Landroidx/media3/common/MediaItem$Builder;->h:Lcom/google/common/collect/ImmutableList;

    iget-object v9, p0, Landroidx/media3/common/MediaItem$Builder;->j:Ljava/lang/Object;

    iget-wide v10, p0, Landroidx/media3/common/MediaItem$Builder;->k:J

    invoke-direct/range {v1 .. v11}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/MediaItem$DrmConfiguration;Landroidx/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;J)V

    move-object v5, v1

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    new-instance v2, Landroidx/media3/common/MediaItem;

    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_3
    move-object v3, v0

    goto :goto_4

    :cond_4
    const-string v0, ""

    goto :goto_3

    :goto_4
    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->d:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v4, v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->m:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->a()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v6

    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->l:Landroidx/media3/common/MediaMetadata;

    if-eqz v0, :cond_5

    :goto_5
    move-object v7, v0

    goto :goto_6

    :cond_5
    sget-object v0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    goto :goto_5

    :goto_6
    iget-object v8, p0, Landroidx/media3/common/MediaItem$Builder;->n:Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-direct/range {v2 .. v8}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    return-object v2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    return-void
.end method

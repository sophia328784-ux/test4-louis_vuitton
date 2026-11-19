.class public final Lcom/google/android/exoplayer2/MediaItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public final c:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

.field public final d:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

.field public final e:Ljava/util/List;

.field public final f:Lcom/google/common/collect/ImmutableList;

.field public final g:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

.field public final h:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->c:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->d:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->e:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->f:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->g:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->b:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->h:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/MediaItem;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->d:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v4, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->a:Ljava/util/UUID;

    if-eqz v5, :cond_0

    new-instance v3, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->e:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->f:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v4, v2, v3, v1, v5}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Ljava/util/List;Lcom/google/common/collect/ImmutableList;)V

    move-object v9, v4

    goto :goto_0

    :cond_1
    move-object v9, v3

    :goto_0
    new-instance v6, Lcom/google/android/exoplayer2/MediaItem;

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    :goto_1
    move-object v7, v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->c:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->g:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const v17, -0x800001

    const v18, -0x800001

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v10 .. v18}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    sget-object v11, Lcom/google/android/exoplayer2/MediaMetadata;->b:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v12, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->h:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)V

    return-object v6
.end method

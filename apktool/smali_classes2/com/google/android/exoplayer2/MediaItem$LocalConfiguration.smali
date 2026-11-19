.class public final Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalConfiguration"
.end annotation


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

.field public final d:Ljava/util/List;

.field public final e:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Ltr;->v(IIIII)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->e(I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Ljava/util/List;Lcom/google/common/collect/ImmutableList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->e:Lcom/google/common/collect/ImmutableList;

    sget-object p0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance p0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p4}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    new-instance p3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->b:Landroid/net/Uri;

    iput-object v0, p3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->a:Landroid/net/Uri;

    iget-object v0, p2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->c:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->b:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->d:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->c:Ljava/lang/String;

    iget v0, p2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->e:I

    iput v0, p3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->d:I

    iget v0, p2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->f:I

    iput v0, p3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->e:I

    iget-object p2, p2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->g:Ljava/lang/String;

    iput-object p2, p3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->f:Ljava/lang/String;

    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->b:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->e:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

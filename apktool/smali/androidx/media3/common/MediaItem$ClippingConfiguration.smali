.class public Landroidx/media3/common/MediaItem$ClippingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final i:Landroidx/media3/common/MediaItem$ClippingConfiguration;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    sput-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->i:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->j:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->k:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->l:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->m:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->n:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->o:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->p:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->a:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->a:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->b:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->c:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->a:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->b:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->c:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->d:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->e:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    iget-boolean p1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->f:Z

    iput-boolean p1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    iget-boolean v3, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    iget-boolean v3, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    iget-boolean v3, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    iget-boolean p1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    add-int/2addr v0, p0

    return v0
.end method

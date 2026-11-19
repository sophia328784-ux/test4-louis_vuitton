.class public final Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem$LiveConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->a:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->b:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->c:J

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->d:F

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->e:F

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/MediaItem$LiveConfiguration;
    .locals 9

    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->a:J

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->b:J

    iget-wide v5, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->c:J

    iget v7, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->d:F

    iget v8, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->e:F

    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-object v0
.end method

.class public final Landroidx/media3/common/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->a:I

    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->b:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->c:I

    iput v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->d:I

    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->e:I

    iput-boolean v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->f:Z

    iput-boolean v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/AudioAttributes;
    .locals 8

    new-instance v0, Landroidx/media3/common/AudioAttributes;

    iget v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->a:I

    iget v2, p0, Landroidx/media3/common/AudioAttributes$Builder;->b:I

    iget v3, p0, Landroidx/media3/common/AudioAttributes$Builder;->c:I

    iget v4, p0, Landroidx/media3/common/AudioAttributes$Builder;->d:I

    iget v5, p0, Landroidx/media3/common/AudioAttributes$Builder;->e:I

    iget-boolean v6, p0, Landroidx/media3/common/AudioAttributes$Builder;->f:Z

    iget-boolean v7, p0, Landroidx/media3/common/AudioAttributes$Builder;->g:Z

    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/AudioAttributes;-><init>(IIIIIZZ)V

    return-object v0
.end method

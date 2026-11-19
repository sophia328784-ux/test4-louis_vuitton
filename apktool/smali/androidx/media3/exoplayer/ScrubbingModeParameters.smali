.class public final Landroidx/media3/exoplayer/ScrubbingModeParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    }
.end annotation


# static fields
.field public static final g:Landroidx/media3/exoplayer/ScrubbingModeParameters;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableSet;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;-><init>()V

    new-instance v1, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/ScrubbingModeParameters;-><init>(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)V

    sput-object v1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->g:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->a:Lcom/google/common/collect/ImmutableSet;

    iput-object v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->b:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->c:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->d:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->e:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->f:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iget-object v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    iget-object v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 9

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    const/4 v2, 0x0

    const/4 v3, 0x0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

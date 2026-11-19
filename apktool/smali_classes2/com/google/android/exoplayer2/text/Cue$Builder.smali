.class public final Lcom/google/android/exoplayer2/text/Cue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:F

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->b:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->c:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->d:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->e:F

    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->f:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->h:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->i:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->j:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->k:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->l:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/text/Cue;
    .locals 13

    new-instance v0, Lcom/google/android/exoplayer2/text/Cue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->b:F

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->c:I

    iget v4, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->d:I

    iget v5, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->e:F

    iget v6, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->f:I

    iget v7, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->g:I

    iget v8, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->h:F

    iget v9, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->i:F

    iget v10, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->j:F

    iget v11, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->k:I

    iget v12, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->l:I

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;FIIFIIFFFII)V

    return-object v0
.end method

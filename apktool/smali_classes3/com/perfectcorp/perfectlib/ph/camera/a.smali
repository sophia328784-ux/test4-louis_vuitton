.class public final Lcom/perfectcorp/perfectlib/ph/camera/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/camera/a$a;,
        Lcom/perfectcorp/perfectlib/ph/camera/a$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/NailPosition;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

.field public final n:F


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/camera/a$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->c:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->c:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->d:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->d:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->e:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->e:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->f:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->f:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->g:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->g:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->h:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->h:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->i:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->i:I

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->a:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->k:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->a()[Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->f:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->b:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    :goto_1
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->k:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/camera/b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    :goto_3
    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->m:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget p1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->n:F

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a;->n:F

    return-void
.end method

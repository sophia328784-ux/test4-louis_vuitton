.class public final Lcom/perfectcorp/perfectlib/ph/camera/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/NailPosition;

.field public b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->n:F

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/camera/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->n:F

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->c:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->c:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->d:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->d:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->e:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->e:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->f:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->f:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->g:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->g:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->h:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->h:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->i:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->i:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->k:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->m:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    const v2, 0xffffff

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%06x"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->m:Ljava/lang/String;

    iget p1, p1, Lcom/perfectcorp/perfectlib/ph/camera/a;->n:F

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->n:F

    return-void
.end method

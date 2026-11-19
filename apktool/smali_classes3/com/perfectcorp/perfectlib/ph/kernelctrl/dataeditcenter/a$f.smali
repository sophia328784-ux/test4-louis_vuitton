.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final i:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;",
            ">;II)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V

    iput p7, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;->i:I

    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;->i:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", getSizeStrength="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;->i:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

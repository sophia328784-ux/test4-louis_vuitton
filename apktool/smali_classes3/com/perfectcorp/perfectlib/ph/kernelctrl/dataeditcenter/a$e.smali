.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;ILcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;",
            ">;I",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;",
            ")V"
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

    .line 60
    iget p0, p7, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-nez p1, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    move-object v4, v1

    :goto_1
    if-nez p1, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    move-object v5, v1

    :goto_2
    if-nez p1, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    move-object v6, v1

    :goto_3
    if-nez p1, :cond_4

    :goto_4
    move-object v7, v0

    goto :goto_5

    :cond_4
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->e:Ljava/lang/String;

    goto :goto_4

    :goto_5
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_6
    move-object v8, v0

    goto :goto_7

    :cond_5
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    goto :goto_6

    :goto_7
    if-nez p1, :cond_6

    const/4 p1, 0x0

    :goto_8
    move-object v2, p0

    move v9, p1

    goto :goto_9

    :cond_6
    iget p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    goto :goto_8

    :goto_9
    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V

    return-void
.end method

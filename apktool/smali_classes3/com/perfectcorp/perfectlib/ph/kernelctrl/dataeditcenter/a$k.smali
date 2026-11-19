.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;",
            ">;I)V"
        }
    .end annotation

    const-string v2, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    return-void
.end method

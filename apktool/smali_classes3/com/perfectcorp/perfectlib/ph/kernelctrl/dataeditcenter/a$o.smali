.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;IILcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;",
            ">;II",
            "Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$p;",
            "I)V"
        }
    .end annotation

    .line 7
    invoke-direct/range {p0 .. p7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->D(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->D(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->skuGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.class public Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;

.field public final h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->q:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V
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
            ">;I)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->e:Ljava/lang/String;

    iput p7, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    new-instance p4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {p4, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;",
            ">;I)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->e:Ljava/lang/String;

    iput p8, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-interface {p7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    new-instance p4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {p4, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    if-nez p1, :cond_3

    move-object v1, v0

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    :goto_3
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    if-nez p1, :cond_4

    move-object v1, v0

    goto :goto_4

    :cond_4
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->e:Ljava/lang/String;

    :goto_4
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->e:Ljava/lang/String;

    if-nez p1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    iget v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    :goto_5
    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", getStyleID="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", getPatternID="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", getPaletteID="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", getStrength="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", getColors="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

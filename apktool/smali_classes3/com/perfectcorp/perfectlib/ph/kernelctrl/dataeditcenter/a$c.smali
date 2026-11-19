.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;
    }
.end annotation


# instance fields
.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->c:Ljava/lang/String;

    iget v4, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->d:I

    iget v5, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->e:I

    iget-object v6, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->f:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;)V
    .locals 1

    .line 51
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;

    iget v2, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->d:I

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget v1, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->d:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final e()Z
    .locals 6

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->f:Ljava/util/ArrayList;

    iget v1, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->d:I

    invoke-interface {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-boolean v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->c:Z

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->c:Z

    if-eq v2, v1, :cond_0

    :cond_1
    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/Cache;->b()V

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/Cache;->b()V

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sku guid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "NULL metadata"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", getColorUnits="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->i:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

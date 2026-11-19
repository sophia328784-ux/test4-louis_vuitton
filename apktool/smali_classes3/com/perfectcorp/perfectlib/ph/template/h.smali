.class final Lcom/perfectcorp/perfectlib/ph/template/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/String;

.field public synthetic c:Lcom/perfectcorp/perfectlib/ph/template/g;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectInfo doesn\'t exist in the Look. Look id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/h;->c:Lcom/perfectcorp/perfectlib/ph/template/g;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/g;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effect id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/h;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PanelDataCenter"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/g;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    return-object p0
.end method

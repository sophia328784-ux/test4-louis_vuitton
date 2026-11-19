.class final Lcom/perfectcorp/perfectlib/ph/template/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;


# virtual methods
.method public final bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/f;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

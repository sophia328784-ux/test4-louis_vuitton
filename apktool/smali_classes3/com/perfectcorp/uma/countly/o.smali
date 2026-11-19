.class final Lcom/perfectcorp/uma/countly/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/perfectcorp/uma/countly/r;",
        ">;"
    }
.end annotation


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/perfectcorp/uma/countly/r;

    check-cast p2, Lcom/perfectcorp/uma/countly/r;

    iget p0, p1, Lcom/perfectcorp/uma/countly/r;->e:I

    iget p1, p2, Lcom/perfectcorp/uma/countly/r;->e:I

    sub-int/2addr p0, p1

    return p0
.end method

.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, [I

    check-cast p2, [I

    const/4 p0, 0x1

    aget v0, p1, p0

    const/4 v1, 0x0

    aget p1, p1, v1

    sub-int/2addr v0, p1

    aget p0, p2, p0

    aget p1, p2, v1

    sub-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

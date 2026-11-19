.class abstract Lcom/perfectcorp/thirdparty/com/google/common/base/d$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/base/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/d;->c(C)Z

    move-result p0

    return p0
.end method

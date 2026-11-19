.class public abstract Lcom/perfectcorp/common/utility/Lists;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/utility/Lists$a;
    }
.end annotation


# direct methods
.method public static varargs a([Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/common/utility/Lists$a;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/utility/Lists$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

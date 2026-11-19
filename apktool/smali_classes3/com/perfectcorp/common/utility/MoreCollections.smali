.class public abstract Lcom/perfectcorp/common/utility/MoreCollections;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/utility/o;

    invoke-direct {v0}, Lcom/perfectcorp/common/utility/o;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/util/Collection;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

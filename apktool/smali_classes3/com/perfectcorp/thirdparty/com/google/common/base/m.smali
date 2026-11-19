.class public final Lcom/perfectcorp/thirdparty/com/google/common/base/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/base/m$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/common/base/d;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/base/n;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/base/n;Lcom/perfectcorp/thirdparty/com/google/common/base/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/m;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/n;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/m;->a:Lcom/perfectcorp/thirdparty/com/google/common/base/d;

    return-void
.end method

.method public static a(Lcom/perfectcorp/thirdparty/com/google/common/base/d;)Lcom/perfectcorp/thirdparty/com/google/common/base/m;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/base/n;

    invoke-direct {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/n;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/base/d;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/base/d$d;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/d$d;

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/m;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/base/n;Lcom/perfectcorp/thirdparty/com/google/common/base/d;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/o;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/m;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/n;

    invoke-direct {v0, v1, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/o;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/base/n;Lcom/perfectcorp/thirdparty/com/google/common/base/m;Ljava/lang/CharSequence;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

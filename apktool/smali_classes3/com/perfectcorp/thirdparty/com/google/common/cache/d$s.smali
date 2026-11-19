.class Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/d$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

.field public volatile e:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->e:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->c:I

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->e:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    return-object p0
.end method

.method public final b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->e:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    return-void
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->c:I

    return p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;->b:Ljava/lang/Object;

    return-object p0
.end method

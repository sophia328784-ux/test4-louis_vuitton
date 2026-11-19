.class public final Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/thirdparty/com/google/common/base/r;

.field public static final c:Lcom/perfectcorp/thirdparty/com/google/common/base/t;


# instance fields
.field public a:Lcom/perfectcorp/thirdparty/com/google/common/base/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/s;->a(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/r;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/r;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    const-class v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public static b()Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/r;

    iput-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->a:Lcom/perfectcorp/thirdparty/com/google/common/base/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$k;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-direct {v1, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)V

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$l;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v0, "CacheBuilder"

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

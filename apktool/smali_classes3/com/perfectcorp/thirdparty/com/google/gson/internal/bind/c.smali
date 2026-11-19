.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 4

    iget-object v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->c(Z)V

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_2
    const-class v0, Ljava/lang/Object;

    :goto_0
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    move-result-object p0

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/k;Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;)V

    return-object p2
.end method

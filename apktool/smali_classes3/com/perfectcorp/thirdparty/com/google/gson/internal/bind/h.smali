.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    iput-boolean p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 9

    iget-object v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    iget-object v3, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/a;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    const-class v5, Ljava/util/Properties;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v1, v5, :cond_1

    new-array v1, v6, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v8

    aput-object v3, v1, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    invoke-static {v5}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->c(Z)V

    invoke-static {v1, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-array v1, v6, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v8

    aput-object v3, v1, v7

    :goto_0
    aget-object v3, v1, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_4

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v4, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object v3

    :goto_1
    move-object v4, v3

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    goto :goto_1

    :goto_3
    aget-object v3, v1, v7

    new-instance v5, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v5, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object v6

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    invoke-virtual {v5, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    move-result-object v0

    move v5, v7

    move-object v7, v0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;

    aget-object v8, v1, v8

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/k;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/k;Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;)V

    return-object v0
.end method

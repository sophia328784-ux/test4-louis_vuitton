.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

.field public final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->i:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->C()V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;->a()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->r()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$b;

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$b;->c:Z

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;

    iget-object v3, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;->f:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v3, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-boolean v4, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;->h:Z

    if-nez v4, :cond_1

    :cond_3
    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->H()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->t()V

    return-object v0

    :goto_2
    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-object v2

    :catch_1
    move-exception p0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 5

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->y()Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->t()V

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$b;

    move-object v1, v0

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;

    iget-boolean v2, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$b;->b:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->o(Ljava/lang/String;)V

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    iget-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;->e:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;->f:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;->g:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-direct {v2, v3, v4, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/k;Ljava/lang/reflect/Type;)V

    invoke-virtual {v2, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->w()V

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void
.end method

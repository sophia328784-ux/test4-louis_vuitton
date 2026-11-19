.class public final Lcom/perfectcorp/thirdparty/com/google/gson/Gson;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/gson/Gson$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/List;

.field public final d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/d;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;ZLjava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    iput-boolean p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->g:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;->b:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->e:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->c:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->b:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/lang/Long;

    sget-object p3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->d:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p2, p3}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/perfectcorp/thirdparty/com/google/gson/k;)Lcom/perfectcorp/thirdparty/com/google/gson/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/e;

    invoke-direct {p2}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    invoke-static {p3, v1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/perfectcorp/thirdparty/com/google/gson/k;)Lcom/perfectcorp/thirdparty/com/google/gson/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/f;

    invoke-direct {p2}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    sget-object p3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    invoke-static {p3, v1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/perfectcorp/thirdparty/com/google/gson/k;)Lcom/perfectcorp/thirdparty/com/google/gson/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/a;->c:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c;

    invoke-direct {p2, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p3}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;Z)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->h:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;

    sget-object p3, Lcom/perfectcorp/thirdparty/com/google/gson/a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/a;

    invoke-direct {p2, v0, p3}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;Lcom/perfectcorp/thirdparty/com/google/gson/c;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->c:Ljava/util/List;

    return-void
.end method

.method public static d(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->j:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/h;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/h;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/perfectcorp/thirdparty/com/google/gson/stream/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/h;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/h;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/gson/Gson$a;

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    :try_start_0
    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/gson/Gson$a;

    invoke-direct {v4}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/thirdparty/com/google/gson/l;

    invoke-interface {v6, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/l;->a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object p0, v4, Lcom/perfectcorp/thirdparty/com/google/gson/Gson$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-nez p0, :cond_5

    iput-object v6, v4, Lcom/perfectcorp/thirdparty/com/google/gson/Gson$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v6

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_5
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw p0
.end method

.method public final b(Ljava/io/Writer;)Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;
    .locals 0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    return-object p0
.end method

.method public final c(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    :try_start_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    const/4 v1, 0x0

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v2, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    :try_start_1
    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-direct {p2, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-direct {p2, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_0

    iput-boolean v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_2
    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-direct {p2, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iput-boolean v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    throw p0
.end method

.method public final e(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V
    .locals 3

    iget-boolean v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    iget-boolean v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->g:Z

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->e:Z

    iput-boolean p0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->g:Z

    iget-boolean p0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    :try_start_0
    invoke-static {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/z;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    iput-boolean v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->g:Z

    iput-boolean p0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/h;

    invoke-direct {v2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/h;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    iput-boolean v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->g:Z

    iput-boolean p0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    throw p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object p2

    iget-boolean v0, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    iget-boolean v1, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->g:Z

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->e:Z

    iput-boolean p0, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->g:Z

    iget-boolean p0, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    const/4 v2, 0x0

    iput-boolean v2, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    iput-boolean v1, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->g:Z

    iput-boolean p0, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/h;

    invoke-direct {p2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/h;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v0, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    iput-boolean v1, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->g:Z

    iput-boolean p0, p3, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    throw p1
.end method

.method public final h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->c(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/y;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->c(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->f(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)V

    return-object p0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->b(Ljava/io/Writer;)Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->e(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/h;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/h;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->b(Ljava/io/Writer;)Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->g(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/h;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/h;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:falsefactories:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

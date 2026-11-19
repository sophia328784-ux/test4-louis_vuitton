.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/k;Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
            "TE;>;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/internal/x<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    invoke-direct {v0, p1, p3, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/k;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->i:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->C()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h()V

    :goto_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o()V

    return-object v0
.end method

.method public final synthetic b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->y()Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->q()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/c$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v1, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->s()V

    return-void
.end method

.class abstract Lcom/perfectcorp/uma/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/uma/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/uma/l$a;
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/perfectcorp/uma/p;
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/l;->a()Lcom/perfectcorp/uma/p;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/perfectcorp/uma/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/perfectcorp/uma/l;->a()Lcom/perfectcorp/uma/p;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/uma/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ID)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/perfectcorp/uma/l;->a()Lcom/perfectcorp/uma/p;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/perfectcorp/uma/p;->a(Ljava/lang/String;Ljava/util/Map;ID)V

    return-void
.end method

.method public final a_()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/l;->a()Lcom/perfectcorp/uma/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/perfectcorp/uma/p;->a_()V

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/l;->a()Lcom/perfectcorp/uma/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/perfectcorp/uma/p;->b()V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/l;->a()Lcom/perfectcorp/uma/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/perfectcorp/uma/p;->c()V

    return-void
.end method

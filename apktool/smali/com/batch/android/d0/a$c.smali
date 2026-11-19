.class public final Lcom/batch/android/d0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/d0/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/d0/a;

.field final synthetic b:Lcom/batch/android/g0/c$g;


# direct methods
.method public constructor <init>(Lcom/batch/android/d0/a;Lcom/batch/android/g0/c$g;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/d0/a$c;->a:Lcom/batch/android/d0/a;

    iput-object p2, p0, Lcom/batch/android/d0/a$c;->b:Lcom/batch/android/g0/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/batch/android/f0/d;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed downloading image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Messaging"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/batch/android/d0/a$c;->a:Lcom/batch/android/d0/a;

    invoke-static {v0}, Lcom/batch/android/d0/a;->b(Lcom/batch/android/d0/a;)Lcom/batch/android/g0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->r()Z

    move-result v0

    iget-object v1, p0, Lcom/batch/android/d0/a$c;->a:Lcom/batch/android/d0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/batch/android/d0/a;->a(Lcom/batch/android/f0/d;)V

    return-void

    :cond_0
    invoke-static {v1}, Lcom/batch/android/d0/a;->c(Lcom/batch/android/d0/a;)Lcom/batch/android/m0/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/batch/android/d0/a$c;->b:Lcom/batch/android/g0/c$g;

    invoke-virtual {p0}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/batch/android/m0/a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Lcom/batch/android/z/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/z/a$d<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/batch/android/d0/a$c;->a:Lcom/batch/android/d0/a;

    invoke-static {v0}, Lcom/batch/android/d0/a;->a(Lcom/batch/android/d0/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/d0/a$c;->b:Lcom/batch/android/g0/c$g;

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/batch/android/d0/a$c;->a:Lcom/batch/android/d0/a;

    invoke-static {v0}, Lcom/batch/android/d0/a;->c(Lcom/batch/android/d0/a;)Lcom/batch/android/m0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/d0/a$c;->b:Lcom/batch/android/g0/c$g;

    invoke-virtual {p0}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/m0/a;->a(Ljava/lang/String;Lcom/batch/android/z/a$d;)V

    return-void

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/d0/a$c;->a:Lcom/batch/android/d0/a;

    invoke-static {v0}, Lcom/batch/android/d0/a;->c(Lcom/batch/android/d0/a;)Lcom/batch/android/m0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/d0/a$c;->b:Lcom/batch/android/g0/c$g;

    invoke-virtual {p0}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/batch/android/m0/a;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

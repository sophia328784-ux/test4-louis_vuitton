.class Lcom/batch/android/z0/a0$h;
.super Lcom/batch/android/z0/a0$d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/z0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field final synthetic c:Lcom/batch/android/z0/a0;


# direct methods
.method private constructor <init>(Lcom/batch/android/z0/a0;)V
    .locals 1

    iput-object p1, p0, Lcom/batch/android/z0/a0$h;->c:Lcom/batch/android/z0/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/z0/a0$d;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/batch/android/z0/a0$h;-><init>(Lcom/batch/android/z0/a0;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->l:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public D()Lcom/batch/android/z0/d;
    .locals 0

    return-object p0
.end method

.method public Z()Lcom/batch/android/z0/i;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/z0/a0$h;->c:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/z0/i;

    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/z0/a0$h;->c:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/z0/i;

    invoke-interface {p0, p1}, Lcom/batch/android/z0/x;->a(Lcom/batch/android/x0/j;)V

    return-void
.end method

.method public g()[B
    .locals 0

    iget-object p0, p0, Lcom/batch/android/z0/a0$h;->c:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/z0/i;

    invoke-interface {p0}, Lcom/batch/android/z0/d;->g()[B

    move-result-object p0

    return-object p0
.end method

.method public k()B
    .locals 0

    iget-object p0, p0, Lcom/batch/android/z0/a0$h;->c:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/z0/i;

    invoke-interface {p0}, Lcom/batch/android/z0/d;->k()B

    move-result p0

    return p0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$h;->Z()Lcom/batch/android/z0/i;

    move-result-object p0

    return-object p0
.end method

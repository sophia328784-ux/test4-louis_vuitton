.class public Lcom/batch/android/y0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/y0/g;


# instance fields
.field private b:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/batch/android/msgpack/core/buffer/MessageBuffer;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/batch/android/y0/a;->b:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/batch/android/y0/a;->c:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/batch/android/y0/a;->c:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/batch/android/y0/a;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const-string v0, "input array is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->wrap([BII)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/y0/a;-><init>(Lcom/batch/android/msgpack/core/buffer/MessageBuffer;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/msgpack/core/buffer/MessageBuffer;)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/batch/android/y0/a;->b:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    .line 17
    iput-object p1, p0, Lcom/batch/android/y0/a;->b:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/batch/android/y0/a;->c:Z

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/batch/android/y0/a;->c:Z

    return-object v0
.end method

.method public a([B)V
    .locals 1

    const-string v0, "input array is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->wrap([B)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/y0/a;->a(Lcom/batch/android/msgpack/core/buffer/MessageBuffer;)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-void
.end method

.method public b([BII)V
    .locals 1

    const-string v0, "input array is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->wrap([BII)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/y0/a;->a(Lcom/batch/android/msgpack/core/buffer/MessageBuffer;)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/y0/a;->b:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/y0/a;->c:Z

    return-void
.end method

.method public next()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/y0/a;->c:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/y0/a;->c:Z

    iget-object p0, p0, Lcom/batch/android/y0/a;->b:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-object p0
.end method

.class public Lcom/batch/android/y0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/y0/g;


# instance fields
.field private b:Ljava/nio/ByteBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/y0/c;->c:Z

    const-string v0, "input ByteBuffer is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/c;->b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/y0/c;->b:Ljava/nio/ByteBuffer;

    const-string v1, "input ByteBuffer is null"

    invoke-static {p1, v1}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/c;->b:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/batch/android/y0/c;->c:Z

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public next()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 2

    iget-boolean v0, p0, Lcom/batch/android/y0/c;->c:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/y0/c;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/batch/android/y0/c;->c:Z

    return-object v0
.end method

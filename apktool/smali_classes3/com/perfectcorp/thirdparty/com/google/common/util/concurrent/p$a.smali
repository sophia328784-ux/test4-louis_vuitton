.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method public final e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method public final bridge synthetic l()Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

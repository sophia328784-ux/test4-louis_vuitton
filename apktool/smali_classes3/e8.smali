.class public final synthetic Le8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le8;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-wide p2, p0, Le8;->c:D

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p2, Ljava/lang/String;

    sget-object p2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    int-to-double p1, p1

    iget-wide v0, p0, Le8;->c:D

    div-double/2addr p1, v0

    iget-object p0, p0, Le8;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void
.end method

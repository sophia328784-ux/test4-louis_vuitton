.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# static fields
.field public static final c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Ljava/lang/Thread;)V

    return-void
.end method

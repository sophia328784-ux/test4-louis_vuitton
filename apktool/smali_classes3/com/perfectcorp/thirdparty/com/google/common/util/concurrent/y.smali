.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/y;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;->b:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/y;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

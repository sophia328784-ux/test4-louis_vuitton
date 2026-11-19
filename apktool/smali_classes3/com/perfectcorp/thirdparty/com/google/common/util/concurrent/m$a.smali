.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    return-void
.end method

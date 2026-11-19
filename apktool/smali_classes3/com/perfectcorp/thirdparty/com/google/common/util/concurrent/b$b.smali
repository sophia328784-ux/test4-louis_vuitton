.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

.field public static final d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    sput-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->a:Z

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->b:Ljava/lang/Throwable;

    return-void
.end method

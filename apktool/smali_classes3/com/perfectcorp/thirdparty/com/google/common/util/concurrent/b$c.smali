.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/c;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;->a:Ljava/lang/Throwable;

    return-void
.end method

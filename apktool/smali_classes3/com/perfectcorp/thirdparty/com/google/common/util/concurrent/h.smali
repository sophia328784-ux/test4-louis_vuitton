.class abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;

.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->b:Ljava/util/logging/Logger;

    :try_start_0
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$b;

    const-class v2, Ljava/util/Set;

    const-string v3, "seenExceptions"

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-string v3, "remaining"

    invoke-static {v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$b;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object v0, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$b;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->seenExceptions:Ljava/util/Set;

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->remaining:I

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->seenExceptions:Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)I
    .locals 2

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->remaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->remaining:I

    return v0
.end method

.method public static synthetic c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->remaining:I

    return p0
.end method


# virtual methods
.method public abstract a(Ljava/util/Set;)V
.end method

.method public final c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->a(Ljava/util/Set;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;

    invoke-virtual {v1, p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;->b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->seenExceptions:Ljava/util/Set;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)I

    move-result p0

    return p0
.end method

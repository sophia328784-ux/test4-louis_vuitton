.class final Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.room.coroutines.ConnectionPoolImpl"
    f = "ConnectionPoolImpl.kt"
    l = {
        0x72,
        0x76,
        0x21d,
        0x93
    }
    m = "useConnection"
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Serializable;

.field public d:Ljava/lang/Object;

.field public e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public f:Lkotlin/coroutines/CoroutineContext;

.field public g:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public h:Z

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Landroidx/room/coroutines/ConnectionPoolImpl;

.field public k:I


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->j:Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->i:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->k:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->j:Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-virtual {v1, p1, v0, p0}, Landroidx/room/coroutines/ConnectionPoolImpl;->j1(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

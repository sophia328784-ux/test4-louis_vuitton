.class final Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;
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
    c = "androidx.room.coroutines.AndroidSQLiteDriverPooledConnection"
    f = "AndroidSQLiteDriverConnectionPool.android.kt"
    l = {
        0x57
    }
    m = "transaction"
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Landroid/database/sqlite/SQLiteDatabase;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->e:Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->d:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->f:I

    iget-object p1, p0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$transaction$1;->e:Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->e(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

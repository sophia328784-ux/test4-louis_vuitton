.class final Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;
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
    c = "androidx.room.driver.SupportSQLitePooledConnection"
    f = "SupportSQLiteConnectionPool.android.kt"
    l = {
        0x53
    }
    m = "transaction"
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/room/driver/SupportSQLitePooledConnection;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLitePooledConnection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->e:Landroidx/room/driver/SupportSQLitePooledConnection;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->d:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->f:I

    iget-object p1, p0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->e:Landroidx/room/driver/SupportSQLitePooledConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Landroidx/room/driver/SupportSQLitePooledConnection;->e(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Landroidx/room/driver/SupportSQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/room/driver/SupportSQLiteConnectionPool;",
        "Landroidx/room/coroutines/ConnectionPool;",
        "Landroidx/room/driver/SupportSQLiteDriver;",
        "supportDriver",
        "<init>",
        "(Landroidx/room/driver/SupportSQLiteDriver;)V",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroidx/room/driver/SupportSQLiteDriver;


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLiteDriver;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->b:Landroidx/room/driver/SupportSQLiteDriver;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->b:Landroidx/room/driver/SupportSQLiteDriver;

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final j1(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->b:Landroidx/room/driver/SupportSQLiteDriver;

    iget-object p1, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    new-instance p1, Landroidx/room/driver/SupportSQLitePooledConnection;

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-direct {p1, v0}, Landroidx/room/driver/SupportSQLitePooledConnection;-><init>(Landroidx/room/driver/SupportSQLiteConnection;)V

    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SupportOpenHelperCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;",
        "",
        "version",
        "<init>",
        "(Landroidx/room/RoomConnectionManager;I)V",
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
.field public final synthetic b:Landroidx/room/RoomConnectionManager;


# direct methods
.method public constructor <init>(Landroidx/room/RoomConnectionManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->b:Landroidx/room/RoomConnectionManager;

    invoke-direct {p0, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->b:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0}, Landroidx/room/BaseRoomConnectionManager;->f(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public final d(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->f(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V

    return-void
.end method

.method public final e(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->b:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0}, Landroidx/room/BaseRoomConnectionManager;->h(Landroidx/sqlite/SQLiteConnection;)V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->g:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-void
.end method

.method public final f(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->b:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0, p2, p3}, Landroidx/room/BaseRoomConnectionManager;->g(Landroidx/sqlite/SQLiteConnection;II)V

    return-void
.end method

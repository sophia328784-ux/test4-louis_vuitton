.class public abstract Landroidx/room/RoomOpenDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/RoomOpenDelegateMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomOpenDelegate$ValidationResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\'\u0018\u00002\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/room/RoomOpenDelegate;",
        "Landroidx/room/RoomOpenDelegateMarker;",
        "",
        "version",
        "",
        "identityHash",
        "legacyIdentityHash",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "ValidationResult",
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
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/RoomOpenDelegate;->a:I

    iput-object p2, p0, Landroidx/room/RoomOpenDelegate;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/RoomOpenDelegate;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract b(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract c(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract d(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract e(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract f(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract g(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;
.end method

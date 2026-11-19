.class public final Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_8_9_Impl;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_8_9_Impl;",
        "Landroidx/room/migration/Migration;",
        "<init>",
        "()V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final c:Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteProfileMigration;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    new-instance v0, Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteProfileMigration;

    invoke-direct {v0}, Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteProfileMigration;-><init>()V

    iput-object v0, p0, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_8_9_Impl;->c:Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteProfileMigration;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DROP TABLE `ProfileEntity`"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_8_9_Impl;->c:Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteProfileMigration;

    invoke-interface {p0, p1}, Landroidx/room/migration/AutoMigrationSpec;->a(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

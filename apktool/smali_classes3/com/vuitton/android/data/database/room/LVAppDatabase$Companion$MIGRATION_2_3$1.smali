.class public final Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/database/room/LVAppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1",
        "Landroidx/room/migration/Migration;",
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


# virtual methods
.method public final b(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "CREATE TABLE IF NOT EXISTS ProfileEntity_new (identifier TEXT NOT NULL PRIMARY KEY, lastName TEXT NOT NULL, branchId TEXT,firstName2 TEXT,civilityCode TEXT NOT NULL,login TEXT NOT NULL,contactableByMail INTEGER NOT NULL,firstName TEXT NOT NULL,taxId TEXT,subscribedInNewsletter INTEGER NOT NULL,lastName2 TEXT,addressList TEXT,contactableByPhone INTEGER NOT NULL,contactableBySms INTEGER NOT NULL,email TEXT NOT NULL)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->R(Ljava/lang/String;)V

    const-string p0, "INSERT INTO ProfileEntity_new SELECT identifier,lastName,branchId,firstName2,titleId,login,contactableByMail,firstName,taxId,subscribedInNewsletter, lastName2, addressList, contactableByPhone,contactableBySms,email FROM ProfileEntity"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->R(Ljava/lang/String;)V

    const-string p0, "DROP TABLE ProfileEntity"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->R(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE ProfileEntity_new RENAME TO ProfileEntity"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->R(Ljava/lang/String;)V

    return-void
.end method

.class public interface abstract Landroidx/sqlite/db/SupportSQLiteDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "Ljava/io/Closeable;",
        "sqlite_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract I1()Z
.end method

.method public abstract P()V
.end method

.method public abstract R(Ljava/lang/String;)V
.end method

.method public abstract R1(Landroid/content/ContentValues;[Ljava/lang/Object;)I
.end method

.method public abstract T0(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
.end method

.method public W0()V
    .locals 0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->P()V

    return-void
.end method

.method public abstract a0()V
.end method

.method public abstract b0()V
.end method

.method public abstract d1([Ljava/lang/Object;)V
.end method

.method public abstract isOpen()Z
.end method

.method public abstract t0()V
.end method

.method public abstract w0(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
.end method

.method public abstract z1()Z
.end method

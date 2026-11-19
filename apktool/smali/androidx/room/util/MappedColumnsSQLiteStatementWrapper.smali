.class public final Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;",
        "Landroidx/sqlite/SQLiteStatement;",
        "delegate",
        "",
        "",
        "columnNames",
        "",
        "mapping",
        "<init>",
        "(Landroidx/sqlite/SQLiteStatement;[Ljava/lang/String;[I)V",
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
.field public final b:Landroidx/sqlite/SQLiteStatement;

.field public final c:[I

.field public final d:Lkotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteStatement;[Ljava/lang/String;[I)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    iput-object p3, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->c:[I

    array-length p1, p2

    array-length p3, p3

    if-ne p1, p3, :cond_3

    new-instance p1, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {p1}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    array-length p3, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p3, :cond_0

    aget-object v3, p2, v1

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->c:[I

    aget v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p2}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object p3, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p3, v0}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lkotlin/collections/builders/MapBuilder;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p3, v0}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->d:Lkotlin/collections/builders/MapBuilder;

    return-void

    :cond_3
    const-string p0, "Expected columnNames.size == mapping.size"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final A(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    return-void
.end method

.method public final Q1()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->Q1()Z

    move-result p0

    return p0
.end method

.method public final a(IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    return-void
.end method

.method public final b(I[B)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->b(I[B)V

    return-void
.end method

.method public final c1()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->c1()Z

    move-result p0

    return p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public final getBlob(I)[B
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getColumnCount()I
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result p0

    return p0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLong(I)J
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final isNull(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    return p0
.end method

.method public final l(I)V
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    return-void
.end method

.method public final m1(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Landroidx/room/util/MappedColumnsSQLiteStatementWrapper;->b:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->reset()V

    return-void
.end method

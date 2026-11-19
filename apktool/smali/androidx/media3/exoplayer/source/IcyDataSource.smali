.class final Landroidx/media3/exoplayer/source/IcyDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/IcyDataSource$Listener;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/datasource/DataSource;

.field public final b:I

.field public final c:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/source/IcyDataSource$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->b:I

    iput-object p3, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->c:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

    new-array p1, v0, [B

    iput-object p1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->d:[B

    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/datasource/DataSpec;)J
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final c(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public final close()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final f()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final read([BII)I
    .locals 7

    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    const/4 v2, -0x1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->d:[B

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v0}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v0, v3, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    new-array v3, v0, [B

    move v5, v0

    :goto_0
    if-lez v5, :cond_3

    invoke-interface {v1, v3, v4, v5}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v6

    if-ne v6, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    add-int/2addr v4, v6

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v4, v0, -0x1

    aget-byte v4, v3, v4

    if-nez v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->c:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

    invoke-interface {v0, v4}, Landroidx/media3/exoplayer/source/IcyDataSource$Listener;->b(Landroidx/media3/common/util/ParsableByteArray;)V

    :cond_5
    :goto_3
    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->b:I

    iput v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    :cond_6
    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    if-eq p1, v2, :cond_7

    iget p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    :cond_7
    return p1
.end method

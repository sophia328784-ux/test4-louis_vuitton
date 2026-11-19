.class public final Landroidx/media3/datasource/TeeDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field public final a:Landroidx/media3/datasource/DataSource;

.field public final b:Landroidx/media3/datasource/DataSink;

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/datasource/TeeDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/datasource/TeeDataSource;->b:Landroidx/media3/datasource/DataSink;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/datasource/DataSpec;)J
    .locals 8

    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->a(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/datasource/TeeDataSource;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->g:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2, v3, v0, v1}, Landroidx/media3/datasource/DataSpec;->b(JJ)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/TeeDataSource;->c:Z

    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->b:Landroidx/media3/datasource/DataSink;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSink;->a(Landroidx/media3/datasource/DataSpec;)V

    iget-wide p0, p0, Landroidx/media3/datasource/TeeDataSource;->d:J

    return-wide p0
.end method

.method public final c(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/datasource/TeeDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->b:Landroidx/media3/datasource/DataSink;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/TeeDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {v2}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Landroidx/media3/datasource/TeeDataSource;->c:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Landroidx/media3/datasource/TeeDataSource;->c:Z

    invoke-interface {v0}, Landroidx/media3/datasource/DataSink;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Landroidx/media3/datasource/TeeDataSource;->c:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Landroidx/media3/datasource/TeeDataSource;->c:Z

    invoke-interface {v0}, Landroidx/media3/datasource/DataSink;->close()V

    :cond_1
    throw v2
.end method

.method public final f()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/TeeDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/TeeDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final read([BII)I
    .locals 4

    iget-wide v0, p0, Landroidx/media3/datasource/TeeDataSource;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    iget-object v0, p0, Landroidx/media3/datasource/TeeDataSource;->b:Landroidx/media3/datasource/DataSink;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/datasource/DataSink;->write([BII)V

    iget-wide p1, p0, Landroidx/media3/datasource/TeeDataSource;->d:J

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/datasource/TeeDataSource;->d:J

    :cond_1
    return p3
.end method

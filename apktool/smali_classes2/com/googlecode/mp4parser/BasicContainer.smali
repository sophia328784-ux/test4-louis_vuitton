.class public Lcom/googlecode/mp4parser/BasicContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/Container;
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coremedia/iso/boxes/Container;",
        "Ljava/util/Iterator<",
        "Lcom/coremedia/iso/boxes/Box;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field public static final h:Lcom/coremedia/iso/boxes/Box;


# instance fields
.field public b:Lcom/coremedia/iso/BoxParser;

.field public c:Lcom/googlecode/mp4parser/DataSource;

.field public d:Lcom/coremedia/iso/boxes/Box;

.field public e:J

.field public f:J

.field public g:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/googlecode/mp4parser/BasicContainer$1;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/googlecode/mp4parser/BasicContainer;->h:Lcom/coremedia/iso/boxes/Box;

    const-class v0, Lcom/googlecode/mp4parser/BasicContainer;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->a(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->d:Lcom/coremedia/iso/boxes/Box;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->e:J

    iput-wide v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/googlecode/mp4parser/BasicContainer;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final g(Lcom/coremedia/iso/boxes/Box;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->h()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->g:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/Box;->e(Lcom/googlecode/mp4parser/BasicContainer;)V

    iget-object p0, p0, Lcom/googlecode/mp4parser/BasicContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->c:Lcom/googlecode/mp4parser/DataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->d:Lcom/coremedia/iso/boxes/Box;

    sget-object v1, Lcom/googlecode/mp4parser/BasicContainer;->h:Lcom/coremedia/iso/boxes/Box;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/googlecode/mp4parser/util/LazyList;

    iget-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/googlecode/mp4parser/util/LazyList;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/googlecode/mp4parser/BasicContainer;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->d:Lcom/coremedia/iso/boxes/Box;

    const/4 v1, 0x0

    sget-object v2, Lcom/googlecode/mp4parser/BasicContainer;->h:Lcom/coremedia/iso/boxes/Box;

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->k()Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->d:Lcom/coremedia/iso/boxes/Box;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    iput-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->d:Lcom/coremedia/iso/boxes/Box;

    return v1
.end method

.method public final j()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-wide v0

    :cond_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/BasicContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final k()Lcom/coremedia/iso/boxes/Box;
    .locals 6

    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->d:Lcom/coremedia/iso/boxes/Box;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/googlecode/mp4parser/BasicContainer;->h:Lcom/coremedia/iso/boxes/Box;

    if-eq v0, v2, :cond_0

    iput-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->d:Lcom/coremedia/iso/boxes/Box;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->c:Lcom/googlecode/mp4parser/DataSource;

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->e:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/BasicContainer;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->c:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v3, p0, Lcom/googlecode/mp4parser/BasicContainer;->e:J

    invoke-interface {v2, v3, v4}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->b:Lcom/coremedia/iso/BoxParser;

    iget-object v3, p0, Lcom/googlecode/mp4parser/BasicContainer;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v2, v3, p0}, Lcom/coremedia/iso/BoxParser;->a(Lcom/googlecode/mp4parser/DataSource;Lcom/googlecode/mp4parser/BasicContainer;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/mp4parser/BasicContainer;->c:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v3}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/googlecode/mp4parser/BasicContainer;->e:J

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {}, Lb21;->x()V

    return-object v1

    :catch_1
    invoke-static {}, Lb21;->x()V

    return-object v1

    :cond_1
    sget-object v0, Lcom/googlecode/mp4parser/BasicContainer;->h:Lcom/coremedia/iso/boxes/Box;

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->d:Lcom/coremedia/iso/boxes/Box;

    invoke-static {}, Lb21;->x()V

    return-object v1
.end method

.method public final m(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->h()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v0, p1}, Lcom/coremedia/iso/boxes/Box;->c(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->k()Lcom/coremedia/iso/boxes/Box;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v1, :cond_1

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

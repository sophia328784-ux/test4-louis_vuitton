.class public abstract Lokio/ForwardingFileSystem;
.super Lokio/FileSystem;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/ForwardingFileSystem;",
        "Lokio/FileSystem;",
        "delegate",
        "<init>",
        "(Lokio/FileSystem;)V",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final d:Lokio/FileSystem;


# direct methods
.method public constructor <init>(Lokio/FileSystem;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    iput-object p1, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    return-void
.end method


# virtual methods
.method public final c(Lokio/Path;)Lokio/Sink;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->c(Lokio/Path;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0}, Lokio/FileSystem;->close()V

    return-void
.end method

.method public final d(Lokio/Path;Lokio/Path;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->d(Lokio/Path;Lokio/Path;)V

    return-void
.end method

.method public final g(Lokio/Path;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->g(Lokio/Path;)V

    return-void
.end method

.method public final h(Lokio/Path;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->h(Lokio/Path;)V

    return-void
.end method

.method public final m(Lokio/Path;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->m(Lokio/Path;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;)V

    return-object p1
.end method

.method public final o(Lokio/Path;)Lokio/FileMetadata;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->o(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v3, p0, Lokio/FileMetadata;->c:Lokio/Path;

    if-nez v3, :cond_1

    return-object p0

    :cond_1
    iget-boolean v1, p0, Lokio/FileMetadata;->a:Z

    iget-boolean v2, p0, Lokio/FileMetadata;->b:Z

    iget-object v4, p0, Lokio/FileMetadata;->d:Ljava/lang/Long;

    iget-object v5, p0, Lokio/FileMetadata;->e:Ljava/lang/Long;

    iget-object v6, p0, Lokio/FileMetadata;->f:Ljava/lang/Long;

    iget-object v7, p0, Lokio/FileMetadata;->g:Ljava/lang/Long;

    iget-object v8, p0, Lokio/FileMetadata;->h:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokio/FileMetadata;

    invoke-direct/range {v0 .. v8}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    return-object v0
.end method

.method public final p(Lokio/Path;)Lokio/FileHandle;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->p(Lokio/Path;)Lokio/FileHandle;

    move-result-object p0

    return-object p0
.end method

.method public q(Lokio/Path;Z)Lokio/Sink;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->q(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lokio/Path;)Lokio/Source;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->r(Lokio/Path;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

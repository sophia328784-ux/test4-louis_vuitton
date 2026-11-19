.class public final synthetic Lokio/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokio/internal/ZipEntry;

    sget-object p0, Lokio/internal/ResourceFileSystem;->g:Lokio/internal/ResourceFileSystem$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lokio/internal/ResourceFileSystem;->g:Lokio/internal/ResourceFileSystem$Companion;

    iget-object p1, p1, Lokio/internal/ZipEntry;->a:Lokio/Path;

    invoke-static {p0, p1}, Lokio/internal/ResourceFileSystem$Companion;->a(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

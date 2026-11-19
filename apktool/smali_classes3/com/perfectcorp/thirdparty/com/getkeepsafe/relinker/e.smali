.class final Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public synthetic a:Ljava/lang/String;


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/e;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

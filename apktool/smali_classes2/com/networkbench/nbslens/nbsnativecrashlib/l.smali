.class public Lcom/networkbench/nbslens/nbsnativecrashlib/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 3

    .line 63
    const-string v0, ".native.nbscrash"

    const-string v1, ".anr.nbscrash"

    const-string v2, ".java.nbscrash"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->d(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 62
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->d(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v0

    const-string v1, ":\n"

    .line 66
    const-string v2, "\n\n"

    invoke-static {v2, p1, v1, p2, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {v0, p0, p1}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a([Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->getLogDir()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/l$c;

    invoke-direct {v0, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l$c;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    array-length v0, p0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->d(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public static b()Z
    .locals 1

    .line 54
    const-string v0, ".anr.nbscrash"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".anr.nbscrash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b([Ljava/lang/String;)[Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->getLogDir()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/io/File;

    return-object p0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/l$a;

    invoke-direct {v0, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l$a;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    new-array p0, v1, [Ljava/io/File;

    return-object p0

    :cond_2
    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/l$b;

    invoke-direct {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l$b;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0

    :cond_3
    :goto_0
    new-array p0, v1, [Ljava/io/File;

    return-object p0
.end method

.method public static c()Z
    .locals 1

    .line 11
    const-string v0, ".java.nbscrash"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".java.nbscrash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d()Z
    .locals 1

    .line 11
    const-string v0, ".native.nbscrash"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".native.nbscrash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e()[Ljava/io/File;
    .locals 3

    const-string v0, ".native.nbscrash"

    const-string v1, ".anr.nbscrash"

    const-string v2, ".java.nbscrash"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->b([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static f()[Ljava/io/File;
    .locals 1

    const-string v0, ".anr.nbscrash"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->b([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static g()[Ljava/io/File;
    .locals 1

    const-string v0, ".java.nbscrash"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->b([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static h()[Ljava/io/File;
    .locals 1

    const-string v0, ".native.nbscrash"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/l;->b([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

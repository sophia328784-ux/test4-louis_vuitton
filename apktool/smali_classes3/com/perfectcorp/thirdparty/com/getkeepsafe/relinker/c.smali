.class public final Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker$b;

.field public final c:Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->a:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b:Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker$b;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->c:Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_f

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Beginning load of %s..."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b:Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker$b;

    iget-object v5, v1, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->a:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%s already loaded previously!"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    move-object v0, v4

    check-cast v0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "%s (%s) was loaded normally!"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v7, "Loading the library normally failed: %s"

    invoke-static {v7, v0}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "%s (%s) was not loaded normally, re-linking..."

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v6}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "lib"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v1, v2, v3, v6}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    move-object v11, v4

    check-cast v11, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/f;

    invoke-virtual {v11, v3}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/e;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v12, v13, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/e;->a:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    array-length v12, v9

    move v13, v8

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v9, v13

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v9, v6

    if-lez v9, :cond_4

    goto :goto_3

    :cond_4
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    filled-new-array {v9, v6}, [Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v11, v3}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->c:Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v2, v6, v9}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a$a;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v1, :cond_b

    iget-object v6, v1, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a$a;->a:Ljava/util/zip/ZipFile;

    move v10, v8

    :goto_4
    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x5

    if-ge v10, v12, :cond_a

    :try_start_2
    const-string v10, "Found %s! Extracting..."

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v10, :cond_7

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object v6, v1

    goto/16 :goto_d

    :cond_7
    :try_start_4
    iget-object v10, v1, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a$a;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v6, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v10, v12}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->a(Ljava/io/InputStream;Ljava/io/FileOutputStream;)J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    cmp-long v13, v13, v17

    if-eqz v13, :cond_8

    :catch_1
    :goto_5
    :try_start_7
    invoke-static {v10}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->c(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->c(Ljava/io/Closeable;)V

    goto :goto_b

    :cond_8
    invoke-static {v10}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->c(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->c(Ljava/io/Closeable;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v8}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v6, v10

    move-object/from16 v16, v12

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v6, v10

    :goto_7
    const/16 v16, 0x0

    goto :goto_a

    :catch_2
    :goto_8
    const/4 v12, 0x0

    goto :goto_5

    :catch_3
    :goto_9
    const/4 v12, 0x0

    goto :goto_5

    :catchall_3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_7

    :goto_a
    :try_start_9
    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->c(Ljava/io/Closeable;)V

    invoke-static/range {v16 .. v16}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->c(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_4
    const/4 v10, 0x0

    goto :goto_8

    :catch_5
    const/4 v10, 0x0

    goto :goto_9

    :cond_9
    :try_start_a
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "zip file contains unsafe unzipping patterns, dstFile canonicalPath="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_6
    :goto_b
    move v10, v11

    goto/16 :goto_4

    :cond_a
    if-eqz v6, :cond_d

    goto :goto_6

    :cond_b
    :try_start_b
    invoke-static {v2, v9}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a;->e(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_c

    :catch_7
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_c
    new-instance v2, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/b;

    invoke-direct {v2, v9, v6, v0}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_c

    :try_start_d
    iget-object v1, v6, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    :cond_c
    throw v0

    :catch_9
    :cond_d
    :goto_e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    check-cast v4, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "%s (%s) was re-linked!"

    const/4 v1, 0x0

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_e
    const-string v0, "Given library is either null or empty"

    :goto_10
    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_f
    const-string v0, "Given context is null"

    goto :goto_10
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->b:Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker$b;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/f;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const-string v0, "lib"

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "."

    invoke-static {p0, p2, p3}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3
.end method

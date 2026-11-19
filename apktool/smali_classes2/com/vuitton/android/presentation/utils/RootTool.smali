.class public abstract Lcom/vuitton/android/presentation/utils/RootTool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/RootTool;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lcom/vuitton/android/platform/security/RootDetector;)Z
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "/proc/mounts"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/platform/security/RootDetector;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const-string v6, "test-keys"

    invoke-static {v3, v6, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    if-nez v3, :cond_3e

    sget-object v3, Lcom/vuitton/android/platform/security/RootConstants;->a:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/vuitton/android/platform/security/RootDetector;->b(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3e

    sget-object v3, Lcom/vuitton/android/platform/security/RootConstants;->b:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/vuitton/android/platform/security/RootDetector;->b(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3e

    sget-object v3, Lcom/vuitton/android/platform/security/RootConstants;->c:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/vuitton/android/platform/security/RootDetector;->b(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3e

    sget-object v3, Lcom/vuitton/android/platform/security/RootConstants;->d:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/vuitton/android/platform/security/RootDetector;->b(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "su"

    invoke-virtual {v0, v3}, Lcom/vuitton/android/platform/security/RootDetector;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3e

    const-string v6, "magisk"

    invoke-virtual {v0, v6}, Lcom/vuitton/android/platform/security/RootDetector;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v0, Lkotlin/Pair;

    const-string v6, "ro.secure"

    const-string v7, "0"

    invoke-direct {v0, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const/4 v6, 0x6

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "getprop"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    if-nez v8, :cond_2

    :catch_0
    move-object v8, v7

    goto :goto_1

    :cond_2
    new-instance v9, Ljava/util/Scanner;

    invoke-direct {v9, v8}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v8, "\\A"

    invoke-virtual {v9, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "\n"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5, v6}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v9, v12, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1c

    :cond_6
    :goto_2
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v8, "which"

    filled-new-array {v8, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v3, v9, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v5

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    :catchall_0
    move-object v0, v7

    :catchall_1
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_9
    move v3, v5

    :goto_4
    if-nez v3, :cond_3e

    sget-object v0, Lcom/vuitton/android/platform/security/RootConstants;->f:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    sget-object v3, Lcom/vuitton/android/platform/security/RootConstants;->g:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    if-eqz v3, :cond_b

    goto/16 :goto_1c

    :cond_d
    :goto_5
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->a(Ljava/io/BufferedReader;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :goto_7
    move-object v8, v0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_e
    :try_start_5
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_9

    :goto_8
    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-static {v3, v8}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-object v0, v7

    :goto_9
    if-nez v0, :cond_f

    goto/16 :goto_b

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v8, " "

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v5, v6}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_10

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v9, Lcom/vuitton/android/platform/security/RootConstants;->h:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_11

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_a

    :cond_11
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v8, ","

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v5, v6}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    instance-of v8, v3, Ljava/util/Collection;

    if-eqz v8, :cond_13

    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_a

    :cond_13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "rw"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1c

    :cond_15
    :goto_b
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/platform/security/RootConstants;->i:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_16

    move-object v7, v6

    :cond_17
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_18
    if-eqz v7, :cond_19

    goto/16 :goto_1c

    :cond_19
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_1c

    :cond_1a
    sget-object v8, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a:Lcom/vuitton/android/presentation/utils/EmulatorDetector;

    new-instance v9, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_1b

    move-object v10, v2

    goto :goto_c

    :cond_1b
    move-object v10, v0

    :goto_c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_1c

    move-object v11, v2

    goto :goto_d

    :cond_1c
    move-object v11, v0

    :goto_d
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_1d

    move-object v12, v2

    goto :goto_e

    :cond_1d
    move-object v12, v0

    :goto_e
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_1e

    move-object v13, v2

    goto :goto_f

    :cond_1e
    move-object v13, v0

    :goto_f
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-nez v0, :cond_1f

    move-object v14, v2

    goto :goto_10

    :cond_1f
    move-object v14, v0

    :goto_10
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    if-nez v0, :cond_20

    move-object v15, v2

    goto :goto_11

    :cond_20
    move-object v15, v0

    :goto_11
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    if-nez v0, :cond_21

    move-object/from16 v16, v2

    goto :goto_12

    :cond_21
    move-object/from16 v16, v0

    :goto_12
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-nez v0, :cond_22

    move-object/from16 v17, v2

    goto :goto_13

    :cond_22
    move-object/from16 v17, v0

    :goto_13
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    if-nez v0, :cond_23

    move-object/from16 v18, v2

    goto :goto_14

    :cond_23
    move-object/from16 v18, v0

    :goto_14
    invoke-direct/range {v9 .. v18}, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    new-instance v6, Lcom/vuitton/android/presentation/utils/EmulatorDetector$isDetected$1;

    const-string v11, "defaultFileExists(Ljava/lang/String;)Z"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/utils/EmulatorDetector;

    const-string v10, "defaultFileExists"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v6

    new-instance v6, Lcom/vuitton/android/presentation/utils/EmulatorDetector$isDetected$2;

    const-string v11, "defaultReadLines(Ljava/lang/String;)Ljava/util/List;"

    const-class v9, Lcom/vuitton/android/presentation/utils/EmulatorDetector;

    const-string v10, "defaultReadLines"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v3, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v3, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->a:Ljava/lang/String;

    const-string v3, "generic"

    invoke-static {v0, v3, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3e

    const-string v8, "unknown"

    invoke-static {v0, v8, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3e

    const-string v8, "emulator"

    invoke-static {v0, v8, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_3e

    const-string v9, "android sdk built for"

    iget-object v10, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->b:Ljava/lang/String;

    invoke-static {v10, v9, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_3e

    const-string v9, "droid4x"

    invoke-static {v10, v9, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_3e

    invoke-static {v10, v8, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_3e

    sget-object v9, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->c:Ljava/util/Set;

    iget-object v11, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->c:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    const-string v9, "genymotion"

    invoke-static {v11, v9, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_3e

    iget-object v9, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->d:Ljava/lang/String;

    invoke-static {v9, v3, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    iget-object v13, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->e:Ljava/lang/String;

    if-eqz v12, :cond_24

    invoke-static {v13, v3, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_24

    goto/16 :goto_1c

    :cond_24
    sget-object v3, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->b:Ljava/util/Set;

    iget-object v12, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->h:Ljava/lang/String;

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "sdk_google"

    invoke-static {v12, v3, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-static {v12, v8, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "simulator"

    invoke-static {v12, v3, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "nox"

    invoke-static {v12, v3, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-nez v8, :cond_3e

    sget-object v8, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->d:Ljava/util/Set;

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    sget-object v8, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->f:Ljava/util/Set;

    iget-object v13, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->f:Ljava/lang/String;

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-static {v13, v3, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_3e

    sget-object v3, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->e:Ljava/util/Set;

    iget-object v8, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->i:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto/16 :goto_1c

    :cond_25
    const-string v3, "google"

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const-string v8, "google/sdk_gphone_"

    invoke-static {v0, v8, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_26

    const-string v8, "sdk_gphone_"

    invoke-static {v12, v8, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_26

    invoke-static {v10, v8, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_26

    goto/16 :goto_1c

    :cond_26
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    const-string v8, "google/sdk_gphone64_"

    invoke-static {v0, v8, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_27

    const-string v8, "sdk_gphone64_"

    invoke-static {v12, v8, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_27

    invoke-static {v10, v8, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_27

    goto/16 :goto_1c

    :cond_27
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "google/sdk_gphone16k_"

    invoke-static {v0, v3, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "sdk_gphone16k_"

    invoke-static {v12, v3, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-static {v10, v3, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_28

    goto/16 :goto_1c

    :cond_28
    const-string v3, "hpe device"

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "google/kiwi_"

    invoke-static {v0, v3, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, ":user/release-keys"

    invoke-static {v0, v3, v5}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "kiwi"

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "kiwi_"

    invoke-static {v12, v0, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    goto/16 :goto_1c

    :cond_29
    const-string v0, "qc_reference_phone"

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "xiaomi"

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_1c

    :cond_2a
    sget-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->g:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_2b

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_15

    :cond_2b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->g:Ljava/lang/String;

    invoke-static {v8, v3, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto/16 :goto_1c

    :cond_2d
    :goto_15
    sget-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->j:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_2e

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_16

    :cond_2e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vuitton/android/presentation/utils/EmulatorDetector$isDetected$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto/16 :goto_1c

    :cond_30
    :goto_16
    sget-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_31

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_19

    :cond_31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/vuitton/android/presentation/utils/EmulatorDetector$isDetected$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_33

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_17

    :cond_33
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v7, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->i:Ljava/util/Set;

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_35

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_35

    goto :goto_18

    :cond_35
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_36
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v3, v8, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_36

    goto/16 :goto_1c

    :cond_37
    :goto_19
    invoke-virtual {v6, v1}, Lcom/vuitton/android/presentation/utils/EmulatorDetector$isDetected$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_38

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_1a

    :cond_38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "vboxsf"

    invoke-static {v1, v2, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "bstsharedfolder"

    invoke-static {v1, v2, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "sharedfolder"

    invoke-static {v1, v2, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_1c

    :cond_3a
    :goto_1a
    const-string v0, "/proc/cpuinfo"

    invoke-virtual {v6, v0}, Lcom/vuitton/android/presentation/utils/EmulatorDetector$isDetected$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_3b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_1b

    :cond_3b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "hypervisor"

    invoke-static {v1, v2, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "virtualbox"

    invoke-static {v1, v2, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "ttvm"

    invoke-static {v1, v2, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_1c

    :cond_3d
    :goto_1b
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->g()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_3e
    :goto_1c
    move v4, v5

    :cond_3f
    return v4
.end method

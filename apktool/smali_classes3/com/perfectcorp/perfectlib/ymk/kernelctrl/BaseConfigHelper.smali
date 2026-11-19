.class public abstract Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abstract a()[Landroid/util/Pair;
.end method

.method public final b()Z
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    if-eq v0, v1, :cond_0

    iget-boolean p0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->d:Z

    return p0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->c:Ljava/lang/String;

    const-string v3, "mcsdk.ini"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    const-string v0, "close config input stream failed"

    const-string v1, "BaseConfigHelper"

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->a()[Landroid/util/Pair;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->b:Ljava/util/HashMap;

    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    aget-object v5, v0, v2

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "config="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v5, v6

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_2
    :try_start_3
    const-string v3, "load config failed"

    invoke-static {v1, v3, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_3
    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p0

    :cond_3
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    :cond_4
    :goto_5
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->d:Z

    return p0
.end method

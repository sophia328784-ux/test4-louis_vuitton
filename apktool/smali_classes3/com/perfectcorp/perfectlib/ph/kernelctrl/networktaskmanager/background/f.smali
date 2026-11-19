.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[parseTemplate] start. guid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    const-string v4, "BackgroundDownloader"

    invoke-static {v3, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;-><init>()V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->f:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    const-string v4, "background_template.json"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonParser;-><init>()V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonParser;->b(Ljava/io/FileReader;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->d:I

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    invoke-virtual {v1, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->g:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->d:I

    :goto_1
    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->d()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->b()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

    const-wide v2, 0x3fee666666666666L    # 0.95

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-object v1

    :cond_2
    const-string p0, "Parse background failed, some files not exists, please check guid="

    invoke-static {p0, v2}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

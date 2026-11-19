.class public Lcom/networkbench/agent/impl/crash/oom/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/f/a;


# static fields
.field private static final a:Ljava/lang/String; = "OOMJsonFileProcess"

.field private static final b:Ljava/lang/String; = ".json"

.field private static final c:I = 0x5


# instance fields
.field private d:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/util/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/nbsperformance/oom/memory/hprof-aly"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/d;->d:Ljava/io/File;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "oomJsDir is:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/d;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OOMJsonFileProcess"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/oom/d;->d:Ljava/io/File;

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/crash/c;Ljava/io/File;)V
    .locals 6

    .line 155
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "report oom info sourceFile:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OOMJsonFileProcess"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    .line 158
    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/f;

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/util/s;->a:Ljava/lang/String;

    sget-object v3, Lcom/networkbench/agent/impl/j/d;->d:Lcom/networkbench/agent/impl/j/d;

    .line 159
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->b()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/crash/oom/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/j/d;Ljava/lang/String;Ljava/io/File;)V

    .line 160
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 139
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v1, Lcom/networkbench/agent/impl/crash/oom/d$1;

    invoke-direct {v1, p1}, Lcom/networkbench/agent/impl/crash/oom/d$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    .line 141
    new-array p0, v0, [Ljava/io/File;

    :cond_1
    return-object p0

    .line 142
    :cond_2
    :goto_0
    new-array p0, v0, [Ljava/io/File;

    return-object p0
.end method

.method private static b(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .line 11
    const-string v0, ".json"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private d()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/d;->d:Ljava/io/File;

    invoke-static {p0}, Lcom/networkbench/agent/impl/crash/oom/d;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    array-length p0, p0

    return p0
.end method


# virtual methods
.method public a(Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonParseException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 161
    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    .line 162
    new-instance p2, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 163
    invoke-virtual {p2, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 164
    const-string p1, "data"

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 165
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 166
    const-string p1, ""

    .line 167
    :cond_0
    const-string p2, "did"

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    const-string p2, "dev"

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 169
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    const-string p2, "app"

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0

    .line 170
    :cond_1
    const-string p0, "crash message error"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/io/File;
    .locals 8

    .line 171
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/d;->d:Ljava/io/File;

    invoke-static {p0}, Lcom/networkbench/agent/impl/crash/oom/d;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    .line 172
    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, p0, v4

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 174
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    move-wide v2, v1

    move-object v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public a(Lcom/networkbench/agent/impl/crash/oom/b;)V
    .locals 0

    .line 175
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 9

    .line 125
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/d;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/networkbench/agent/impl/crash/oom/d;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 126
    const-string v1, "OOMJsonFileProcess"

    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    .line 127
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 128
    invoke-virtual {v4, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "upload oom json file is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 131
    const-string v4, "oom json is empty, skip upload"

    invoke-static {v1, v4}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_1
    :try_start_0
    invoke-static {v4}, Lcom/networkbench/agent/impl/util/h;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-virtual {p0, v5, v4}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    const-string v4, "TingyunSDK_OOM"

    invoke-static {v5, v4}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 136
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NBSPageData addAll() has an error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    .line 137
    const-string v5, "upload old oom json file is failed"

    invoke-static {v1, v5, v4}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 138
    :cond_4
    :goto_2
    const-string p0, "local oom json file is empty"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete dir is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/oom/d;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSuffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OOMJsonFileProcess"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/d;->d:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "allFiles length is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/d$2;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/crash/oom/d$2;-><init>(Lcom/networkbench/agent/impl/crash/oom/d;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "after sort allFiles length is:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x5

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-object v0, p1, p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "delete over threshold file is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, p0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p1, p0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .line 143
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->f()Z

    move-result v0

    const-string v1, "OOMJsonFileProcess"

    if-eqz v0, :cond_0

    .line 144
    const-string p0, "reportOOMInfo happened in ui thread"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/oom/b;-><init>()V

    .line 146
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/crash/oom/b;->a(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Lcom/networkbench/agent/impl/crash/oom/b;)V

    .line 148
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".json"

    const-string v4, ".content"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/h;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const-string p0, "content file is empty or not exist"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_1
    invoke-static {p1}, Lcom/networkbench/agent/impl/crash/oom/NBSCrashTransaction;->crashParseFromString(Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/c;

    move-result-object p1

    if-nez p1, :cond_2

    .line 152
    const-string p0, "crash == null"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_2
    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/crash/c;->a(Lcom/networkbench/agent/impl/crash/oom/b;)V

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Lcom/networkbench/agent/impl/crash/c;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b()Z
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/d;->d()I

    move-result p0

    const/4 v0, 0x5

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 1

    const-string v0, ".json"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Ljava/lang/String;)V

    const-string v0, ".content"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Ljava/lang/String;)V

    return-void
.end method

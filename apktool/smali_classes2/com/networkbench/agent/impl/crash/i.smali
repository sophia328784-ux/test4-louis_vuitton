.class public final Lcom/networkbench/agent/impl/crash/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/crash/i$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:I = 0x0

.field private static c:Lcom/networkbench/agent/impl/c/e; = null

.field private static final d:I = 0x8000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/crash/i;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v0, ""

    sput-object v0, Lcom/networkbench/agent/impl/crash/i;->a:Ljava/lang/String;

    const/16 v0, 0x32

    sput v0, Lcom/networkbench/agent/impl/crash/i;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    const-string v0, "Error reading logcat output!"

    sget-boolean v1, Lcom/networkbench/agent/impl/util/r;->q:Z

    const-string v2, ""

    if-nez v1, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/crash/i;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "logcat\'s switch was disable !"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget v3, Lcom/networkbench/agent/impl/crash/i;->b:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    move v3, v4

    :cond_1
    sget-object v4, Lcom/networkbench/agent/impl/crash/i;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/crash/i;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "*:W"

    sput-object v5, Lcom/networkbench/agent/impl/crash/i;->a:Ljava/lang/String;

    sget-object v5, Lcom/networkbench/agent/impl/crash/i;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v6, "LOG_FILTER\'s format was wrong,set filter to *:W  !"

    invoke-interface {v5, v6}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_2
    const-string v5, "-t"

    invoke-static {v3, v2}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "logcat"

    filled-new-array {v3, v5, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    new-instance v2, Lcom/networkbench/agent/impl/crash/i$a;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/networkbench/agent/impl/crash/i$a;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/networkbench/agent/impl/crash/i$a;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/networkbench/agent/impl/crash/i$a;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    sget-object v4, Lcom/networkbench/agent/impl/crash/i;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const v2, 0x8000

    if-le v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_5
    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6

    .line 151
    const-string v4, "*:W"

    const-string v5, "*:E"

    const-string v0, "*:S"

    const-string v1, "*:V"

    const-string v2, "*:D"

    const-string v3, "*:I"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v1, "*:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 153
    aget-object v4, v0, v3

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v2
.end method

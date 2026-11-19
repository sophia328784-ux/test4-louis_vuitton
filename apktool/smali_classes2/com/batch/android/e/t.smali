.class public final Lcom/batch/android/e/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Batch"

.field public static final b:Ljava/lang/String; = "BatchInternal"

.field public static c:Lcom/batch/android/LoggerDelegate;

.field public static d:Lcom/batch/android/LoggerLevel;

.field public static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/batch/android/LoggerLevel;->INFO:Lcom/batch/android/LoggerLevel;

    sput-object v0, Lcom/batch/android/e/t;->d:Lcom/batch/android/LoggerLevel;

    invoke-static {}, Lcom/batch/android/e/t;->a()Z

    move-result v0

    sput-boolean v0, Lcom/batch/android/e/t;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/batch/android/LoggerLevel;->ERROR:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, " - "

    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    const-string v0, "Batch"

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/batch/android/LoggerDelegate;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/batch/android/LoggerLevel;->ERROR:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 29
    const-string v0, " - "

    .line 30
    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    .line 32
    const-string v0, "Batch"

    invoke-interface {p0, v0, p1, p2}, Lcom/batch/android/LoggerDelegate;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a()Z
    .locals 2

    .line 34
    const-string v0, "BatchInternal"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/batch/android/LoggerLevel;)Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/batch/android/e/t;->e:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/batch/android/e/t;->d:Lcom/batch/android/LoggerLevel;

    invoke-virtual {v0, p0}, Lcom/batch/android/LoggerLevel;->canLog(Lcom/batch/android/LoggerLevel;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/batch/android/LoggerLevel;->INFO:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, " - "

    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    const-string v0, "Batch"

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/batch/android/LoggerDelegate;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/batch/android/LoggerLevel;->INFO:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 29
    const-string v0, " - "

    .line 30
    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    .line 32
    const-string v0, "Batch"

    invoke-interface {p0, v0, p1, p2}, Lcom/batch/android/LoggerDelegate;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p0, p1}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/batch/android/LoggerLevel;->INTERNAL:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, " - "

    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    const-string v0, "BatchInternal"

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/batch/android/LoggerDelegate;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/batch/android/LoggerLevel;->INTERNAL:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 29
    const-string v0, " - "

    .line 30
    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    .line 32
    const-string v0, "BatchInternal"

    invoke-interface {p0, v0, p1, p2}, Lcom/batch/android/LoggerDelegate;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p0}, Lcom/batch/android/e/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/batch/android/LoggerLevel;->VERBOSE:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, " - "

    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    const-string v0, "Batch"

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/batch/android/LoggerDelegate;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/batch/android/LoggerLevel;->VERBOSE:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 29
    const-string v0, " - "

    .line 30
    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    .line 32
    const-string v0, "Batch"

    invoke-interface {p0, v0, p1, p2}, Lcom/batch/android/LoggerDelegate;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p0, p1}, Lcom/batch/android/e/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p0}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/batch/android/LoggerLevel;->WARNING:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, " - "

    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    const-string v0, "Batch"

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/batch/android/LoggerDelegate;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/batch/android/LoggerLevel;->WARNING:Lcom/batch/android/LoggerLevel;

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 29
    const-string v0, " - "

    .line 30
    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_0
    sget-object p0, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    if-eqz p0, :cond_1

    .line 32
    const-string v0, "Batch"

    invoke-interface {p0, v0, p1, p2}, Lcom/batch/android/LoggerDelegate;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p0, p1}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

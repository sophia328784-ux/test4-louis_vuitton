.class Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/crash/CrashCatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DTXAgentUncaughtExceptionHandler"
.end annotation


# static fields
.field public static final a:Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;->a:Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->f(Ljava/lang/Thread;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Uncaught exception occurred in %s[name=%s, id=%d, pid=%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    sget-boolean p0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->a:Z

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->d:Ljava/lang/Throwable;

    if-eq p0, p2, :cond_3

    sput-object p2, Lcom/dynatrace/android/agent/crash/CrashCatcher;->d:Ljava/lang/Throwable;

    sget p0, Lcom/dynatrace/android/agent/CrashReporter;->c:I

    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/android/agent/crash/CrashListener;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dynatrace/android/agent/crash/CrashListener;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_5

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_4
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

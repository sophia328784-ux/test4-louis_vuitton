.class public Lcom/dynatrace/android/agent/crash/CrashCatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;
    }
.end annotation


# static fields
.field public static volatile a:Z

.field public static final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public static d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->a:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    sput-object v0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->d:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;

    if-eqz v1, :cond_1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "The agent crash handler is already registered."

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sput-object v0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    sget-object v0, Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;->a:Lcom/dynatrace/android/agent/crash/CrashCatcher$DTXAgentUncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "Registered agent crash handler"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->a:Z

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lcom/dynatrace/android/agent/crash/CrashCatcher;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/android/agent/crash/CrashListener;

    :try_start_0
    invoke-interface {p1}, Lcom/dynatrace/android/agent/crash/CrashListener;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-boolean p2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

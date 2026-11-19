.class public Lcom/dynatrace/android/agent/Dynatrace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->h:Ljava/lang/String;

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/dynatrace/android/agent/Dynatrace;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dynatrace/android/agent/DTXAction;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/dynatrace/android/agent/NullAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dynatrace/android/agent/DTXActionImpl;->q(Ljava/lang/String;Lcom/dynatrace/android/agent/DTXAction;)Lcom/dynatrace/android/agent/DTXActionImpl;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/dynatrace/android/agent/DTXAction;)Lcom/dynatrace/android/agent/DTXAction;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/dynatrace/android/agent/NullAction;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/dynatrace/android/agent/DTXActionImpl;->q(Ljava/lang/String;Lcom/dynatrace/android/agent/DTXAction;)Lcom/dynatrace/android/agent/DTXActionImpl;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/dynatrace/android/agent/NullAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    return-object p0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

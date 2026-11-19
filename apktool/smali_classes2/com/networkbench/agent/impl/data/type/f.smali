.class public Lcom/networkbench/agent/impl/data/type/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/data/type/f$a;
    }
.end annotation


# static fields
.field public static a:Lcom/networkbench/agent/impl/data/type/f; = null

.field private static final b:Ljava/lang/String; = "AppPhaseManager"


# instance fields
.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/data/type/f;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/f;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f$a;->a:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public a(Lcom/networkbench/agent/impl/data/type/f$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set app phase to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppPhaseManager"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/f$a;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/type/f;->d:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/type/f;->d:J

    return-wide v0
.end method

.method public b(Lcom/networkbench/agent/impl/data/type/f$a;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p1}, Lcom/networkbench/agent/impl/data/type/f$a;->a(Lcom/networkbench/agent/impl/data/type/f$a;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget-object v1, Lcom/networkbench/agent/impl/data/type/f$a;->b:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-static {v1}, Lcom/networkbench/agent/impl/data/type/f$a;->a(Lcom/networkbench/agent/impl/data/type/f$a;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f$a;->c:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/data/type/f$a;->a(Lcom/networkbench/agent/impl/data/type/f$a;)I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public d()Z
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f$a;->f:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/data/type/f$a;->a(Lcom/networkbench/agent/impl/data/type/f$a;)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

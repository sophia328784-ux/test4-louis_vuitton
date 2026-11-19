.class public Lcom/networkbench/agent/impl/socket/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/socket/r$a;,
        Lcom/networkbench/agent/impl/socket/r$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/socket/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/socket/r$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String; = "SslDataInfo"

.field private static final e:Lcom/networkbench/agent/impl/socket/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/socket/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/socket/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/socket/r;->c:Ljava/util/Map;

    new-instance v0, Lcom/networkbench/agent/impl/socket/o;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/socket/o;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/socket/r;->e:Lcom/networkbench/agent/impl/socket/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_0

    .line 56
    sget-object v0, Lcom/networkbench/agent/impl/socket/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/socket/r$b;

    iget-boolean v1, v1, Lcom/networkbench/agent/impl/socket/r$b;->b:Z

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/socket/r$b;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/socket/r$b;->b:Z

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/socket/r$b;

    iget p0, p0, Lcom/networkbench/agent/impl/socket/r$b;->a:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a()Lcom/networkbench/agent/impl/socket/o;
    .locals 1

    .line 59
    sget-object v0, Lcom/networkbench/agent/impl/socket/r;->e:Lcom/networkbench/agent/impl/socket/o;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/socket/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/networkbench/agent/impl/socket/r$b;

    invoke-direct {v1, p1}, Lcom/networkbench/agent/impl/socket/r$b;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ", firstPackageTime:"

    const-string v1, ", remainPackageTime:"

    const-string v2, "hostName:"

    invoke-static {p1, v2, p0, v0, v1}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SslDataInfo"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/socket/r;->e:Lcom/networkbench/agent/impl/socket/o;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/socket/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/socket/o;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/socket/n;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/socket/n;->a(I)V

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/socket/o;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/socket/n;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/socket/n;->b(I)V

    return-void

    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/socket/o;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/socket/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/networkbench/agent/impl/socket/r$a;

    invoke-direct {v1, p1}, Lcom/networkbench/agent/impl/socket/r$a;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 26
    sget-object v0, Lcom/networkbench/agent/impl/socket/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/socket/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/socket/r$a;

    iget-boolean v1, v1, Lcom/networkbench/agent/impl/socket/r$a;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/socket/r$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/socket/r$a;->b:Z

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/socket/r$a;

    iget p0, p0, Lcom/networkbench/agent/impl/socket/r$a;->a:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

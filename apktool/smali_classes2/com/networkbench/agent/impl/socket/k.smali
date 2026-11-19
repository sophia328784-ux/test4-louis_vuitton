.class public Lcom/networkbench/agent/impl/socket/k;
.super Ljava/security/Provider$Service;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SSLContext"

.field public static final b:Ljava/lang/String; = "TLS"

.field public static final c:[Ljava/lang/String;


# instance fields
.field private d:Ljava/security/Provider$Service;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "TLSv1"

    const-string v6, "TLS"

    const-string v0, "Default"

    const-string v1, "SSL"

    const-string v2, "TLSv1.1"

    const-string v3, "TLSv1.2"

    const-string v4, "SSLv3"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/socket/k;->c:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/security/Provider$Service;)V
    .locals 7

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    iput-object p1, v0, Lcom/networkbench/agent/impl/socket/k;->d:Ljava/security/Provider$Service;

    return-void
.end method

.method public static a(Ljava/security/Provider$Service;)Lcom/networkbench/agent/impl/socket/k;
    .locals 2

    .line 50
    new-instance v0, Lcom/networkbench/agent/impl/socket/k;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/socket/k;-><init>(Ljava/security/Provider$Service;)V

    .line 51
    :try_start_0
    const-class v1, Ljava/security/Provider$Service;

    invoke-static {v1, p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    instance-of p0, p1, Ljavax/net/ssl/SSLContextSpi;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/b;->a(Z)V

    if-eqz p0, :cond_0

    .line 56
    move-object p0, p1

    check-cast p0, Ljavax/net/ssl/SSLContextSpi;

    .line 57
    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/l;->a(Ljavax/net/ssl/SSLContextSpi;)Lcom/networkbench/agent/impl/socket/l;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/b;->a(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method private a(Ljava/security/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    const-class v0, Ljava/security/Provider$Service;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/security/Provider;

    const-string v2, "putService"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 54
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Z
    .locals 5

    invoke-static {}, Lcom/networkbench/agent/impl/socket/l;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/socket/k;->f()Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    sget-object v3, Lcom/networkbench/agent/impl/socket/k;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    const-string v4, "SSLContext"

    invoke-virtual {v0, v4, v3}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/networkbench/agent/impl/socket/k;

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/networkbench/agent/impl/socket/k;->a(Ljava/security/Provider$Service;)Lcom/networkbench/agent/impl/socket/k;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/socket/k;->c()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private b(Ljava/security/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/k;->d:Ljava/security/Provider$Service;

    invoke-virtual {v1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/security/Provider$Service;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/security/Provider;

    const-string v2, "removeService"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Z
    .locals 5

    .line 63
    invoke-static {}, Lcom/networkbench/agent/impl/socket/k;->f()Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 64
    :goto_0
    sget-object v3, Lcom/networkbench/agent/impl/socket/k;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 65
    aget-object v3, v3, v1

    .line 66
    const-string v4, "SSLContext"

    invoke-virtual {v0, v4, v3}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 67
    instance-of v4, v3, Lcom/networkbench/agent/impl/socket/k;

    if-eqz v4, :cond_1

    .line 68
    check-cast v3, Lcom/networkbench/agent/impl/socket/k;

    .line 69
    invoke-virtual {v3}, Lcom/networkbench/agent/impl/socket/k;->d()Z

    move-result v3

    and-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static f()Ljava/security/Provider;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 2

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/socket/k;->a(Ljava/security/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return v1
.end method

.method public d()Z
    .locals 3

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/networkbench/agent/impl/socket/k;->d:Ljava/security/Provider$Service;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/socket/k;->b(Ljava/security/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/b;->a(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/b;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/k;->d:Ljava/security/Provider$Service;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/b;->a(Ljava/lang/Object;)V

    return v1
.end method

.method public e()Ljava/security/Provider$Service;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/k;->d:Ljava/security/Provider$Service;

    return-object p0
.end method

.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/socket/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1

    :catch_0
    move-exception p0

    throw p0
.end method

.class public Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field private a:Lokhttp3/EventListener$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;->a:Lokhttp3/EventListener$Factory;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    iget-object p1, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-direct {v0, p1, p0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;-><init>(Lokhttp3/HttpUrl;Lokhttp3/EventListener;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    iget-object p1, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;-><init>(Lokhttp3/HttpUrl;)V

    return-object p0
.end method

.method public setFactory(Lokhttp3/EventListener$Factory;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.networkbench.agent.impl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;->a:Lokhttp3/EventListener$Factory;

    return-void
.end method

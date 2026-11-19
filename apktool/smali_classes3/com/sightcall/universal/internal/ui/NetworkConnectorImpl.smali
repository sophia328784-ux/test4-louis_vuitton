.class public final Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/network/NetworkConnector;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u0006\u001a\u0002H\u0007\"\u0004\u0008\u0000\u0010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\tH\u0016\u00a2\u0006\u0002\u0010\nJ\t\u0010\u000b\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012H\u00d6\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
        "client",
        "Lretrofit2/Retrofit;",
        "<init>",
        "(Lretrofit2/Retrofit;)V",
        "create",
        "T",
        "service",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final client:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->client:Lretrofit2/Retrofit;

    return-void
.end method

.method private final component1()Lretrofit2/Retrofit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->client:Lretrofit2/Retrofit;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;Lretrofit2/Retrofit;ILjava/lang/Object;)Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->client:Lretrofit2/Retrofit;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->copy(Lretrofit2/Retrofit;)Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lretrofit2/Retrofit;)Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;-><init>(Lretrofit2/Retrofit;)V

    return-object p0
.end method

.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->client:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->client:Lretrofit2/Retrofit;

    iget-object p1, p1, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->client:Lretrofit2/Retrofit;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->client:Lretrofit2/Retrofit;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;->client:Lretrofit2/Retrofit;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkConnectorImpl(client="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcoil3/network/CacheStrategy$ReadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/network/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/network/CacheStrategy$ReadResult;",
        "",
        "Lcoil3/network/NetworkRequest;",
        "request",
        "<init>",
        "(Lcoil3/network/NetworkRequest;)V",
        "Lcoil3/network/NetworkResponse;",
        "response",
        "(Lcoil3/network/NetworkResponse;)V",
        "io.coil-kt.coil3:coil-network-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcoil3/network/NetworkRequest;

.field public final b:Lcoil3/network/NetworkResponse;


# direct methods
.method public constructor <init>(Lcoil3/network/NetworkRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkRequest;

    const/4 p1, 0x0

    iput-object p1, p0, Lcoil3/network/CacheStrategy$ReadResult;->b:Lcoil3/network/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Lcoil3/network/NetworkResponse;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkRequest;

    .line 11
    iput-object p1, p0, Lcoil3/network/CacheStrategy$ReadResult;->b:Lcoil3/network/NetworkResponse;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil3/network/CacheStrategy$ReadResult;

    if-eqz v1, :cond_1

    check-cast p1, Lcoil3/network/CacheStrategy$ReadResult;

    iget-object v1, p1, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkRequest;

    iget-object v2, p0, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkRequest;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcoil3/network/CacheStrategy$ReadResult;->b:Lcoil3/network/NetworkResponse;

    iget-object p1, p1, Lcoil3/network/CacheStrategy$ReadResult;->b:Lcoil3/network/NetworkResponse;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcoil3/network/NetworkRequest;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcoil3/network/CacheStrategy$ReadResult;->b:Lcoil3/network/NetworkResponse;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcoil3/network/NetworkResponse;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReadResult(request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcoil3/network/CacheStrategy$ReadResult;->b:Lcoil3/network/NetworkResponse;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

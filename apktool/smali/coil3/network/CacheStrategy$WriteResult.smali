.class public final Lcoil3/network/CacheStrategy$WriteResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/network/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/network/CacheStrategy$WriteResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcoil3/network/CacheStrategy$WriteResult;",
        "",
        "Lcoil3/network/NetworkResponse;",
        "response",
        "<init>",
        "(Lcoil3/network/NetworkResponse;)V",
        "Companion",
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


# static fields
.field public static final b:Lcoil3/network/CacheStrategy$WriteResult;


# instance fields
.field public final a:Lcoil3/network/NetworkResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/network/CacheStrategy$WriteResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/network/CacheStrategy$WriteResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcoil3/network/CacheStrategy$WriteResult;

    invoke-direct {v0}, Lcoil3/network/CacheStrategy$WriteResult;-><init>()V

    sput-object v0, Lcoil3/network/CacheStrategy$WriteResult;->b:Lcoil3/network/CacheStrategy$WriteResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcoil3/network/CacheStrategy$WriteResult;->a:Lcoil3/network/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Lcoil3/network/NetworkResponse;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcoil3/network/CacheStrategy$WriteResult;->a:Lcoil3/network/NetworkResponse;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil3/network/CacheStrategy$WriteResult;

    if-eqz v1, :cond_1

    check-cast p1, Lcoil3/network/CacheStrategy$WriteResult;

    iget-object p1, p1, Lcoil3/network/CacheStrategy$WriteResult;->a:Lcoil3/network/NetworkResponse;

    iget-object p0, p0, Lcoil3/network/CacheStrategy$WriteResult;->a:Lcoil3/network/NetworkResponse;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcoil3/network/CacheStrategy$WriteResult;->a:Lcoil3/network/NetworkResponse;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcoil3/network/NetworkResponse;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WriteResult(response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcoil3/network/CacheStrategy$WriteResult;->a:Lcoil3/network/NetworkResponse;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

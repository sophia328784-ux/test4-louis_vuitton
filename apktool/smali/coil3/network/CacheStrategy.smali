.class public interface abstract Lcoil3/network/CacheStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/network/CacheStrategy$ReadResult;,
        Lcoil3/network/CacheStrategy$WriteResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0004\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcoil3/network/CacheStrategy;",
        "",
        "ReadResult",
        "WriteResult",
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
.field public static final a:Lcoil3/network/internal/DefaultCacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil3/network/internal/DefaultCacheStrategy;

    invoke-direct {v0}, Lcoil3/network/internal/DefaultCacheStrategy;-><init>()V

    sput-object v0, Lcoil3/network/CacheStrategy;->a:Lcoil3/network/internal/DefaultCacheStrategy;

    return-void
.end method


# virtual methods
.method public abstract a(Lcoil3/network/NetworkResponse;)Lcoil3/network/CacheStrategy$ReadResult;
.end method

.method public abstract b(Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkResponse;)Lcoil3/network/CacheStrategy$WriteResult;
.end method

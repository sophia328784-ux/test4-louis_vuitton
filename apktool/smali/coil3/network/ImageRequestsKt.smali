.class public abstract Lcoil3/network/ImageRequestsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-network-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcoil3/Extras$Key;

.field public static final b:Lcoil3/Extras$Key;

.field public static final c:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/Extras$Key;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/network/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Lcoil3/network/NetworkHeaders;->b:Lcoil3/network/NetworkHeaders;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/network/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/network/ImageRequestsKt;->c:Lcoil3/Extras$Key;

    return-void
.end method

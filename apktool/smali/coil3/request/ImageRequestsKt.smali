.class public abstract Lcoil3/request/ImageRequestsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-core"
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

.field public static final d:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    new-instance v1, Lcoil3/size/Size;

    const/16 v2, 0x1000

    invoke-static {v2}, Lcoil3/size/DimensionKt;->a(I)V

    new-instance v3, Lcoil3/size/Dimension$Pixels;

    invoke-direct {v3, v2}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    invoke-static {v2}, Lcoil3/size/DimensionKt;->a(I)V

    new-instance v4, Lcoil3/size/Dimension$Pixels;

    invoke-direct {v4, v2}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    invoke-direct {v1, v3, v4}, Lcoil3/size/Size;-><init>(Lcoil3/size/Dimension;Lcoil3/size/Dimension;)V

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequestsKt;->c:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequestsKt;->d:Lcoil3/Extras$Key;

    return-void
.end method

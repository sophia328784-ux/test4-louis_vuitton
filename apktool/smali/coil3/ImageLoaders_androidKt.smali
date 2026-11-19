.class public abstract Lcoil3/ImageLoaders_androidKt;
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
    .locals 3

    new-instance v0, Lcoil3/Extras$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/ImageLoaders_androidKt;->a:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Lcoil3/decode/ExifOrientationStrategy;->a:Llw;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/ImageLoaders_androidKt;->b:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/ImageLoaders_androidKt;->c:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/ImageLoaders_androidKt;->d:Lcoil3/Extras$Key;

    return-void
.end method

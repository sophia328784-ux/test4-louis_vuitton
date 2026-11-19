.class public abstract Lcoil3/SingletonImageLoaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil"
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
.field public static final a:Llw0;

.field public static final b:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llw0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcoil3/SingletonImageLoaderKt;->a:Llw0;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/SingletonImageLoaderKt;->b:Lcoil3/Extras$Key;

    return-void
.end method

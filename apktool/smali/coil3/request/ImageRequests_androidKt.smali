.class public abstract Lcoil3/request/ImageRequests_androidKt;
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

.field public static final e:Lcoil3/Extras$Key;

.field public static final f:Lcoil3/Extras$Key;

.field public static final g:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Lcoil3/transition/Transition$Factory;->a:Lcoil3/transition/NoneTransition$Factory;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Lcoil3/util/Utils_androidKt;->b:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->c:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->d:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    invoke-direct {v0, v2}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->f:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/Extras$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/request/ImageRequests_androidKt;->g:Lcoil3/Extras$Key;

    return-void
.end method

.method public static final a(Lcoil3/request/ImageRequest$Builder;I)V
    .locals 4

    if-lez p1, :cond_0

    new-instance v0, Lcoil3/transition/CrossfadeTransition$Factory;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcoil3/transition/CrossfadeTransition$Factory;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcoil3/transition/Transition$Factory;->a:Lcoil3/transition/NoneTransition$Factory;

    :goto_0
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->b()Lcoil3/Extras$Builder;

    move-result-object p0

    sget-object p1, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    invoke-virtual {p0, p1, v0}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static final b(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

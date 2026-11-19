.class public final Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/target/Target;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "coil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1",
        "Lcoil3/target/Target;",
        "io.coil-kt.coil3:coil-core"
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
.field public final synthetic b:Lcoil3/request/ImageRequest;

.field public final synthetic c:Lcoil3/compose/AsyncImagePainter;


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImagePainter;)V
    .locals 0

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;->b:Lcoil3/request/ImageRequest;

    iput-object p2, p0, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;->c:Lcoil3/compose/AsyncImagePainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcoil3/Image;)V
    .locals 0

    return-void
.end method

.method public final c(Lcoil3/Image;)V
    .locals 3

    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;->b:Lcoil3/request/ImageRequest;

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;->c:Lcoil3/compose/AsyncImagePainter;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    iget v2, p0, Lcoil3/compose/AsyncImagePainter;->r:I

    invoke-static {p1, v1, v2}, Lcoil3/compose/ImagePainter_androidKt;->a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object v1, Lcoil3/compose/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    invoke-static {v0, v1}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcoil3/compose/AsyncImagePainter;->y:Lcoil3/compose/AsyncImagePainter$Companion;

    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->l()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Loading;

    invoke-direct {v0, p1}, Lcoil3/compose/AsyncImagePainter$State$Loading;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    invoke-static {p0, v0}, Lcoil3/compose/AsyncImagePainter;->k(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$State;)V

    return-void
.end method

.method public final e(Lcoil3/Image;)V
    .locals 0

    return-void
.end method

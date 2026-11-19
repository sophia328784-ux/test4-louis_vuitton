.class public final Lcoil3/compose/internal/AsyncImageState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/compose/internal/AsyncImageState;",
        "",
        "model",
        "Lcoil3/compose/AsyncImageModelEqualityDelegate;",
        "modelEqualityDelegate",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "<init>",
        "(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V",
        "io.coil-kt.coil3:coil-compose-core"
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
.field public final a:Ljava/lang/Object;

.field public final b:Lcoil3/compose/AsyncImageModelEqualityDelegate;

.field public final c:Lcoil3/ImageLoader;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/compose/internal/AsyncImageState;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/compose/internal/AsyncImageState;->b:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    iput-object p3, p0, Lcoil3/compose/internal/AsyncImageState;->c:Lcoil3/ImageLoader;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil3/compose/internal/AsyncImageState;

    if-eqz v1, :cond_1

    check-cast p1, Lcoil3/compose/internal/AsyncImageState;

    iget-object v1, p1, Lcoil3/compose/internal/AsyncImageState;->b:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    iget-object v2, p0, Lcoil3/compose/internal/AsyncImageState;->b:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcoil3/compose/internal/AsyncImageState;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcoil3/compose/internal/AsyncImageState;->a:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcoil3/compose/AsyncImageModelEqualityDelegate;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcoil3/compose/internal/AsyncImageState;->c:Lcoil3/ImageLoader;

    iget-object p1, p1, Lcoil3/compose/internal/AsyncImageState;->c:Lcoil3/ImageLoader;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcoil3/compose/internal/AsyncImageState;->b:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcoil3/compose/internal/AsyncImageState;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcoil3/compose/AsyncImageModelEqualityDelegate;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcoil3/compose/internal/AsyncImageState;->c:Lcoil3/ImageLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

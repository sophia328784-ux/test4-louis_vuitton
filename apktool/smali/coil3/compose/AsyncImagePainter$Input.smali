.class public final Lcoil3/compose/AsyncImagePainter$Input;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/compose/AsyncImagePainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil3/compose/AsyncImagePainter$Input;",
        "",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/request/ImageRequest;",
        "request",
        "Lcoil3/compose/AsyncImageModelEqualityDelegate;",
        "modelEqualityDelegate",
        "<init>",
        "(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate;)V",
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
.field public final a:Lcoil3/ImageLoader;

.field public final b:Lcoil3/request/ImageRequest;

.field public final c:Lcoil3/compose/AsyncImageModelEqualityDelegate;


# direct methods
.method public constructor <init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    iput-object p2, p0, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    iput-object p3, p0, Lcoil3/compose/AsyncImagePainter$Input;->c:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil3/compose/AsyncImagePainter$Input;

    if-eqz v1, :cond_1

    check-cast p1, Lcoil3/compose/AsyncImagePainter$Input;

    iget-object v1, p1, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    iget-object v2, p0, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcoil3/compose/AsyncImagePainter$Input;->c:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    iget-object v2, p0, Lcoil3/compose/AsyncImagePainter$Input;->c:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    iget-object p1, p1, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    invoke-interface {v2, p0, p1}, Lcoil3/compose/AsyncImageModelEqualityDelegate;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$Input;->c:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    invoke-interface {v1, p0}, Lcoil3/compose/AsyncImageModelEqualityDelegate;->a(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input(imageLoader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modelEqualityDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$Input;->c:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

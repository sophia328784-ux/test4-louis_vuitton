.class public final Lcoil3/DrawableImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/Image;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/DrawableImage$SizeProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/DrawableImage;",
        "Lcoil3/Image;",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "",
        "shareable",
        "<init>",
        "(Landroid/graphics/drawable/Drawable;Z)V",
        "SizeProvider",
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
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    iput-boolean p2, p0, Lcoil3/DrawableImage;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcoil3/DrawableImage;->b:Z

    return p0
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil3/DrawableImage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcoil3/DrawableImage;

    iget-object v1, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcoil3/DrawableImage;->b:Z

    iget-boolean p1, p1, Lcoil3/DrawableImage;->b:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcoil3/util/Utils_androidKt;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public final getSize()J
    .locals 4

    iget-object p0, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcoil3/DrawableImage$SizeProvider;

    if-eqz v0, :cond_0

    check-cast p0, Lcoil3/DrawableImage$SizeProvider;

    invoke-interface {p0}, Lcoil3/DrawableImage$SizeProvider;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcoil3/util/Utils_androidKt;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    invoke-static {p0}, Lcoil3/util/Utils_androidKt;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcoil3/util/Utils_androidKt;->b(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcoil3/DrawableImage;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrawableImage(drawable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shareable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcoil3/DrawableImage;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Landroidx/compose/ui/graphics/ImageBitmapConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/ImageBitmapConfig;",
        "",
        "Companion",
        "value",
        "",
        "ui-graphics"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->b:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->c:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->d:I

    const/4 v0, 0x3

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->e:I

    const/4 v0, 0x4

    sput v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->f:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    iget p1, p1, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    iget p0, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    if-eq p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    if-nez p0, :cond_0

    const-string p0, "Argb8888"

    return-object p0

    :cond_0
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->c:I

    if-ne p0, v0, :cond_1

    const-string p0, "Alpha8"

    return-object p0

    :cond_1
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->d:I

    if-ne p0, v0, :cond_2

    const-string p0, "Rgb565"

    return-object p0

    :cond_2
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->e:I

    if-ne p0, v0, :cond_3

    const-string p0, "F16"

    return-object p0

    :cond_3
    sget v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->f:I

    if-ne p0, v0, :cond_4

    const-string p0, "Gpu"

    return-object p0

    :cond_4
    const-string p0, "Unknown"

    return-object p0
.end method

.class public abstract Landroidx/compose/ui/graphics/FilterQuality;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/FilterQuality$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/FilterQuality;",
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
.field public static final a:Landroidx/compose/ui/graphics/FilterQuality$Companion;

.field public static final b:I

.field public static final c:I

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/FilterQuality$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/FilterQuality$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/FilterQuality;->a:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->b:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->c:I

    const/4 v0, 0x3

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->d:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "None"

    return-object p0

    :cond_0
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->b:I

    if-ne p0, v0, :cond_1

    const-string p0, "Low"

    return-object p0

    :cond_1
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->c:I

    if-ne p0, v0, :cond_2

    const-string p0, "Medium"

    return-object p0

    :cond_2
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->d:I

    if-ne p0, v0, :cond_3

    const-string p0, "High"

    return-object p0

    :cond_3
    const-string p0, "Unknown"

    return-object p0
.end method

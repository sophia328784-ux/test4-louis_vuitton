.class public abstract Landroidx/compose/foundation/layout/WindowInsetsSides;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/WindowInsetsSides;",
        "",
        "Companion",
        "value",
        "",
        "foundation-layout"
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
.field public static final a:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->a:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->b:I

    const/4 v1, 0x4

    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->c:I

    const/4 v2, 0x2

    sput v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->d:I

    const/4 v3, 0x1

    sput v3, Landroidx/compose/foundation/layout/WindowInsetsSides;->e:I

    const/16 v4, 0x8

    or-int/2addr v4, v3

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->f:I

    const/4 v4, 0x4

    or-int/2addr v4, v2

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->g:I

    const/16 v4, 0x10

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->h:I

    const/16 v4, 0x20

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->i:I

    or-int/2addr v0, v2

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->j:I

    or-int/2addr v1, v3

    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->k:I

    or-int/2addr v0, v1

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->l:I

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

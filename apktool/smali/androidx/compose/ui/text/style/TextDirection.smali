.class public final Landroidx/compose/ui/text/style/TextDirection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/TextDirection$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/TextDirection;",
        "",
        "Companion",
        "value",
        "",
        "ui-text"
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
.field public static final b:Landroidx/compose/ui/text/style/TextDirection$Companion;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/TextDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/TextDirection;->b:Landroidx/compose/ui/text/style/TextDirection$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->c:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->d:I

    const/4 v0, 0x3

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->e:I

    const/4 v0, 0x4

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->f:I

    const/4 v0, 0x5

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->g:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/TextDirection;->a:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/TextDirection;->c:I

    if-ne p0, v0, :cond_0

    const-string p0, "Ltr"

    return-object p0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->d:I

    if-ne p0, v0, :cond_1

    const-string p0, "Rtl"

    return-object p0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->e:I

    if-ne p0, v0, :cond_2

    const-string p0, "Content"

    return-object p0

    :cond_2
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->f:I

    if-ne p0, v0, :cond_3

    const-string p0, "ContentOrLtr"

    return-object p0

    :cond_3
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->g:I

    if-ne p0, v0, :cond_4

    const-string p0, "ContentOrRtl"

    return-object p0

    :cond_4
    if-nez p0, :cond_5

    const-string p0, "Unspecified"

    return-object p0

    :cond_5
    const-string p0, "Invalid"

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/text/style/TextDirection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/TextDirection;

    iget p1, p1, Landroidx/compose/ui/text/style/TextDirection;->a:I

    iget p0, p0, Landroidx/compose/ui/text/style/TextDirection;->a:I

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

    iget p0, p0, Landroidx/compose/ui/text/style/TextDirection;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/TextDirection;->a:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/TextDirection;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

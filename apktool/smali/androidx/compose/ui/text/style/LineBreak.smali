.class public final Landroidx/compose/ui/text/style/LineBreak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineBreak$Companion;,
        Landroidx/compose/ui/text/style/LineBreak$Strategy;,
        Landroidx/compose/ui/text/style/LineBreak$Strictness;,
        Landroidx/compose/ui/text/style/LineBreak$WordBreak;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0088\u0001\u0006\u0092\u0001\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/LineBreak;",
        "",
        "Companion",
        "Strategy",
        "Strictness",
        "WordBreak",
        "mask",
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
.field public static final b:Landroidx/compose/ui/text/style/LineBreak$Companion;

.field public static final c:I


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/style/LineBreak$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineBreak$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineBreak;->b:Landroidx/compose/ui/text/style/LineBreak$Companion;

    sget-object v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->a:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->b:I

    sget-object v1, Landroidx/compose/ui/text/style/LineBreak$Strictness;->a:Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/LineBreak$Strictness;->d:I

    sget-object v2, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->a:Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->b:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    sput v0, Landroidx/compose/ui/text/style/LineBreak;->c:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/LineBreak;->a:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineBreak(strategy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v1, p0, 0xff

    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strategy;->b:I

    const-string v3, "Invalid"

    if-ne v1, v2, :cond_0

    const-string v1, "Strategy.Simple"

    goto :goto_0

    :cond_0
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strategy;->c:I

    if-ne v1, v2, :cond_1

    const-string v1, "Strategy.HighQuality"

    goto :goto_0

    :cond_1
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strategy;->d:I

    if-ne v1, v2, :cond_2

    const-string v1, "Strategy.Balanced"

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "Strategy.Unspecified"

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strictness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->b:I

    if-ne v1, v2, :cond_4

    const-string v1, "Strictness.None"

    goto :goto_1

    :cond_4
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->c:I

    if-ne v1, v2, :cond_5

    const-string v1, "Strictness.Loose"

    goto :goto_1

    :cond_5
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->d:I

    if-ne v1, v2, :cond_6

    const-string v1, "Strictness.Normal"

    goto :goto_1

    :cond_6
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->e:I

    if-ne v1, v2, :cond_7

    const-string v1, "Strictness.Strict"

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    const-string v1, "Strictness.Unspecified"

    goto :goto_1

    :cond_8
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wordBreak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    sget v1, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->b:I

    if-ne p0, v1, :cond_9

    const-string v3, "WordBreak.None"

    goto :goto_2

    :cond_9
    sget v1, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->c:I

    if-ne p0, v1, :cond_a

    const-string v3, "WordBreak.Phrase"

    goto :goto_2

    :cond_a
    if-nez p0, :cond_b

    const-string v3, "WordBreak.Unspecified"

    :cond_b
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/text/style/LineBreak;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/LineBreak;

    iget p1, p1, Landroidx/compose/ui/text/style/LineBreak;->a:I

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak;->a:I

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

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak;->a:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Landroidx/compose/ui/text/Placeholder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/text/Placeholder;",
        "",
        "Landroidx/compose/ui/unit/TextUnit;",
        "width",
        "height",
        "Landroidx/compose/ui/text/PlaceholderVerticalAlign;",
        "placeholderVerticalAlign",
        "<init>",
        "(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V",
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


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/text/Placeholder;->a:J

    iput-wide p3, p0, Landroidx/compose/ui/text/Placeholder;->b:J

    iput p5, p0, Landroidx/compose/ui/text/Placeholder;->c:I

    sget-object p0, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    const-wide p5, 0xff00000000L

    and-long p0, p1, p5

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const-string p0, "width cannot be TextUnit.Unspecified"

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_0
    and-long p0, p3, p5

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const-string p0, "height cannot be TextUnit.Unspecified"

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/Placeholder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/Placeholder;

    iget-wide v3, p1, Landroidx/compose/ui/text/Placeholder;->a:J

    iget-wide v5, p0, Landroidx/compose/ui/text/Placeholder;->a:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/text/Placeholder;->b:J

    iget-wide v5, p1, Landroidx/compose/ui/text/Placeholder;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p1, p1, Landroidx/compose/ui/text/Placeholder;->c:I

    sget-object v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->a:Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;

    iget p0, p0, Landroidx/compose/ui/text/Placeholder;->c:I

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    iget-wide v0, p0, Landroidx/compose/ui/text/Placeholder;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/ui/text/Placeholder;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->a:Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;

    iget p0, p0, Landroidx/compose/ui/text/Placeholder;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Placeholder(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/text/Placeholder;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/Placeholder;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placeholderVerticalAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->b:I

    iget p0, p0, Landroidx/compose/ui/text/Placeholder;->c:I

    if-ne p0, v1, :cond_0

    const-string p0, "AboveBaseline"

    goto :goto_0

    :cond_0
    sget v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->c:I

    if-ne p0, v1, :cond_1

    const-string p0, "Top"

    goto :goto_0

    :cond_1
    sget v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->d:I

    if-ne p0, v1, :cond_2

    const-string p0, "Bottom"

    goto :goto_0

    :cond_2
    sget v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->e:I

    if-ne p0, v1, :cond_3

    const-string p0, "Center"

    goto :goto_0

    :cond_3
    sget v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->f:I

    if-ne p0, v1, :cond_4

    const-string p0, "TextTop"

    goto :goto_0

    :cond_4
    sget v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->g:I

    if-ne p0, v1, :cond_5

    const-string p0, "TextBottom"

    goto :goto_0

    :cond_5
    sget v1, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->h:I

    if-ne p0, v1, :cond_6

    const-string p0, "TextCenter"

    goto :goto_0

    :cond_6
    const-string p0, "Invalid"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

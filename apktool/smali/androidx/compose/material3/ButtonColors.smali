.class public final Landroidx/compose/material3/ButtonColors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/material3/ButtonColors;",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "containerColor",
        "contentColor",
        "disabledContainerColor",
        "disabledContentColor",
        "<init>",
        "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/ButtonColors;->a:J

    iput-wide p3, p0, Landroidx/compose/material3/ButtonColors;->b:J

    iput-wide p5, p0, Landroidx/compose/material3/ButtonColors;->c:J

    iput-wide p7, p0, Landroidx/compose/material3/ButtonColors;->d:J

    return-void
.end method


# virtual methods
.method public final a(JJJJ)Landroidx/compose/material3/ButtonColors;
    .locals 14

    const-wide/16 v0, 0x10

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    move-wide v5, p1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->a:J

    move-wide v5, v2

    :goto_0
    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    move-wide/from16 v7, p3

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->b:J

    move-wide v7, v2

    :goto_1
    cmp-long v2, p5, v0

    if-eqz v2, :cond_2

    move-wide/from16 v9, p5

    goto :goto_2

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->c:J

    move-wide v9, v2

    :goto_2
    cmp-long v0, p7, v0

    if-eqz v0, :cond_3

    move-wide/from16 v11, p7

    goto :goto_3

    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/ButtonColors;->d:J

    move-wide v11, v0

    :goto_3
    new-instance v4, Landroidx/compose/material3/ButtonColors;

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v13}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    instance-of v2, p1, Landroidx/compose/material3/ButtonColors;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/ButtonColors;

    iget-wide v2, p1, Landroidx/compose/material3/ButtonColors;->a:J

    iget-wide v4, p0, Landroidx/compose/material3/ButtonColors;->a:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->b:J

    iget-wide v4, p1, Landroidx/compose/material3/ButtonColors;->b:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->c:J

    iget-wide v4, p1, Landroidx/compose/material3/ButtonColors;->c:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->d:J

    iget-wide p0, p1, Landroidx/compose/material3/ButtonColors;->d:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v0, p0, Landroidx/compose/material3/ButtonColors;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->c:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/ButtonColors;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

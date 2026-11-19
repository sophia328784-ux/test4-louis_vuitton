.class public final Lcom/vuitton/android/designkit/ui/theme/LVColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;,
        Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/LVColor;",
        "",
        "Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;",
        "core",
        "Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;",
        "sem",
        "Landroidx/compose/ui/graphics/Color;",
        "black500",
        "black300",
        "black100",
        "Landroidx/compose/material3/ColorScheme;",
        "m3Palette",
        "<init>",
        "(Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;JJJLandroidx/compose/material3/ColorScheme;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Core",
        "Semantic",
        "system"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

.field public final b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Landroidx/compose/material3/ColorScheme;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;JJJLandroidx/compose/material3/ColorScheme;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_0

    const-wide v0, 0xff000000L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p3

    :goto_0
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_1

    const-wide v0, 0xff545454L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p5

    :goto_1
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_2

    const-wide v0, 0xffe6e6e6L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p7

    :goto_2
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_3

    iget-wide v0, p2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    const/16 v2, -0x2001

    invoke-static {v2, v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->e(IJ)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_3
    move-object/from16 v11, p9

    :goto_3
    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v12}, Lcom/vuitton/android/designkit/ui/theme/LVColor;-><init>(Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;JJJLandroidx/compose/material3/ColorScheme;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;JJJLandroidx/compose/material3/ColorScheme;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->a:Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

    .line 78
    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    .line 79
    iput-wide p3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->c:J

    .line 80
    iput-wide p5, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->d:J

    .line 81
    iput-wide p7, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->e:J

    .line 82
    iput-object p9, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->f:Landroidx/compose/material3/ColorScheme;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->a:Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->a:Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->c:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->d:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->d:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->e:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->f:Landroidx/compose/material3/ColorScheme;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->f:Landroidx/compose/material3/ColorScheme;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->a:Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    invoke-virtual {v2}, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->c:J

    invoke-static {v2, v1, v3, v4}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->d:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->e:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->f:Landroidx/compose/material3/ColorScheme;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->c:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->d:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->e:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LVColor(core="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->a:Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", sem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", black500="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", black300="

    const-string v5, ", black100="

    invoke-static {v3, v0, v4, v1, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", m3Palette="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->f:Landroidx/compose/material3/ColorScheme;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

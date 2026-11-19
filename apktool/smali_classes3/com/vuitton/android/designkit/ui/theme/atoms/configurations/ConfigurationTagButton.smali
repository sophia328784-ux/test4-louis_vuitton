.class public final Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;",
        "",
        "Landroidx/compose/ui/text/TextStyle;",
        "style",
        "Landroidx/compose/ui/graphics/Color;",
        "enabledBackgroundColor",
        "enabledTextColor",
        "enabledIconColor",
        "disabledBackgroundColor",
        "disabledTextColor",
        "disabledIconColor",
        "Landroidx/compose/ui/graphics/Shape;",
        "shape",
        "Landroidx/compose/ui/unit/Dp;",
        "horizontalPadding",
        "verticalPadding",
        "maxWidth",
        "<init>",
        "(Landroidx/compose/ui/text/TextStyle;JJJJJJLandroidx/compose/ui/graphics/Shape;FFFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Landroidx/compose/ui/text/TextStyle;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Landroidx/compose/ui/graphics/Shape;

.field public final i:F

.field public final j:F

.field public final k:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;JJJJJJLandroidx/compose/ui/graphics/Shape;FFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->a:Landroidx/compose/ui/text/TextStyle;

    iput-wide p2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->b:J

    iput-wide p4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->c:J

    iput-wide p6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->d:J

    iput-wide p8, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->e:J

    iput-wide p10, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->f:J

    iput-wide p12, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->g:J

    iput-object p14, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->h:Landroidx/compose/ui/graphics/Shape;

    iput p15, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->i:F

    move/from16 p1, p16

    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->j:F

    move/from16 p1, p17

    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->k:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->a:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->a:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->b:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->b:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->c:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->d:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->d:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->e:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->e:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->f:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->f:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->g:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->g:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->h:Landroidx/compose/ui/graphics/Shape;

    iget-object v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->h:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->i:F

    iget v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->i:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->j:F

    iget v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->j:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->k:F

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->k:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result p0

    if-nez p0, :cond_c

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->a:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v2, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->c:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->d:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->e:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->f:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->g:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->h:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->i:F

    invoke-static {v2, v1, v0}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->j:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->k:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->b:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->c:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->d:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->e:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->f:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->g:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->i:F

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->j:F

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->k:F

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ConfigurationTagButton(style="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->a:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", enabledBackgroundColor="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", enabledTextColor="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", enabledIconColor="

    const-string v10, ", disabledBackgroundColor="

    invoke-static {v9, v1, v0, v2, v10}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", disabledTextColor="

    const-string v1, ", disabledIconColor="

    invoke-static {v9, v3, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shape="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;->h:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", horizontalPadding="

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", verticalPadding="

    const-string v0, ", maxWidth="

    invoke-static {v9, v6, p0, v7, v0}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ")"

    invoke-static {v8, p0, v9}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

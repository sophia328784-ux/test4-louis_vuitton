.class public final Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0012B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "backgroundColor",
        "backgroundColorPressed",
        "backgroundColorSelected",
        "backgroundColorDisabled",
        "contentColor",
        "Landroidx/compose/ui/unit/Dp;",
        "contentSize",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "paddingValues",
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;",
        "border",
        "borderPressed",
        "borderSelected",
        "<init>",
        "(JJLandroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;JFLandroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Border",
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
.field public final a:J

.field public final b:J

.field public final c:Landroidx/compose/ui/graphics/Color;

.field public final d:Landroidx/compose/ui/graphics/Color;

.field public final e:J

.field public final f:F

.field public final g:Landroidx/compose/foundation/layout/PaddingValues;

.field public final h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

.field public final i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

.field public final j:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;


# direct methods
.method public synthetic constructor <init>(JJLandroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;JFLandroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    and-int/lit8 v0, p14, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v0, p14, 0x8

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v2 .. v16}, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;-><init>(JJLandroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;JFLandroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJLandroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;JFLandroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 41
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->a:J

    .line 44
    iput-wide p3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->b:J

    .line 45
    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->c:Landroidx/compose/ui/graphics/Color;

    .line 46
    iput-object p6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->d:Landroidx/compose/ui/graphics/Color;

    .line 47
    iput-wide p7, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->e:J

    .line 48
    iput p9, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->f:F

    .line 49
    iput-object p10, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->g:Landroidx/compose/foundation/layout/PaddingValues;

    .line 50
    iput-object p11, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    .line 51
    iput-object p12, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    .line 52
    iput-object p13, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->j:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->a:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->b:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->c:Landroidx/compose/ui/graphics/Color;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->c:Landroidx/compose/ui/graphics/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->d:Landroidx/compose/ui/graphics/Color;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->d:Landroidx/compose/ui/graphics/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->e:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->f:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->f:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->g:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->g:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->j:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->j:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->c:Landroidx/compose/ui/graphics/Color;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->d:Landroidx/compose/ui/graphics/Color;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v2, v3, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->e:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->f:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->g:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->j:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->e:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->f:F

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", backgroundColorPressed="

    const-string v5, ", backgroundColorSelected="

    const-string v6, "ConfigurationIconButton(backgroundColor="

    invoke-static {v6, v0, v4, v1, v5}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->c:Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColorDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->d:Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentSize="

    const-string v4, ", paddingValues="

    invoke-static {v0, v2, v1, v3, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->g:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", border="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", borderPressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", borderSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->j:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

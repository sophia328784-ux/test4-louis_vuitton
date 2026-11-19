.class public final Lcom/vuitton/android/designkit/ui/theme/LVSpacings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/LVSpacings;",
        "",
        "Landroidx/compose/ui/unit/Dp;",
        "spacing2",
        "spacing4",
        "spacing8",
        "spacing12",
        "spacing16",
        "spacing24",
        "spacing32",
        "spacing40",
        "spacing48",
        "spacing56",
        "spacing64",
        "spacing72",
        "spacing80",
        "spacing96",
        "<init>",
        "(FFFFFFFFFFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F


# direct methods
.method public constructor <init>(FFFFFFFFFFFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v2, 0x40800000    # 4.0f

    goto :goto_1

    :cond_1
    move/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v3, 0x41000000    # 8.0f

    goto :goto_2

    :cond_2
    move/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v4, 0x41400000    # 12.0f

    goto :goto_3

    :cond_3
    move/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v5, 0x41800000    # 16.0f

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v6, 0x41c00000    # 24.0f

    goto :goto_5

    :cond_5
    move/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    sget-object v7, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v7, 0x42000000    # 32.0f

    goto :goto_6

    :cond_6
    move/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    sget-object v8, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v8, 0x42200000    # 40.0f

    goto :goto_7

    :cond_7
    move/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    sget-object v9, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v9, 0x42400000    # 48.0f

    goto :goto_8

    :cond_8
    move/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    sget-object v10, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v10, 0x42600000    # 56.0f

    goto :goto_9

    :cond_9
    move/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    sget-object v11, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v11, 0x42800000    # 64.0f

    goto :goto_a

    :cond_a
    move/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    sget-object v12, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v12, 0x42900000    # 72.0f

    goto :goto_b

    :cond_b
    move/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    sget-object v13, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v13, 0x42a00000    # 80.0f

    goto :goto_c

    :cond_c
    move/from16 v13, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42c00000    # 96.0f

    goto :goto_d

    :cond_d
    move/from16 v0, p14

    :goto_d
    const/4 v14, 0x0

    move-object/from16 p1, p0

    move/from16 p15, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    move/from16 p11, v10

    move/from16 p12, v11

    move/from16 p13, v12

    move/from16 p14, v13

    move-object/from16 p16, v14

    invoke-direct/range {p1 .. p16}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;-><init>(FFFFFFFFFFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a:F

    .line 195
    iput p2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    .line 196
    iput p3, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    .line 197
    iput p4, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    .line 198
    iput p5, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    .line 199
    iput p6, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    .line 200
    iput p7, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    .line 201
    iput p8, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    .line 202
    iput p9, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    .line 203
    iput p10, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    .line 204
    iput p11, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    .line 205
    iput p12, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    .line 206
    iput p13, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    .line 207
    iput p14, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->n:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->n:F

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->n:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->n:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v9

    iget v10, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v11

    iget v12, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v13

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->n:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object v0

    const-string v14, ", spacing4="

    const-string v15, ", spacing8="

    move-object/from16 p0, v0

    const-string v0, "LVSpacings(spacing2="

    invoke-static {v0, v1, v14, v2, v15}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spacing12="

    const-string v2, ", spacing16="

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", spacing24="

    const-string v2, ", spacing32="

    invoke-static {v0, v5, v1, v6, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", spacing40="

    const-string v2, ", spacing48="

    invoke-static {v0, v7, v1, v8, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", spacing56="

    const-string v2, ", spacing64="

    invoke-static {v0, v9, v1, v10, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", spacing72="

    const-string v2, ", spacing80="

    invoke-static {v0, v11, v1, v12, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", spacing96="

    const-string v2, ")"

    move-object/from16 v3, p0

    invoke-static {v0, v13, v1, v3, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

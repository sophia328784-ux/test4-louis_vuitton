.class public abstract Landroidx/compose/material3/ColorSchemeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ColorSchemeKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcm;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcm;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/ColorSchemeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v0, Lcm;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcm;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/ColorSchemeKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/material3/ColorScheme;J)J
    .locals 10

    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->a:J

    iget-wide v2, p0, Landroidx/compose/material3/ColorScheme;->U:J

    iget-wide v4, p0, Landroidx/compose/material3/ColorScheme;->Q:J

    iget-wide v6, p0, Landroidx/compose/material3/ColorScheme;->M:J

    iget-wide v8, p0, Landroidx/compose/material3/ColorScheme;->q:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->b:J

    return-wide p0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->f:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->g:J

    return-wide p0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->j:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->k:J

    return-wide p0

    :cond_2
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->n:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->o:J

    return-wide p0

    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->w:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->x:J

    return-wide p0

    :cond_4
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->c:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->d:J

    return-wide p0

    :cond_5
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->h:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->i:J

    return-wide p0

    :cond_6
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->l:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->m:J

    return-wide p0

    :cond_7
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->y:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->z:J

    return-wide p0

    :cond_8
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->u:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->v:J

    return-wide p0

    :cond_9
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->p:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    return-wide v8

    :cond_a
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->r:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->s:J

    return-wide p0

    :cond_b
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->D:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_c

    return-wide v8

    :cond_c
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->F:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_d

    return-wide v8

    :cond_d
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->G:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_e

    return-wide v8

    :cond_e
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->H:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_f

    return-wide v8

    :cond_f
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->I:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_10

    return-wide v8

    :cond_10
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->J:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    return-wide v8

    :cond_11
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->E:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_12

    return-wide v8

    :cond_12
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->K:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_13

    return-wide v6

    :cond_13
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->L:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_14

    return-wide v6

    :cond_14
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->O:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_15

    return-wide v4

    :cond_15
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->P:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_16

    return-wide v4

    :cond_16
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->S:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_17

    return-wide v2

    :cond_17
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->T:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result p0

    if-eqz p0, :cond_18

    return-wide v2

    :cond_18
    sget-object p0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Landroidx/compose/ui/graphics/Color;->i:J

    return-wide p0
.end method

.method public static final b(JLandroidx/compose/runtime/Composer;)J
    .locals 2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x553c0da

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroidx/compose/material3/ColorSchemeKt;->a(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide p0

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    return-wide p0
.end method

.method public static final c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J
    .locals 1

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_0
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->V:J

    return-wide p0

    :pswitch_1
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->U:J

    return-wide p0

    :pswitch_2
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->T:J

    return-wide p0

    :pswitch_3
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->S:J

    return-wide p0

    :pswitch_4
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->R:J

    return-wide p0

    :pswitch_5
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->Q:J

    return-wide p0

    :pswitch_6
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->P:J

    return-wide p0

    :pswitch_7
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->O:J

    return-wide p0

    :pswitch_8
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->N:J

    return-wide p0

    :pswitch_9
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->M:J

    return-wide p0

    :pswitch_a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->L:J

    return-wide p0

    :pswitch_b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->K:J

    return-wide p0

    :pswitch_c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->l:J

    return-wide p0

    :pswitch_d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->j:J

    return-wide p0

    :pswitch_e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->E:J

    return-wide p0

    :pswitch_f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->J:J

    return-wide p0

    :pswitch_10
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->I:J

    return-wide p0

    :pswitch_11
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->H:J

    return-wide p0

    :pswitch_12
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->G:J

    return-wide p0

    :pswitch_13
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->F:J

    return-wide p0

    :pswitch_14
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->D:J

    return-wide p0

    :pswitch_15
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->r:J

    return-wide p0

    :pswitch_16
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->p:J

    return-wide p0

    :pswitch_17
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->h:J

    return-wide p0

    :pswitch_18
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->f:J

    return-wide p0

    :pswitch_19
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->C:J

    return-wide p0

    :pswitch_1a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->c:J

    return-wide p0

    :pswitch_1b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->a:J

    return-wide p0

    :pswitch_1c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->B:J

    return-wide p0

    :pswitch_1d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->A:J

    return-wide p0

    :pswitch_1e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->m:J

    return-wide p0

    :pswitch_1f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->k:J

    return-wide p0

    :pswitch_20
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->t:J

    return-wide p0

    :pswitch_21
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->s:J

    return-wide p0

    :pswitch_22
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->q:J

    return-wide p0

    :pswitch_23
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->i:J

    return-wide p0

    :pswitch_24
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->g:J

    return-wide p0

    :pswitch_25
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->d:J

    return-wide p0

    :pswitch_26
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->b:J

    return-wide p0

    :pswitch_27
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->z:J

    return-wide p0

    :pswitch_28
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->x:J

    return-wide p0

    :pswitch_29
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->o:J

    return-wide p0

    :pswitch_2a
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->u:J

    return-wide p0

    :pswitch_2b
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->e:J

    return-wide p0

    :pswitch_2c
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->v:J

    return-wide p0

    :pswitch_2d
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->y:J

    return-wide p0

    :pswitch_2e
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->w:J

    return-wide p0

    :pswitch_2f
    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->n:J

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p1}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(IJ)Landroidx/compose/material3/ColorScheme;
    .locals 98

    sget-wide v1, Landroidx/compose/material3/tokens/ColorLightTokens;->z:J

    sget-wide v3, Landroidx/compose/material3/tokens/ColorLightTokens;->j:J

    sget-wide v5, Landroidx/compose/material3/tokens/ColorLightTokens;->A:J

    sget-wide v7, Landroidx/compose/material3/tokens/ColorLightTokens;->k:J

    sget-wide v9, Landroidx/compose/material3/tokens/ColorLightTokens;->e:J

    sget-wide v11, Landroidx/compose/material3/tokens/ColorLightTokens;->E:J

    sget-wide v13, Landroidx/compose/material3/tokens/ColorLightTokens;->n:J

    sget-wide v15, Landroidx/compose/material3/tokens/ColorLightTokens;->F:J

    sget-wide v17, Landroidx/compose/material3/tokens/ColorLightTokens;->o:J

    sget-wide v19, Landroidx/compose/material3/tokens/ColorLightTokens;->R:J

    sget-wide v21, Landroidx/compose/material3/tokens/ColorLightTokens;->t:J

    sget-wide v23, Landroidx/compose/material3/tokens/ColorLightTokens;->S:J

    sget-wide v25, Landroidx/compose/material3/tokens/ColorLightTokens;->u:J

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    sget-wide v27, Landroidx/compose/material3/tokens/ColorLightTokens;->a:J

    goto :goto_0

    :cond_0
    move-wide/from16 v27, p1

    :goto_0
    sget-wide v29, Landroidx/compose/material3/tokens/ColorLightTokens;->g:J

    sget-wide v31, Landroidx/compose/material3/tokens/ColorLightTokens;->I:J

    sget-wide v33, Landroidx/compose/material3/tokens/ColorLightTokens;->r:J

    sget-wide v35, Landroidx/compose/material3/tokens/ColorLightTokens;->Q:J

    sget-wide v37, Landroidx/compose/material3/tokens/ColorLightTokens;->s:J

    sget-wide v41, Landroidx/compose/material3/tokens/ColorLightTokens;->f:J

    sget-wide v43, Landroidx/compose/material3/tokens/ColorLightTokens;->d:J

    sget-wide v45, Landroidx/compose/material3/tokens/ColorLightTokens;->b:J

    sget-wide v47, Landroidx/compose/material3/tokens/ColorLightTokens;->h:J

    sget-wide v49, Landroidx/compose/material3/tokens/ColorLightTokens;->c:J

    sget-wide v51, Landroidx/compose/material3/tokens/ColorLightTokens;->i:J

    sget-wide v53, Landroidx/compose/material3/tokens/ColorLightTokens;->x:J

    sget-wide v55, Landroidx/compose/material3/tokens/ColorLightTokens;->y:J

    sget-wide v57, Landroidx/compose/material3/tokens/ColorLightTokens;->D:J

    sget-wide v59, Landroidx/compose/material3/tokens/ColorLightTokens;->J:J

    sget-wide v63, Landroidx/compose/material3/tokens/ColorLightTokens;->K:J

    sget-wide v65, Landroidx/compose/material3/tokens/ColorLightTokens;->L:J

    sget-wide v67, Landroidx/compose/material3/tokens/ColorLightTokens;->M:J

    sget-wide v69, Landroidx/compose/material3/tokens/ColorLightTokens;->N:J

    sget-wide v71, Landroidx/compose/material3/tokens/ColorLightTokens;->O:J

    sget-wide v61, Landroidx/compose/material3/tokens/ColorLightTokens;->P:J

    sget-wide v73, Landroidx/compose/material3/tokens/ColorLightTokens;->B:J

    sget-wide v75, Landroidx/compose/material3/tokens/ColorLightTokens;->C:J

    sget-wide v77, Landroidx/compose/material3/tokens/ColorLightTokens;->l:J

    sget-wide v79, Landroidx/compose/material3/tokens/ColorLightTokens;->m:J

    sget-wide v81, Landroidx/compose/material3/tokens/ColorLightTokens;->G:J

    sget-wide v83, Landroidx/compose/material3/tokens/ColorLightTokens;->H:J

    sget-wide v85, Landroidx/compose/material3/tokens/ColorLightTokens;->p:J

    sget-wide v87, Landroidx/compose/material3/tokens/ColorLightTokens;->q:J

    sget-wide v89, Landroidx/compose/material3/tokens/ColorLightTokens;->T:J

    sget-wide v91, Landroidx/compose/material3/tokens/ColorLightTokens;->U:J

    sget-wide v93, Landroidx/compose/material3/tokens/ColorLightTokens;->v:J

    sget-wide v95, Landroidx/compose/material3/tokens/ColorLightTokens;->w:J

    new-instance v0, Landroidx/compose/material3/ColorScheme;

    const/16 v97, 0x0

    move-wide/from16 v39, v1

    invoke-direct/range {v0 .. v97}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

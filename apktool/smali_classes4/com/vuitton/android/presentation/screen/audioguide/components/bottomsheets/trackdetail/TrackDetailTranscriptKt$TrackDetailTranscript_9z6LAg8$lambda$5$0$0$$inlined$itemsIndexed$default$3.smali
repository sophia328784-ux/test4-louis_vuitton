.class public final Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Ljava/util/List;IJJ)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;->c:I

    iput-wide p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;->d:J

    iput-wide p5, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    if-nez v3, :cond_3

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v4, 0x92

    const/4 v5, 0x0

    const/4 v10, 0x1

    if-eq v3, v4, :cond_4

    move v3, v10

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    and-int/2addr v1, v10

    invoke-interface {v7, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;

    const v3, 0x88d890e

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;->c:I

    if-ne v2, v3, :cond_5

    iget-wide v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;->d:J

    goto :goto_4

    :cond_5
    iget-wide v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;->e:J

    :goto_4
    const/16 v0, 0x12c

    const/4 v6, 0x0

    const/4 v8, 0x6

    invoke-static {v0, v5, v6, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    const-string v0, "cueColor_"

    invoke-static {v2, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x30

    const/16 v9, 0x8

    invoke-static/range {v3 .. v9}, Landroidx/compose/animation/SingleValueAnimationKt;->b(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    move-object/from16 v22, v7

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v10}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;->c:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v5, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->d:Landroidx/compose/ui/text/TextStyle;

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->i:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v20, 0x0

    const v21, 0xfffffb

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v5 .. v21}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v5, v0, Landroidx/compose/ui/graphics/Color;->a:J

    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v13, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v13, v0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v24, 0x0

    const v25, 0x1fbf8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_6
    move-object/from16 v22, v7

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.class public final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "foundation"
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
.field public final synthetic a:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic d:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic e:Landroidx/compose/ui/unit/Density;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->a:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->c:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->d:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->e:Landroidx/compose/ui/unit/Density;

    iput p6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->f:I

    return-void
.end method


# virtual methods
.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->a:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object p2, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/TextDelegate;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->j:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "layoutIntrinsics must be called first"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 37

    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v14, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->a:Landroidx/compose/foundation/text/LegacyTextFieldState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    :try_start_0
    invoke-virtual {v14}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    if-eqz v4, :cond_1

    iget-object v1, v4, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Landroidx/compose/foundation/text/TextFieldDelegate;->a:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    iget-object v3, v14, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v3, Landroidx/compose/foundation/text/TextDelegate;->f:I

    iget-boolean v5, v3, Landroidx/compose/foundation/text/TextDelegate;->e:Z

    iget v6, v3, Landroidx/compose/foundation/text/TextDelegate;->c:I

    const-wide v16, 0xffffffffL

    const/16 v18, 0x20

    if-eqz v1, :cond_8

    iget-object v10, v1, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v11, v1, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v12, v3, Landroidx/compose/foundation/text/TextDelegate;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v13, v3, Landroidx/compose/foundation/text/TextDelegate;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v3, Landroidx/compose/foundation/text/TextDelegate;->i:Ljava/util/List;

    iget-object v8, v3, Landroidx/compose/foundation/text/TextDelegate;->g:Landroidx/compose/ui/unit/Density;

    const/16 v19, 0x0

    iget-object v15, v3, Landroidx/compose/foundation/text/TextDelegate;->h:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v20, v1

    iget-object v1, v11, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide/from16 v11, p3

    move-object/from16 v29, v4

    move-object/from16 v15, v20

    goto/16 :goto_3

    :cond_2
    iget-object v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 v22, v3

    move-object/from16 v21, v4

    iget-wide v3, v10, Landroidx/compose/ui/text/TextLayoutInput;->j:J

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v1, v13}, Landroidx/compose/ui/text/TextStyle;->c(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->c:Ljava/util/List;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->d:I

    if-ne v1, v6, :cond_7

    iget-boolean v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->e:Z

    if-ne v1, v5, :cond_7

    iget v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->f:I

    sget-object v7, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    if-ne v1, v2, :cond_7

    iget-object v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->g:Landroidx/compose/ui/unit/Density;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->h:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v9, :cond_7

    iget-object v1, v10, Landroidx/compose/ui/text/TextLayoutInput;->i:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v1

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v7

    if-eq v1, v7, :cond_4

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    if-ne v2, v1, :cond_6

    :cond_5
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v1

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v7

    if-ne v1, v7, :cond_7

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v3

    if-ne v1, v3, :cond_7

    :cond_6
    new-instance v1, Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v2, v10, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 v3, v22

    iget-object v3, v3, Landroidx/compose/foundation/text/TextDelegate;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v10, Landroidx/compose/ui/text/TextLayoutInput;->c:Ljava/util/List;

    iget v5, v10, Landroidx/compose/ui/text/TextLayoutInput;->d:I

    iget-boolean v6, v10, Landroidx/compose/ui/text/TextLayoutInput;->e:Z

    iget v7, v10, Landroidx/compose/ui/text/TextLayoutInput;->f:I

    iget-object v8, v10, Landroidx/compose/ui/text/TextLayoutInput;->g:Landroidx/compose/ui/unit/Density;

    iget-object v9, v10, Landroidx/compose/ui/text/TextLayoutInput;->h:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v10, v10, Landroidx/compose/ui/text/TextLayoutInput;->i:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/4 v13, 0x0

    move-object v0, v11

    move-object/from16 v15, v20

    move-object/from16 v29, v21

    move-wide/from16 v11, p3

    invoke-direct/range {v1 .. v13}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v2, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    invoke-static {v2}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    move-result v2

    iget v0, v0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    invoke-static {v0}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    move-result v0

    int-to-long v2, v2

    shl-long v2, v2, v18

    int-to-long v4, v0

    and-long v4, v4, v16

    or-long/2addr v2, v4

    sget-object v0, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v11, v12, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->d(JJ)J

    move-result-wide v26

    new-instance v23, Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v0, v15, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    const/16 v28, 0x0

    move-object/from16 v25, v0

    move-object/from16 v24, v1

    invoke-direct/range {v23 .. v28}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v23

    goto/16 :goto_7

    :cond_7
    :goto_2
    move-wide/from16 v11, p3

    move-object/from16 v15, v20

    move-object/from16 v29, v21

    move-object/from16 v3, v22

    goto :goto_3

    :cond_8
    move-wide/from16 v11, p3

    move-object v15, v1

    move-object/from16 v29, v4

    const/16 v19, 0x0

    :goto_3
    invoke-virtual {v3, v9}, Landroidx/compose/foundation/text/TextDelegate;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v0

    if-nez v5, :cond_9

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    if-ne v2, v1, :cond_a

    :cond_9
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->d(J)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v1

    goto :goto_4

    :cond_a
    const v1, 0x7fffffff

    :goto_4
    if-nez v5, :cond_b

    sget-object v4, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    if-ne v2, v4, :cond_b

    const/16 v24, 0x1

    goto :goto_5

    :cond_b
    move/from16 v24, v6

    :goto_5
    const-string v2, "layoutIntrinsics must be called first"

    if-ne v0, v1, :cond_c

    goto :goto_6

    :cond_c
    iget-object v4, v3, Landroidx/compose/foundation/text/TextDelegate;->j:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()F

    move-result v4

    invoke-static {v4}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    move-result v4

    invoke-static {v4, v0, v1}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v1

    :goto_6
    new-instance v32, Landroidx/compose/ui/text/MultiParagraph;

    iget-object v0, v3, Landroidx/compose/foundation/text/TextDelegate;->j:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz v0, :cond_10

    sget-object v2, Landroidx/compose/ui/unit/Constraints;->b:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2, v1, v2, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    move-result-wide v22

    iget v1, v3, Landroidx/compose/foundation/text/TextDelegate;->f:I

    const/16 v26, 0x0

    move-object/from16 v21, v0

    move/from16 v25, v1

    move-object/from16 v20, v32

    invoke-direct/range {v20 .. v26}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v20

    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    invoke-static {v1}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    move-result v1

    iget v2, v0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    invoke-static {v2}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    move-result v2

    int-to-long v4, v1

    shl-long v4, v4, v18

    int-to-long v1, v2

    and-long v1, v1, v16

    or-long/2addr v1, v4

    sget-object v4, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->d(JJ)J

    move-result-wide v33

    new-instance v30, Landroidx/compose/ui/text/TextLayoutResult;

    new-instance v1, Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v2, v3, Landroidx/compose/foundation/text/TextDelegate;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v3, Landroidx/compose/foundation/text/TextDelegate;->b:Landroidx/compose/ui/text/TextStyle;

    move-object v5, v4

    iget-object v4, v3, Landroidx/compose/foundation/text/TextDelegate;->i:Ljava/util/List;

    move-object v6, v5

    iget v5, v3, Landroidx/compose/foundation/text/TextDelegate;->c:I

    move-object v7, v6

    iget-boolean v6, v3, Landroidx/compose/foundation/text/TextDelegate;->e:Z

    move-object v8, v7

    iget v7, v3, Landroidx/compose/foundation/text/TextDelegate;->f:I

    move-object v10, v8

    iget-object v8, v3, Landroidx/compose/foundation/text/TextDelegate;->g:Landroidx/compose/ui/unit/Density;

    iget-object v3, v3, Landroidx/compose/foundation/text/TextDelegate;->h:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/4 v13, 0x0

    move-object/from16 v36, v10

    move-object v10, v3

    move-object/from16 v3, v36

    invoke-direct/range {v1 .. v13}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v35, 0x0

    move-object/from16 v32, v0

    move-object/from16 v31, v1

    invoke-direct/range {v30 .. v35}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v30

    :goto_7
    new-instance v1, Lkotlin/Triple;

    iget-wide v2, v0, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    shr-long v4, v2, v18

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    and-long v2, v2, v16

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v4, v2, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lkotlin/Triple;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, v1, Lkotlin/Triple;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v1, v1, Lkotlin/Triple;->d:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-object/from16 v1, v29

    if-eqz v1, :cond_d

    iget-object v15, v1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->c:Landroidx/compose/ui/layout/LayoutCoordinates;

    move-object v6, v15

    goto :goto_8

    :cond_d
    move-object/from16 v6, v19

    :goto_8
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text/TextLayoutResultProxy;-><init>(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v14, Landroidx/compose/foundation/text/LegacyTextFieldState;->i:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, v14, Landroidx/compose/foundation/text/LegacyTextFieldState;->p:Z

    move-object/from16 v3, p0

    iget-object v5, v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->c:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v6, v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->d:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v14, v5, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    move-object/from16 v3, p0

    :goto_9
    iget v5, v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->f:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    iget-object v5, v4, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v5, v1}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    move-result v8

    goto :goto_a

    :cond_f
    move v8, v1

    :goto_a
    iget-object v1, v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->e:Landroidx/compose/ui/unit/Density;

    invoke-interface {v1, v8}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v1

    iget-object v3, v14, Landroidx/compose/foundation/text/LegacyTextFieldState;->g:Landroidx/compose/runtime/MutableState;

    new-instance v5, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v5, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    iget v3, v4, Landroidx/compose/ui/text/TextLayoutResult;->d:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt;->b:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    iget v3, v4, Landroidx/compose/ui/text/TextLayoutResult;->e:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v4}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lbp;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lbp;-><init>(I)V

    move-object/from16 v4, p1

    invoke-interface {v4, v0, v2, v1, v3}, Landroidx/compose/ui/layout/MeasureScope;->V0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {v2}, Lmd;->k(Ljava/lang/String;)V

    return-object v19

    :cond_11
    invoke-static {v2}, Lmd;->k(Ljava/lang/String;)V

    return-object v19

    :catchall_0
    move-exception v0

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0
.end method

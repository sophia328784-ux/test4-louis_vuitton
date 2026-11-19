.class public final Landroidx/compose/ui/text/TextMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/TextMeasurer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/text/TextMeasurer;",
        "",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "defaultFontFamilyResolver",
        "Landroidx/compose/ui/unit/Density;",
        "defaultDensity",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "defaultLayoutDirection",
        "",
        "cacheSize",
        "<init>",
        "(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;I)V",
        "Companion",
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


# static fields
.field public static final e:Landroidx/compose/ui/text/TextMeasurer$Companion;


# instance fields
.field public final a:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final b:Landroidx/compose/ui/unit/Density;

.field public final c:Landroidx/compose/ui/unit/LayoutDirection;

.field public final d:Landroidx/compose/ui/text/TextLayoutCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/TextMeasurer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/TextMeasurer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/TextMeasurer;->e:Landroidx/compose/ui/text/TextMeasurer$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/TextMeasurer;->a:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object p2, p0, Landroidx/compose/ui/text/TextMeasurer;->b:Landroidx/compose/ui/unit/Density;

    iput-object p3, p0, Landroidx/compose/ui/text/TextMeasurer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    if-lez p4, :cond_0

    new-instance p1, Landroidx/compose/ui/text/TextLayoutCache;

    invoke-direct {p1, p4}, Landroidx/compose/ui/text/TextLayoutCache;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/text/TextMeasurer;->d:Landroidx/compose/ui/text/TextLayoutCache;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/16 p6, 0x8

    and-int/2addr p5, p6

    if-eqz p5, :cond_0

    move p4, p6

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/TextMeasurer;-><init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;I)V

    return-void
.end method

.method public static a(Landroidx/compose/ui/text/TextMeasurer;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JI)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/text/style/TextOverflow;->b:I

    const/16 v15, 0x20

    and-int/lit8 v2, p5, 0x20

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    invoke-static {v3, v3, v3, v3, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p3

    :goto_0
    iget-object v10, v0, Landroidx/compose/ui/text/TextMeasurer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v9, v0, Landroidx/compose/ui/text/TextMeasurer;->b:Landroidx/compose/ui/unit/Density;

    iget-object v11, v0, Landroidx/compose/ui/text/TextMeasurer;->a:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v3

    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v6, p1

    invoke-direct {v3, v6, v4, v5, v4}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iget-object v0, v0, Landroidx/compose/ui/text/TextMeasurer;->d:Landroidx/compose/ui/text/TextLayoutCache;

    move v6, v2

    new-instance v2, Landroidx/compose/ui/text/TextLayoutInput;

    const/4 v14, 0x0

    move v7, v6

    const v6, 0x7fffffff

    move/from16 v16, v7

    const/4 v7, 0x1

    move/from16 v17, v15

    move/from16 v15, v16

    move-object/from16 v16, v4

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v14}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v0, :cond_3

    new-instance v3, Landroidx/compose/ui/text/CacheTextLayoutInput;

    invoke-direct {v3, v2}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    iget-object v4, v0, Landroidx/compose/ui/text/TextLayoutCache;->a:Landroidx/collection/LruCache;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/TextLayoutResult;

    :goto_1
    move-object v4, v3

    goto :goto_2

    :cond_1
    iget-object v4, v0, Landroidx/compose/ui/text/TextLayoutCache;->b:Landroidx/compose/ui/text/CacheTextLayoutInput;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/compose/ui/text/TextLayoutCache;->c:Landroidx/compose/ui/text/TextLayoutResult;

    goto :goto_1

    :goto_2
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, v4, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v3, v3, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v3}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_3
    move-object/from16 v4, v16

    :cond_4
    const-wide v5, 0xffffffffL

    if-eqz v4, :cond_5

    iget-object v0, v4, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    invoke-static {v1}, Landroidx/compose/ui/text/ParagraphKt;->b(F)I

    move-result v1

    iget v0, v0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    invoke-static {v0}, Landroidx/compose/ui/text/ParagraphKt;->b(F)I

    move-result v0

    int-to-long v7, v1

    shl-long v7, v7, v17

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v7

    sget-object v3, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v12, v13, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->d(JJ)J

    move-result-wide v0

    new-instance v3, Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    const/4 v5, 0x0

    move-wide/from16 p3, v0

    move-object/from16 p1, v2

    move-object/from16 p0, v3

    move-object/from16 p2, v4

    move-object/from16 p5, v5

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    return-object v0

    :cond_5
    sget-object v3, Landroidx/compose/ui/text/TextMeasurer;->e:Landroidx/compose/ui/text/TextMeasurer$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Landroidx/compose/ui/text/TextLayoutInput;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v2, Landroidx/compose/ui/text/TextLayoutInput;->h:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    new-instance v8, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    iget-object v4, v2, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v7, v2, Landroidx/compose/ui/text/TextLayoutInput;->c:Ljava/util/List;

    iget-object v9, v2, Landroidx/compose/ui/text/TextLayoutInput;->g:Landroidx/compose/ui/unit/Density;

    iget-object v10, v2, Landroidx/compose/ui/text/TextLayoutInput;->i:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 p2, v3

    move-object/from16 p1, v4

    move-object/from16 p3, v7

    move-object/from16 p0, v8

    move-object/from16 p4, v9

    move-object/from16 p5, v10

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    iget-wide v3, v2, Landroidx/compose/ui/text/TextLayoutInput;->j:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v7

    iget v9, v2, Landroidx/compose/ui/text/TextLayoutInput;->f:I

    iget-boolean v10, v2, Landroidx/compose/ui/text/TextLayoutInput;->e:Z

    if-nez v10, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    if-ne v9, v11, :cond_6

    goto :goto_4

    :cond_6
    sget v11, Landroidx/compose/ui/text/style/TextOverflow;->e:I

    if-ne v9, v11, :cond_7

    goto :goto_4

    :cond_7
    sget v11, Landroidx/compose/ui/text/style/TextOverflow;->f:I

    if-ne v9, v11, :cond_9

    :cond_8
    :goto_4
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->d(J)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v11

    goto :goto_5

    :cond_9
    const v11, 0x7fffffff

    :goto_5
    if-nez v10, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    if-ne v9, v1, :cond_a

    goto :goto_6

    :cond_a
    sget v1, Landroidx/compose/ui/text/style/TextOverflow;->e:I

    if-ne v9, v1, :cond_b

    goto :goto_6

    :cond_b
    sget v1, Landroidx/compose/ui/text/style/TextOverflow;->f:I

    if-ne v9, v1, :cond_c

    :goto_6
    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    iget v1, v2, Landroidx/compose/ui/text/TextLayoutInput;->d:I

    :goto_7
    if-ne v7, v11, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v8}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()F

    move-result v9

    invoke-static {v9}, Landroidx/compose/ui/text/ParagraphKt;->b(F)I

    move-result v9

    invoke-static {v9, v7, v11}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v11

    :goto_8
    new-instance v7, Landroidx/compose/ui/text/MultiParagraph;

    sget-object v9, Landroidx/compose/ui/unit/Constraints;->b:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v11, v15, v10}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    move-result-wide v9

    iget v12, v2, Landroidx/compose/ui/text/TextLayoutInput;->f:I

    const/4 v13, 0x0

    move v11, v1

    invoke-direct/range {v7 .. v13}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Landroidx/compose/ui/text/TextLayoutResult;

    iget v8, v7, Landroidx/compose/ui/text/MultiParagraph;->d:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    iget v9, v7, Landroidx/compose/ui/text/MultiParagraph;->e:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-int v9, v9

    int-to-long v10, v8

    shl-long v10, v10, v17

    int-to-long v8, v9

    and-long/2addr v5, v8

    or-long/2addr v5, v10

    sget-object v8, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->d(JJ)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move-object/from16 p2, v7

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v0, :cond_f

    iget-object v3, v0, Landroidx/compose/ui/text/TextLayoutCache;->a:Landroidx/collection/LruCache;

    if-eqz v3, :cond_e

    new-instance v0, Landroidx/compose/ui/text/CacheTextLayoutInput;

    invoke-direct {v0, v2}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    invoke-virtual {v3, v0, v1}, Landroidx/collection/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_e
    new-instance v3, Landroidx/compose/ui/text/CacheTextLayoutInput;

    invoke-direct {v3, v2}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    iput-object v3, v0, Landroidx/compose/ui/text/TextLayoutCache;->b:Landroidx/compose/ui/text/CacheTextLayoutInput;

    iput-object v1, v0, Landroidx/compose/ui/text/TextLayoutCache;->c:Landroidx/compose/ui/text/TextLayoutResult;

    :cond_f
    return-object v1
.end method

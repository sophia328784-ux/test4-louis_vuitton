.class public final Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/designkit/ui/theme/LVColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Core"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008b\u0002\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "loud",
        "strong",
        "sensible",
        "soft",
        "low",
        "product",
        "faint",
        "silent",
        "interactive",
        "brand",
        "positive",
        "negative",
        "orderOnBehalf",
        "invertLoud",
        "invertProduct",
        "invertStrong",
        "invertSensible",
        "invertSoft",
        "invertLow",
        "invertFaint",
        "invertSilent",
        "invertInteractive",
        "invertBrand",
        "invertPositive",
        "invertNegative",
        "invertOrderOnBehalf",
        "<init>",
        "(JJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:J

.field public final p:J

.field public final q:J

.field public final r:J

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:J

.field public final w:J

.field public final x:J

.field public final y:J

.field public final z:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 41

    move/from16 v0, p53

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->b:J

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    sget v3, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v3, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->d:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    sget v5, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v5, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->e:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    sget v7, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v7, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->f:J

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    sget v9, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v9, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->g:J

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p9

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_5

    sget v11, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v11, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->h:J

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p11

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    sget v13, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v13, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->i:J

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p13

    :goto_6
    and-int/lit16 v15, v0, 0x80

    if-eqz v15, :cond_7

    sget v15, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v15, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->j:J

    goto :goto_7

    :cond_7
    move-wide/from16 v15, p15

    :goto_7
    move-wide/from16 v17, v1

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    sget v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->a:J

    goto :goto_8

    :cond_8
    move-wide/from16 v1, p17

    :goto_8
    move-wide/from16 p1, v1

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    sget v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->k:J

    goto :goto_9

    :cond_9
    move-wide/from16 v1, p19

    :goto_9
    move-wide/from16 p3, v1

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    sget v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->m:J

    goto :goto_a

    :cond_a
    move-wide/from16 v1, p21

    :goto_a
    move-wide/from16 p5, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    sget v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->o:J

    goto :goto_b

    :cond_b
    move-wide/from16 v1, p23

    :goto_b
    move-wide/from16 p7, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    sget v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->q:J

    goto :goto_c

    :cond_c
    move-wide/from16 v1, p25

    :goto_c
    move-wide/from16 p9, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    sget v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->i:J

    goto :goto_d

    :cond_d
    move-wide/from16 v1, p27

    :goto_d
    move-wide/from16 p11, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    sget v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->h:J

    goto :goto_e

    :cond_e
    move-wide/from16 v1, p29

    :goto_e
    const v19, 0x8000

    and-int v19, v0, v19

    if-eqz v19, :cond_f

    sget v19, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v19, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->f:J

    goto :goto_f

    :cond_f
    move-wide/from16 v19, p31

    :goto_f
    const/high16 v21, 0x10000

    and-int v21, v0, v21

    if-eqz v21, :cond_10

    sget v21, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v21, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->e:J

    goto :goto_10

    :cond_10
    move-wide/from16 v21, p33

    :goto_10
    const/high16 v23, 0x20000

    and-int v23, v0, v23

    if-eqz v23, :cond_11

    sget v23, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v23, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->d:J

    goto :goto_11

    :cond_11
    move-wide/from16 v23, p35

    :goto_11
    const/high16 v25, 0x40000

    and-int v25, v0, v25

    if-eqz v25, :cond_12

    sget v25, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v25, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->c:J

    goto :goto_12

    :cond_12
    move-wide/from16 v25, p37

    :goto_12
    const/high16 v27, 0x80000

    and-int v27, v0, v27

    if-eqz v27, :cond_13

    sget v27, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v27, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->b:J

    goto :goto_13

    :cond_13
    move-wide/from16 v27, p39

    :goto_13
    const/high16 v29, 0x100000

    and-int v29, v0, v29

    if-eqz v29, :cond_14

    sget v29, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v29, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->a:J

    goto :goto_14

    :cond_14
    move-wide/from16 v29, p41

    :goto_14
    const/high16 v31, 0x200000

    and-int v31, v0, v31

    if-eqz v31, :cond_15

    sget v31, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v31, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->j:J

    goto :goto_15

    :cond_15
    move-wide/from16 v31, p43

    :goto_15
    const/high16 v33, 0x400000

    and-int v33, v0, v33

    if-eqz v33, :cond_16

    sget v33, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v33, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->l:J

    goto :goto_16

    :cond_16
    move-wide/from16 v33, p45

    :goto_16
    const/high16 v35, 0x800000

    and-int v35, v0, v35

    if-eqz v35, :cond_17

    sget v35, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v35, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->n:J

    goto :goto_17

    :cond_17
    move-wide/from16 v35, p47

    :goto_17
    const/high16 v37, 0x1000000

    and-int v37, v0, v37

    if-eqz v37, :cond_18

    sget v37, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v37, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->p:J

    goto :goto_18

    :cond_18
    move-wide/from16 v37, p49

    :goto_18
    const/high16 v39, 0x2000000

    and-int v0, v0, v39

    if-eqz v0, :cond_19

    sget v0, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->s:I

    sget-wide v39, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->r:J

    goto :goto_19

    :cond_19
    move-wide/from16 v39, p51

    :goto_19
    const/4 v0, 0x0

    move-wide/from16 p18, p1

    move-wide/from16 p20, p3

    move-wide/from16 p22, p5

    move-wide/from16 p24, p7

    move-wide/from16 p26, p9

    move-wide/from16 p28, p11

    move-object/from16 p54, v0

    move-wide/from16 p30, v1

    move-wide/from16 p4, v3

    move-wide/from16 p6, v5

    move-wide/from16 p8, v7

    move-wide/from16 p10, v9

    move-wide/from16 p12, v11

    move-wide/from16 p14, v13

    move-wide/from16 p16, v15

    move-wide/from16 p2, v17

    move-wide/from16 p32, v19

    move-wide/from16 p34, v21

    move-wide/from16 p36, v23

    move-wide/from16 p38, v25

    move-wide/from16 p40, v27

    move-wide/from16 p42, v29

    move-wide/from16 p44, v31

    move-wide/from16 p46, v33

    move-wide/from16 p48, v35

    move-wide/from16 p50, v37

    move-wide/from16 p52, v39

    move-object/from16 p1, p0

    invoke-direct/range {p1 .. p54}, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->a:J

    .line 388
    iput-wide p3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->b:J

    .line 389
    iput-wide p5, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->c:J

    .line 390
    iput-wide p7, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->d:J

    .line 391
    iput-wide p9, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->e:J

    .line 392
    iput-wide p11, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->f:J

    .line 393
    iput-wide p13, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->g:J

    move-wide p1, p15

    .line 394
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->h:J

    move-wide/from16 p1, p17

    .line 395
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->i:J

    move-wide/from16 p1, p19

    .line 396
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->j:J

    move-wide/from16 p1, p21

    .line 397
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->k:J

    move-wide/from16 p1, p23

    .line 398
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->l:J

    move-wide/from16 p1, p25

    .line 399
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->m:J

    move-wide/from16 p1, p27

    .line 400
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->n:J

    move-wide/from16 p1, p29

    .line 401
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->o:J

    move-wide/from16 p1, p31

    .line 402
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->p:J

    move-wide/from16 p1, p33

    .line 403
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->q:J

    move-wide/from16 p1, p35

    .line 404
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->r:J

    move-wide/from16 p1, p37

    .line 405
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->s:J

    move-wide/from16 p1, p39

    .line 406
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->t:J

    move-wide/from16 p1, p41

    .line 407
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->u:J

    move-wide/from16 p1, p43

    .line 408
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->v:J

    move-wide/from16 p1, p45

    .line 409
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->w:J

    move-wide/from16 p1, p47

    .line 410
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->x:J

    move-wide/from16 p1, p49

    .line 411
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->y:J

    move-wide/from16 p1, p51

    .line 412
    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->z:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->a:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->b:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->c:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->d:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->d:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->e:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->f:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->f:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->g:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->g:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->h:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->h:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->i:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->i:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->j:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->j:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->k:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->k:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->l:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->l:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->m:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->m:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->n:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->n:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->o:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->o:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->p:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->p:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->q:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->q:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->r:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->r:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->s:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->s:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->t:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->t:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->u:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->u:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->v:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->v:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->w:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->w:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->x:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->x:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->y:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->y:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->z:J

    iget-wide p0, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->z:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result p0

    if-nez p0, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->c:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->d:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->e:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->f:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->g:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->h:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->i:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->j:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->k:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->l:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->m:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->n:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->o:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->p:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->q:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->r:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->s:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->t:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->u:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->v:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->w:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->x:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->y:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->z:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 28

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->b:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->c:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->d:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->e:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->f:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->g:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->h:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->i:J

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->j:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->k:J

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->l:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->m:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->n:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v16, v14

    iget-wide v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->o:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v15

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->p:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v18, v14

    iget-wide v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->q:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v15

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->r:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v20, v14

    iget-wide v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->s:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v15

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->t:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v22, v14

    iget-wide v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->u:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v23, v15

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->v:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v24, v14

    iget-wide v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->w:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v25, v15

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->x:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v26, v14

    iget-wide v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->y:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v27, v15

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->z:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    const-string v14, ", strong="

    const-string v15, ", sensible="

    move-object/from16 p0, v0

    const-string v0, "Core(loud="

    invoke-static {v0, v1, v14, v2, v15}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soft="

    const-string v2, ", low="

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", product="

    const-string v2, ", faint="

    invoke-static {v0, v5, v1, v6, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", silent="

    const-string v2, ", interactive="

    invoke-static {v0, v7, v1, v8, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", brand="

    const-string v2, ", positive="

    invoke-static {v0, v9, v1, v10, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", negative="

    const-string v2, ", orderOnBehalf="

    invoke-static {v0, v11, v1, v12, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", invertLoud="

    const-string v2, ", invertProduct="

    move-object/from16 v3, v16

    move-object/from16 v15, v17

    invoke-static {v0, v15, v1, v3, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", invertStrong="

    const-string v2, ", invertSensible="

    move-object/from16 v3, v18

    move-object/from16 v15, v19

    invoke-static {v0, v15, v1, v3, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", invertSoft="

    const-string v2, ", invertLow="

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    invoke-static {v0, v15, v1, v3, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", invertFaint="

    const-string v2, ", invertSilent="

    move-object/from16 v3, v22

    move-object/from16 v15, v23

    invoke-static {v0, v15, v1, v3, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", invertInteractive="

    const-string v2, ", invertBrand="

    move-object/from16 v3, v24

    move-object/from16 v15, v25

    invoke-static {v0, v15, v1, v3, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", invertPositive="

    const-string v2, ", invertNegative="

    move-object/from16 v3, v26

    move-object/from16 v15, v27

    invoke-static {v0, v15, v1, v3, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", invertOrderOnBehalf="

    const-string v2, ")"

    move-object/from16 v3, p0

    invoke-static {v0, v13, v1, v3, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

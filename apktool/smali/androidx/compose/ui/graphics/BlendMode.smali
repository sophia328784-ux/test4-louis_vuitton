.class public abstract Landroidx/compose/ui/graphics/BlendMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/BlendMode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/BlendMode;",
        "",
        "Companion",
        "value",
        "",
        "ui-graphics"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final A:I

.field public static final B:I

.field public static final C:I

.field public static final a:Landroidx/compose/ui/graphics/BlendMode$Companion;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/BlendMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->b:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->c:I

    const/4 v0, 0x3

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->d:I

    const/4 v0, 0x4

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->e:I

    const/4 v0, 0x5

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->f:I

    const/4 v0, 0x6

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->g:I

    const/4 v0, 0x7

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->h:I

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->i:I

    const/16 v0, 0x9

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->j:I

    const/16 v0, 0xa

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->k:I

    const/16 v0, 0xb

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->l:I

    const/16 v0, 0xc

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->m:I

    const/16 v0, 0xd

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->n:I

    const/16 v0, 0xe

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->o:I

    const/16 v0, 0xf

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->p:I

    const/16 v0, 0x10

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->q:I

    const/16 v0, 0x11

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->r:I

    const/16 v0, 0x12

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->s:I

    const/16 v0, 0x13

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->t:I

    const/16 v0, 0x14

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->u:I

    const/16 v0, 0x15

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->v:I

    const/16 v0, 0x16

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->w:I

    const/16 v0, 0x17

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->x:I

    const/16 v0, 0x18

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->y:I

    const/16 v0, 0x19

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->z:I

    const/16 v0, 0x1a

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->A:I

    const/16 v0, 0x1b

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->B:I

    const/16 v0, 0x1c

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->C:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Clear"

    return-object p0

    :cond_0
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->b:I

    if-ne p0, v0, :cond_1

    const-string p0, "Src"

    return-object p0

    :cond_1
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->c:I

    if-ne p0, v0, :cond_2

    const-string p0, "Dst"

    return-object p0

    :cond_2
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->d:I

    if-ne p0, v0, :cond_3

    const-string p0, "SrcOver"

    return-object p0

    :cond_3
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->e:I

    if-ne p0, v0, :cond_4

    const-string p0, "DstOver"

    return-object p0

    :cond_4
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->f:I

    if-ne p0, v0, :cond_5

    const-string p0, "SrcIn"

    return-object p0

    :cond_5
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->g:I

    if-ne p0, v0, :cond_6

    const-string p0, "DstIn"

    return-object p0

    :cond_6
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->h:I

    if-ne p0, v0, :cond_7

    const-string p0, "SrcOut"

    return-object p0

    :cond_7
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->i:I

    if-ne p0, v0, :cond_8

    const-string p0, "DstOut"

    return-object p0

    :cond_8
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->j:I

    if-ne p0, v0, :cond_9

    const-string p0, "SrcAtop"

    return-object p0

    :cond_9
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->k:I

    if-ne p0, v0, :cond_a

    const-string p0, "DstAtop"

    return-object p0

    :cond_a
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->l:I

    if-ne p0, v0, :cond_b

    const-string p0, "Xor"

    return-object p0

    :cond_b
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->m:I

    if-ne p0, v0, :cond_c

    const-string p0, "Plus"

    return-object p0

    :cond_c
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->n:I

    if-ne p0, v0, :cond_d

    const-string p0, "Modulate"

    return-object p0

    :cond_d
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->o:I

    if-ne p0, v0, :cond_e

    const-string p0, "Screen"

    return-object p0

    :cond_e
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->p:I

    if-ne p0, v0, :cond_f

    const-string p0, "Overlay"

    return-object p0

    :cond_f
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->q:I

    if-ne p0, v0, :cond_10

    const-string p0, "Darken"

    return-object p0

    :cond_10
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->r:I

    if-ne p0, v0, :cond_11

    const-string p0, "Lighten"

    return-object p0

    :cond_11
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->s:I

    if-ne p0, v0, :cond_12

    const-string p0, "ColorDodge"

    return-object p0

    :cond_12
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->t:I

    if-ne p0, v0, :cond_13

    const-string p0, "ColorBurn"

    return-object p0

    :cond_13
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->u:I

    if-ne p0, v0, :cond_14

    const-string p0, "HardLight"

    return-object p0

    :cond_14
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->v:I

    if-ne p0, v0, :cond_15

    const-string p0, "Softlight"

    return-object p0

    :cond_15
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->w:I

    if-ne p0, v0, :cond_16

    const-string p0, "Difference"

    return-object p0

    :cond_16
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->x:I

    if-ne p0, v0, :cond_17

    const-string p0, "Exclusion"

    return-object p0

    :cond_17
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->y:I

    if-ne p0, v0, :cond_18

    const-string p0, "Multiply"

    return-object p0

    :cond_18
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->z:I

    if-ne p0, v0, :cond_19

    const-string p0, "Hue"

    return-object p0

    :cond_19
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->A:I

    if-ne p0, v0, :cond_1a

    const-string p0, "Saturation"

    return-object p0

    :cond_1a
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->B:I

    if-ne p0, v0, :cond_1b

    const-string p0, "Color"

    return-object p0

    :cond_1b
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->C:I

    if-ne p0, v0, :cond_1c

    const-string p0, "Luminosity"

    return-object p0

    :cond_1c
    const-string p0, "Unknown"

    return-object p0
.end method

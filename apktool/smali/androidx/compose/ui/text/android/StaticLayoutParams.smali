.class final Landroidx/compose/ui/text/android/StaticLayoutParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u00b7\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0004\u0012\u0006\u0010\u001a\u001a\u00020\u0004\u0012\u0006\u0010\u001b\u001a\u00020\u0004\u0012\u0006\u0010\u001c\u001a\u00020\u0004\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/ui/text/android/StaticLayoutParams;",
        "",
        "",
        "text",
        "",
        "start",
        "end",
        "Landroid/text/TextPaint;",
        "paint",
        "width",
        "Landroid/text/TextDirectionHeuristic;",
        "textDir",
        "Landroid/text/Layout$Alignment;",
        "alignment",
        "maxLines",
        "Landroid/text/TextUtils$TruncateAt;",
        "ellipsize",
        "ellipsizedWidth",
        "",
        "lineSpacingMultiplier",
        "lineSpacingExtra",
        "justificationMode",
        "",
        "includePadding",
        "useFallbackLineSpacing",
        "breakStrategy",
        "lineBreakStyle",
        "lineBreakWordStyle",
        "hyphenationFrequency",
        "",
        "leftIndents",
        "rightIndents",
        "<init>",
        "(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V",
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


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Landroid/text/TextPaint;

.field public final e:I

.field public final f:Landroid/text/TextDirectionHeuristic;

.field public final g:Landroid/text/Layout$Alignment;

.field public final h:I

.field public final i:Landroid/text/TextUtils$TruncateAt;

.field public final j:I

.field public final k:F

.field public final l:F

.field public final m:I

.field public final n:Z

.field public final o:Z

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:[I

.field public final u:[I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->a:Ljava/lang/CharSequence;

    iput p2, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->b:I

    iput p3, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->c:I

    iput-object p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->d:Landroid/text/TextPaint;

    iput p5, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->e:I

    iput-object p6, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->f:Landroid/text/TextDirectionHeuristic;

    iput-object p7, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->g:Landroid/text/Layout$Alignment;

    iput p8, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->h:I

    iput-object p9, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->i:Landroid/text/TextUtils$TruncateAt;

    iput p10, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->j:I

    iput p11, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->k:F

    iput p12, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->l:F

    iput p13, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->m:I

    move p4, p14

    iput-boolean p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->n:Z

    move p4, p15

    iput-boolean p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->o:Z

    move/from16 p4, p16

    iput p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->p:I

    move/from16 p4, p17

    iput p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->q:I

    move/from16 p4, p18

    iput p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->r:I

    move/from16 p4, p19

    iput p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->s:I

    move-object/from16 p4, p20

    iput-object p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->t:[I

    move-object/from16 p4, p21

    iput-object p4, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->u:[I

    const/4 p0, 0x1

    const/4 p4, 0x0

    if-ltz p2, :cond_0

    if-gt p2, p3, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    move p2, p4

    :goto_0
    if-nez p2, :cond_1

    const-string p2, "invalid start value"

    invoke-static {p2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p3, :cond_2

    if-gt p3, p1, :cond_2

    move p1, p0

    goto :goto_1

    :cond_2
    move p1, p4

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "invalid end value"

    invoke-static {p1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_3
    if-ltz p8, :cond_4

    move p1, p0

    goto :goto_2

    :cond_4
    move p1, p4

    :goto_2
    if-nez p1, :cond_5

    const-string p1, "invalid maxLines value"

    invoke-static {p1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_5
    if-ltz p5, :cond_6

    move p1, p0

    goto :goto_3

    :cond_6
    move p1, p4

    :goto_3
    if-nez p1, :cond_7

    const-string p1, "invalid width value"

    invoke-static {p1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_7
    if-ltz p10, :cond_8

    move p1, p0

    goto :goto_4

    :cond_8
    move p1, p4

    :goto_4
    if-nez p1, :cond_9

    const-string p1, "invalid ellipsizedWidth value"

    invoke-static {p1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_9
    const/4 p1, 0x0

    cmpl-float p1, p11, p1

    if-ltz p1, :cond_a

    goto :goto_5

    :cond_a
    move p0, p4

    :goto_5
    if-nez p0, :cond_b

    const-string p0, "invalid lineSpacingMultiplier value"

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    and-int/lit8 v0, p22, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    goto :goto_1

    :cond_0
    move/from16 v3, p2

    goto :goto_0

    .line 144
    :goto_1
    invoke-direct/range {v1 .. v22}, Landroidx/compose/ui/text/android/StaticLayoutParams;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V

    return-void
.end method

.class public abstract Landroidx/compose/ui/text/android/StaticLayoutFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/StaticLayoutFactory;",
        "",
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
.field public static final a:Landroidx/compose/ui/text/android/StaticLayoutFactory23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory23;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a:Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)Landroid/text/StaticLayout;
    .locals 22

    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutParams;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    invoke-direct/range {v0 .. v21}, Landroidx/compose/ui/text/android/StaticLayoutParams;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V

    sget-object v1, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a:Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->d:Landroid/text/TextPaint;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->e:I

    iget-object v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->a:Ljava/lang/CharSequence;

    iget v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->b:I

    iget v5, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->c:I

    invoke-static {v3, v4, v5, v1, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->f:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->g:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->h:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->i:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->j:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->l:F

    iget v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->k:F

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    iget-boolean v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->n:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->p:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->s:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->t:[I

    iget-object v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->u:[I

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->m:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    iget-boolean v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->o:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    iget v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->q:I

    iget v0, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->r:I

    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory33;->b(Landroid/text/StaticLayout$Builder;II)V

    :cond_0
    const/16 v0, 0x23

    if-lt v2, v0, :cond_1

    invoke-static {v1}, Landroidx/compose/ui/text/android/StaticLayoutFactory35;->a(Landroid/text/StaticLayout$Builder;)V

    :cond_1
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

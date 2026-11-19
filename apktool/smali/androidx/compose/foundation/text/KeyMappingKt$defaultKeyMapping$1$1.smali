.class public final Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/KeyMappingKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1$1",
        "Landroidx/compose/foundation/text/KeyMapping;",
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
.field public final synthetic a:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1$1;->a:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 7

    invoke-static {p1}, Landroidx/compose/foundation/text/KeyModifiersKt;->a(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v1

    sget-object v3, Landroidx/compose/ui/input/key/Key;->a:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/input/key/Key;->t:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    sget-object v1, Landroidx/compose/foundation/text/KeyModifiers;->a:Landroidx/compose/foundation/text/KeyModifiers$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->d:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->g:I

    if-ne v0, v1, :cond_2

    :goto_0
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_3

    :cond_2
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->c:I

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->f:I

    if-ne v0, v1, :cond_4

    :goto_1
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_3

    :cond_4
    move-object v0, v4

    goto :goto_3

    :cond_5
    sget-wide v5, Landroidx/compose/ui/input/key/Key;->s:J

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v3

    if-nez v3, :cond_6

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->F:J

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_6
    sget-object v1, Landroidx/compose/foundation/text/KeyModifiers;->a:Landroidx/compose/foundation/text/KeyModifiers$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->d:I

    if-ne v0, v1, :cond_8

    goto :goto_2

    :cond_8
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->c:I

    if-ne v0, v1, :cond_9

    goto :goto_2

    :cond_9
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->f:I

    if-ne v0, v1, :cond_4

    :goto_2
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    :goto_3
    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    invoke-static {p1}, Landroidx/compose/foundation/text/KeyModifiersKt;->a(Landroid/view/KeyEvent;)I

    move-result v0

    sget-object v1, Landroidx/compose/foundation/text/KeyModifiers;->a:Landroidx/compose/foundation/text/KeyModifiers$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->f:I

    if-ne v0, v1, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v0

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->g:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_11

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->I:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->h:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_10

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->J:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->e:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_f

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->G:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->f:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_e

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->H:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_e
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_c

    :cond_f
    :goto_4
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_c

    :cond_10
    :goto_5
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_c

    :cond_11
    :goto_6
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_c

    :cond_12
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->c:I

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v0

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->g:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->I:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->h:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_1b

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->J:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_9

    :cond_14
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->e:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_1a

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->G:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->f:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_19

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->H:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_7

    :cond_16
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->l:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_c

    :cond_17
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->u:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_c

    :cond_18
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->C:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_c

    :cond_19
    :goto_7
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_c

    :cond_1a
    :goto_8
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_c

    :cond_1b
    :goto_9
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_c

    :cond_1c
    :goto_a
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_c

    :cond_1d
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->d:I

    if-ne v0, v1, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v0

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->w:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_20

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->K:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_b

    :cond_1e
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->x:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->L:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1f
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_c

    :cond_20
    :goto_b
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_c

    :cond_21
    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->b:I

    if-ne v0, v1, :cond_22

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v0

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->u:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    :cond_22
    :goto_c
    if-nez v4, :cond_23

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1$1;->a:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->a(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    move-result-object p0

    return-object p0

    :cond_23
    return-object v4
.end method

.class public final Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1",
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
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 3

    invoke-static {p1}, Landroidx/compose/foundation/text/KeyModifiersKt;->a(Landroid/view/KeyEvent;)I

    move-result v0

    sget-object v1, Landroidx/compose/foundation/text/KeyModifiers;->a:Landroidx/compose/foundation/text/KeyModifiers$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/foundation/text/KeyModifiers;->d:I

    iget p0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->a:I

    or-int v2, p0, v1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide p0

    sget-object v0, Landroidx/compose/ui/input/key/Key;->a:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->p:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_32

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_0
    if-ne v0, p0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide p0

    sget-object v0, Landroidx/compose/ui/input/key/Key;->a:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->k:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->y:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->O:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->m:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->n:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_3
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->j:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_4
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->o:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_5
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->p:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_32

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_7
    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide p0

    sget-object v0, Landroidx/compose/ui/input/key/Key;->a:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->g:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_18

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->I:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_8

    :cond_8
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->h:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_17

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->J:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_7

    :cond_9
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->e:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_16

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->G:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_6

    :cond_a
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->f:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_15

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->H:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->D:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_14

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->M:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->E:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_13

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->N:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->w:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_12

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->K:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2

    :cond_e
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->x:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_11

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->L:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1

    :cond_f
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->y:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_10

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->O:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_32

    :cond_10
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_11
    :goto_1
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_12
    :goto_2
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_13
    :goto_3
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_14
    :goto_4
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_15
    :goto_5
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_16
    :goto_6
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_17
    :goto_7
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_18
    :goto_8
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_19
    if-nez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide p0

    sget-object v0, Landroidx/compose/ui/input/key/Key;->a:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->g:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_31

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->I:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_11

    :cond_1a
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->h:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_30

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->J:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_10

    :cond_1b
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->e:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->G:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_f

    :cond_1c
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->f:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->H:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_e

    :cond_1d
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->i:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->CENTER:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_1e
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->D:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->M:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_d

    :cond_1f
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->E:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->N:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_c

    :cond_20
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->w:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->K:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_b

    :cond_21
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->x:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->L:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_a

    :cond_22
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->s:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_29

    sget-wide v0, Landroidx/compose/ui/input/key/Key;->F:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_9

    :cond_23
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->t:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_24
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->u:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_25
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->B:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_26
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->z:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_27
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->A:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_28
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->q:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_32

    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_29
    :goto_9
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2a
    :goto_a
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2b
    :goto_b
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2c
    :goto_c
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2d
    :goto_d
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2e
    :goto_e
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_2f
    :goto_f
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_30
    :goto_10
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_31
    :goto_11
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

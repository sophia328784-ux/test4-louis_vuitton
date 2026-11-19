.class public final Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/hapticfeedback/HapticFeedback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;",
        "Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Landroid/view/View;)V",
        "ui"
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
.field public final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x6

    const/16 v7, 0x10

    if-ne p1, v0, :cond_0

    move p1, v7

    goto/16 :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->b:I

    if-ne p1, v0, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->c:I

    if-ne p1, v0, :cond_2

    move p1, v5

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->d:I

    if-ne p1, v0, :cond_3

    const/16 p1, 0x17

    goto :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->e:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x3

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    move p1, v4

    goto :goto_0

    :cond_5
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->f:I

    if-ne p1, v0, :cond_6

    move p1, v3

    goto :goto_0

    :cond_6
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->g:I

    if-ne p1, v0, :cond_7

    const/16 p1, 0x1b

    goto :goto_0

    :cond_7
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->h:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0x1a

    goto :goto_0

    :cond_8
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->i:I

    if-ne p1, v0, :cond_9

    const/16 p1, 0x9

    goto :goto_0

    :cond_9
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->j:I

    if-ne p1, v0, :cond_a

    const/16 p1, 0x16

    goto :goto_0

    :cond_a
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->k:I

    if-ne p1, v0, :cond_b

    const/16 p1, 0x15

    goto :goto_0

    :cond_b
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->l:I

    if-ne p1, v0, :cond_c

    move p1, v2

    goto :goto_0

    :cond_c
    move p1, v1

    :goto_0
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    if-ne p1, v1, :cond_d

    move v2, v1

    goto :goto_3

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x22

    if-ge v0, v8, :cond_e

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move p1, v4

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x4

    goto :goto_1

    :pswitch_2
    move p1, v6

    :cond_e
    :goto_1
    const/16 v8, 0x1e

    if-ge v0, v8, :cond_11

    const/16 v0, 0xc

    if-eq p1, v0, :cond_12

    if-eq p1, v5, :cond_10

    if-eq p1, v7, :cond_12

    if-eq p1, v3, :cond_f

    goto :goto_2

    :cond_f
    move v2, v4

    goto :goto_3

    :cond_10
    move v2, v6

    goto :goto_3

    :cond_11
    :goto_2
    move v2, p1

    :cond_12
    :goto_3
    if-ne v2, v1, :cond_13

    return-void

    :cond_13
    iget-object p0, p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->a:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

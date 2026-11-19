.class public final synthetic Lon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lon;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget p0, p0, Lon;->b:I

    const/16 v0, 0x480

    const/16 v1, 0x492

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x80

    const/16 v8, 0x100

    const/4 v9, 0x1

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p4, Ljava/lang/CharSequence;

    check-cast p5, Landroidx/compose/ui/text/TextRange;

    iget-wide v0, p5, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result p3

    iget-wide v0, p5, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result p5

    invoke-interface {p4, p3, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    const-string p5, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {p4, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const-string p5, "text/plain"

    invoke-virtual {p4, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const-string p5, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {p4, p5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p2, Lcom/sightcall/libraries/archi/nucleus/Command;

    check-cast p3, Lcom/sightcall/libraries/archi/nucleus/Action;

    check-cast p5, Lcom/sightcall/libraries/archi/nucleus/Command;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->a(Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;Lcom/sightcall/libraries/archi/nucleus/Action;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p2, Lcom/sightcall/libraries/archi/nucleus/Command;

    check-cast p3, Lcom/sightcall/libraries/archi/nucleus/Action;

    check-cast p5, Lcom/sightcall/libraries/archi/nucleus/Command;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->b(Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;Lcom/sightcall/libraries/archi/nucleus/Action;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p2, Lcom/sightcall/libraries/archi/nucleus/Command;

    check-cast p3, Lcom/sightcall/libraries/archi/nucleus/Action;

    check-cast p5, Lcom/sightcall/libraries/archi/nucleus/Command;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->c(Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;Lcom/sightcall/libraries/archi/nucleus/Action;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p2, Lcom/sightcall/libraries/archi/nucleus/Command;

    check-cast p3, Lcom/sightcall/libraries/archi/nucleus/Action;

    check-cast p5, Lcom/sightcall/libraries/archi/nucleus/Command;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->a(Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;Lcom/sightcall/libraries/archi/nucleus/Action;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    check-cast p2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    check-cast p4, Landroidx/compose/runtime/Composer;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p5, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;

    and-int/lit8 p5, p0, 0x6

    if-nez p5, :cond_2

    and-int/lit8 p5, p0, 0x8

    if-nez p5, :cond_0

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p5

    goto :goto_0

    :cond_0
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p5

    :goto_0
    if-eqz p5, :cond_1

    move v4, v5

    :cond_1
    or-int p5, p0, v4

    goto :goto_1

    :cond_2
    move p5, p0

    :goto_1
    and-int/lit8 v0, p0, 0x30

    if-nez v0, :cond_5

    and-int/lit8 v0, p0, 0x40

    if-nez v0, :cond_3

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_3
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    or-int/2addr p5, v2

    :cond_5
    and-int/lit16 p0, p0, 0x180

    if-nez p0, :cond_7

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v7, v8

    :cond_6
    or-int/2addr p5, v7

    :cond_7
    and-int/lit16 p0, p5, 0x493

    if-eq p0, v1, :cond_8

    move v6, v9

    :cond_8
    and-int/lit8 p0, p5, 0x1

    invoke-interface {p4, p0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 p0, p5, 0x3fe

    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->c(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_9
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    check-cast p2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    check-cast p4, Landroidx/compose/runtime/Composer;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p5, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;

    and-int/lit8 p5, p0, 0x6

    if-nez p5, :cond_c

    and-int/lit8 p5, p0, 0x8

    if-nez p5, :cond_a

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p5

    goto :goto_4

    :cond_a
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p5

    :goto_4
    if-eqz p5, :cond_b

    move v4, v5

    :cond_b
    or-int p5, p0, v4

    goto :goto_5

    :cond_c
    move p5, p0

    :goto_5
    and-int/lit8 v0, p0, 0x30

    if-nez v0, :cond_f

    and-int/lit8 v0, p0, 0x40

    if-nez v0, :cond_d

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :cond_d
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_e

    move v2, v3

    :cond_e
    or-int/2addr p5, v2

    :cond_f
    and-int/lit16 p0, p0, 0x180

    if-nez p0, :cond_11

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move v7, v8

    :cond_10
    or-int/2addr p5, v7

    :cond_11
    and-int/lit16 p0, p5, 0x493

    if-eq p0, v1, :cond_12

    move v6, v9

    :cond_12
    and-int/lit8 p0, p5, 0x1

    invoke-interface {p4, p0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 p0, p5, 0x3fe

    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->c(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_7

    :cond_13
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    check-cast p2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    check-cast p4, Landroidx/compose/runtime/Composer;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p5, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;

    and-int/lit8 p5, p0, 0x6

    if-nez p5, :cond_16

    and-int/lit8 p5, p0, 0x8

    if-nez p5, :cond_14

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p5

    goto :goto_8

    :cond_14
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p5

    :goto_8
    if-eqz p5, :cond_15

    move v4, v5

    :cond_15
    or-int p5, p0, v4

    goto :goto_9

    :cond_16
    move p5, p0

    :goto_9
    and-int/lit8 v0, p0, 0x30

    if-nez v0, :cond_19

    and-int/lit8 v0, p0, 0x40

    if-nez v0, :cond_17

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    :cond_17
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    if-eqz v0, :cond_18

    move v2, v3

    :cond_18
    or-int/2addr p5, v2

    :cond_19
    and-int/lit16 p0, p0, 0x180

    if-nez p0, :cond_1b

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    move v7, v8

    :cond_1a
    or-int/2addr p5, v7

    :cond_1b
    and-int/lit16 p0, p5, 0x493

    if-eq p0, v1, :cond_1c

    move v6, v9

    :cond_1c
    and-int/lit8 p0, p5, 0x1

    invoke-interface {p4, p0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 p0, p5, 0x3fe

    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->c(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_b

    :cond_1d
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Lcom/kizitonwose/calendar/core/CalendarMonth;

    check-cast p3, Lkotlin/jvm/functions/Function2;

    check-cast p4, Landroidx/compose/runtime/Composer;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p5, Lcom/kizitonwose/calendar/compose/ComposableSingletons$CalendarMonthsKt;->a:Lcom/kizitonwose/calendar/compose/ComposableSingletons$CalendarMonthsKt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 p1, p0, 0x180

    if-nez p1, :cond_1f

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    move v7, v8

    :cond_1e
    or-int/2addr p0, v7

    :cond_1f
    and-int/lit16 p1, p0, 0x481

    if-eq p1, v0, :cond_20

    move v6, v9

    :cond_20
    and-int/lit8 p1, p0, 0x1

    invoke-interface {p4, p1, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_21

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0xe

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p4, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_21
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Lcom/kizitonwose/calendar/core/CalendarMonth;

    check-cast p3, Lkotlin/jvm/functions/Function2;

    check-cast p4, Landroidx/compose/runtime/Composer;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p5, Lcom/kizitonwose/calendar/compose/ComposableSingletons$CalendarMonthsKt;->a:Lcom/kizitonwose/calendar/compose/ComposableSingletons$CalendarMonthsKt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 p1, p0, 0x180

    if-nez p1, :cond_23

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    move v7, v8

    :cond_22
    or-int/2addr p0, v7

    :cond_23
    and-int/lit16 p1, p0, 0x481

    if-eq p1, v0, :cond_24

    move v6, v9

    :cond_24
    and-int/lit8 p1, p0, 0x1

    invoke-interface {p4, p1, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_25

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0xe

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p4, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_25
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

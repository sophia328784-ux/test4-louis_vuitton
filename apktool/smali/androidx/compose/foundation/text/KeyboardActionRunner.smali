.class public final Landroidx/compose/foundation/text/KeyboardActionRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/KeyboardActionScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/foundation/text/KeyboardActionRunner;",
        "Landroidx/compose/foundation/text/KeyboardActionScope;",
        "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
        "keyboardController",
        "<init>",
        "(Landroidx/compose/ui/platform/SoftwareKeyboardController;)V",
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
.field public final a:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field public b:Landroidx/compose/foundation/text/KeyboardActions;

.field public c:Landroidx/compose/ui/focus/FocusManager;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->a:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/foundation/text/KeyboardActions;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->b:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "keyboardActions"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(I)Z
    .locals 6

    sget-object v0, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/input/ImeAction;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/foundation/text/KeyboardActions;->a:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_0
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->e:I

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/foundation/text/KeyboardActions;->b:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_1
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->i:I

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/foundation/text/KeyboardActions;->c:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_2
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->h:I

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/foundation/text/KeyboardActions;->d:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_3
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->f:I

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/foundation/text/KeyboardActions;->e:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_4
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->g:I

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/foundation/text/KeyboardActions;->f:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_5
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->d:I

    if-ne p1, v3, :cond_6

    goto :goto_0

    :cond_6
    if-nez p1, :cond_d

    :goto_0
    move-object v3, v2

    :goto_1
    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_7
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->i:I

    const-string v5, "focusManager"

    if-ne p1, v3, :cond_9

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->c:Landroidx/compose/ui/focus/FocusManager;

    if-eqz p0, :cond_8

    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->b:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/focus/FocusDirection;->c:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/focus/FocusManager;->e(I)Z

    return v4

    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_9
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->h:I

    if-ne p1, v3, :cond_b

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->c:Landroidx/compose/ui/focus/FocusManager;

    if-eqz p0, :cond_a

    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->b:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/focus/FocusDirection;->d:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/focus/FocusManager;->e(I)Z

    return v4

    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_b
    if-ne p1, v0, :cond_c

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->a:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    return v4

    :cond_c
    return v1

    :cond_d
    const-string p0, "invalid ImeAction"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v1
.end method

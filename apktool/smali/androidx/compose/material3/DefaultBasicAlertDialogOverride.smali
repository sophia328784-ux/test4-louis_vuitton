.class public final Landroidx/compose/material3/DefaultBasicAlertDialogOverride;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/BasicAlertDialogOverride;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/DefaultBasicAlertDialogOverride;",
        "Landroidx/compose/material3/BasicAlertDialogOverride;",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/material3/DefaultBasicAlertDialogOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->a:Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/material3/BasicAlertDialogOverrideScope;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const v0, 0x5d549e6c

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    or-int/2addr p2, p3

    and-int/lit8 v1, p2, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    and-int/2addr p2, v2

    invoke-virtual {v4, p2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, p1, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->a:Lkotlin/jvm/functions/Function0;

    iget-object v2, p1, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->c:Landroidx/compose/ui/window/DialogProperties;

    new-instance p2, Landroidx/compose/material3/DefaultBasicAlertDialogOverride$BasicAlertDialog$1;

    invoke-direct {p2, p1}, Landroidx/compose/material3/DefaultBasicAlertDialogOverride$BasicAlertDialog$1;-><init>(Landroidx/compose/material3/BasicAlertDialogOverrideScope;)V

    const v0, 0x455a0383

    invoke-static {v0, p2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v5, 0x180

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lrs;

    invoke-direct {v0, p0, p1, p3, v7}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

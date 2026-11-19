.class public abstract Lcom/airbnb/lottie/compose/LottieAnimatableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "lottie-compose_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieAnimatable;
    .locals 2

    const v0, 0x78ab5fda

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->w(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x245f086a

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    invoke-direct {v0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;-><init>()V

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Lcom/airbnb/lottie/compose/LottieAnimatable;

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->J()V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->J()V

    return-object v0
.end method

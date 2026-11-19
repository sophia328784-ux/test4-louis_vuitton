.class public abstract Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroidx/compose/foundation/layout/WindowInsetsKt;->c(FF)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    return-object v0
.end method

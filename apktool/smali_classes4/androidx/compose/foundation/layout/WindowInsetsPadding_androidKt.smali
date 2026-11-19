.class public abstract Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation-layout"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lo51;

.field public static final b:Lo51;

.field public static final c:Lo51;

.field public static final d:Lo51;

.field public static final e:Lo51;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo51;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lo51;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->a:Lo51;

    new-instance v0, Lo51;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lo51;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b:Lo51;

    new-instance v0, Lo51;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lo51;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->c:Lo51;

    new-instance v0, Lo51;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lo51;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->d:Lo51;

    new-instance v0, Lo51;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lo51;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->e:Lo51;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->d:Lo51;

    invoke-direct {v1, v0, v2}, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->e:Lo51;

    invoke-direct {v1, v0, v2}, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->a:Lo51;

    invoke-direct {v1, v0, v2}, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->c:Lo51;

    invoke-direct {v1, v0, v2}, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b:Lo51;

    invoke-direct {v1, v0, v2}, Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierElement;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

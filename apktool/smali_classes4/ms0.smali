.class public final synthetic Lms0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V
    .locals 0

    iput p2, p0, Lms0;->b:I

    iput-object p1, p0, Lms0;->c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lms0;->b:I

    const/4 v1, 0x2

    iget-object p0, p0, Lms0;->c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    and-int/2addr p2, v2

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result p2

    invoke-static {p2}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result p2

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/list/a;

    invoke-direct {v1, p0, p2, v0, v3}, Lcom/vuitton/android/presentation/screen/repairs/list/a;-><init>(Landroidx/fragment/app/Fragment;FFI)V

    const p0, -0x7b8e8794

    invoke-static {p0, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVDistantCareLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_2

    move v3, v2

    :cond_2
    and-int/2addr p2, v2

    invoke-interface {p1, p2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lms0;

    invoke-direct {p2, p0, v2}, Lms0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V

    const p0, 0x5f500f4d

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

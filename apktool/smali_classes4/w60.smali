.class public final synthetic Lw60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;I)V
    .locals 0

    iput p2, p0, Lw60;->b:I

    iput-object p1, p0, Lw60;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lw60;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object p0, p0, Lw60;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;

    const/4 v3, 0x1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v2, :cond_0

    move v1, v3

    :cond_0
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/vuitton/android/presentation/screen/account/lvpass/a;

    invoke-direct {p2, p0}, Lcom/vuitton/android/presentation/screen/account/lvpass/a;-><init>(Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;)V

    const p0, 0x5d6c32ed

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVPassLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v2, :cond_2

    move v1, v3

    :cond_2
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lw60;

    invoke-direct {p2, p0, v3}, Lw60;-><init>(Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;I)V

    const p0, 0x53a3b4a3

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

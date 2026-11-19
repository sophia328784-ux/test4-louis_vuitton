.class public final synthetic Lu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0;->c:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p2, p0, Lu0;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Landroidx/navigation3/runtime/NavBackStack;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lu0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    iput-object p2, p0, Lu0;->c:Landroidx/navigation3/runtime/NavBackStack;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lu0;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;

    iget-object v1, p0, Lu0;->c:Landroidx/navigation3/runtime/NavBackStack;

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->a(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;)V

    iget-object p0, p0, Lu0;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->z5()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lu0;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->S8()V

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$History;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$History;

    iget-object p0, p0, Lu0;->c:Landroidx/navigation3/runtime/NavBackStack;

    invoke-virtual {p0, v0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

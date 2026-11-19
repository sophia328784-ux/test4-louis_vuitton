.class public final synthetic Lyd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;I)V
    .locals 0

    iput p2, p0, Lyd0;->b:I

    iput-object p1, p0, Lyd0;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lyd0;->b:I

    iget-object p0, p0, Lyd0;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_RELOAD_ORDERS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->Pa()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->G0()V

    new-instance p0, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt$MyLvComposable$lambda$3$0$$inlined$onPauseOrDispose$1;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt$MyLvComposable$lambda$3$0$$inlined$onPauseOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

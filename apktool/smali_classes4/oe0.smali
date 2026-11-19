.class public final synthetic Loe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;I)V
    .locals 0

    iput p2, p0, Loe0;->b:I

    iput-object p1, p0, Loe0;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Loe0;->b:I

    iget-object p0, p0, Loe0;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->u:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->w:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$Companion;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;->a()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "PREVIOUS_SCREEN"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lz40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/webview/LVAlertView;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/webview/LVAlertView;I)V
    .locals 0

    iput p2, p0, Lz40;->b:I

    iput-object p1, p0, Lz40;->c:Lcom/vuitton/android/presentation/screen/webview/LVAlertView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lz40;->b:I

    iget-object p0, p0, Lz40;->c:Lcom/vuitton/android/presentation/screen/webview/LVAlertView;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;->G:Lcom/vuitton/android/presentation/screen/webview/LVAlertView$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;->H:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/AlertViewBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/AlertViewBinding;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;->G:Lcom/vuitton/android/presentation/screen/webview/LVAlertView$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lz40;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lz40;-><init>(Lcom/vuitton/android/presentation/screen/webview/LVAlertView;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;->G:Lcom/vuitton/android/presentation/screen/webview/LVAlertView$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;->G:Lcom/vuitton/android/presentation/screen/webview/LVAlertView$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Le61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le61;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le61;->c:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    iput-object p2, p0, Le61;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Le61;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le61;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    iput-object p2, p0, Le61;->c:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Le61;->b:I

    iget-object v1, p0, Le61;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    iget-object p0, p0, Le61;->c:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->k:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/Hilt_WatchSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const v2, 0x7f141449

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f1404da

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f140fb2

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v0, v2, v3, v4, v5}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->b(Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$onViewCreated$2$4$1$1;

    invoke-direct {v2, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$onViewCreated$2$4$1$1;-><init>(Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    sget-object p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

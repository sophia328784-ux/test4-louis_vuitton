.class public Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;
.super Lcom/sightcall/universal/internal/ui/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;
.implements Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "MessagesDialogFragment"


# instance fields
.field private adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

.field private editText:Landroid/widget/EditText;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;

.field private send:Landroid/widget/ImageView;

.field private final session:Lcom/sightcall/universal/model/Session;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/BaseDialogFragment;-><init>()V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/messaging/Messaging;->from(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/messaging/Messaging;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->session:Lcom/sightcall/universal/model/Session;

    return-void
.end method

.method public static bridge synthetic J(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->sendMessage()V

    return-void
.end method

.method private init(Landroid/app/Dialog;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$1;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v0, Lcom/sightcall/universal/R$id;->universal_messages_send:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->send:Landroid/widget/ImageView;

    new-instance v1, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$2;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/sightcall/universal/R$id;->universal_messages_input:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sightcall/universal/R$integer;->universal_messages_max_input_length:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/messaging/Messaging;->getPendingMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->afterTextChanged(Landroid/text/Editable;)V

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->n1(Z)V

    sget v0, Lcom/sightcall/universal/R$id;->universal_messages_recyclerview:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$3;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$3;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->setOnMessageClickListener(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->setOnMessageLongClickListener(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/Messaging;->get()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->addMessages(Ljava/util/List;)V

    return-void
.end method

.method public static isShown(Landroidx/fragment/app/FragmentManager;)Z
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic q(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)Lcom/sightcall/universal/internal/messaging/MessagesAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private sendMessage()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v1, v2, v3}, Lcom/sightcall/universal/internal/messaging/Messaging;->send(Ljava/lang/String;Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/internal/messaging/Message$Outgoing;

    move-result-object v1

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->addMessage(Lcom/sightcall/universal/internal/messaging/Message;)V

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->f()I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->send:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/internal/ui/BaseDialogFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/sightcall/universal/R$string;->universal_messages_dialog_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    sget v0, Lcom/sightcall/universal/R$drawable;->universal_ic_close_black_24dp:I

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->c:I

    sget v0, Lcom/sightcall/universal/R$layout;->universal_dialog_messages:I

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->t:Landroid/view/View;

    iput v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->s:I

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->init(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/messaging/Messaging;->setPending(Ljava/lang/String;)V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->sendMessage()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$4;

    invoke-direct {p2, p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$4;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMessageClick(Lcom/sightcall/universal/internal/messaging/Message;Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMessageLongClick(Lcom/sightcall/universal/internal/messaging/Message;Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sightcall/universal/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)Z

    sget p1, Lcom/sightcall/universal/R$string;->universal_messages_copied_to_clipboard:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public onMessageReceivedEvent(Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/messaging/Message$Incoming;->read(Z)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->addMessage(Lcom/sightcall/universal/internal/messaging/Message;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

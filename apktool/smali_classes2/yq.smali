.class public final synthetic Lyq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V
    .locals 0

    iput p2, p0, Lyq;->b:I

    iput-object p1, p0, Lyq;->c:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lyq;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lyq;->c:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->m:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->a(Landroid/content/Context;)Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f140ee9

    iget-object v4, v1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    new-instance v3, Lzq;

    invoke-direct {v3, p0}, Lzq;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_1

    new-instance p1, Lar;

    invoke-direct {p1, p0, v2}, Lar;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V

    const v2, 0x7f140eda

    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lar;

    invoke-direct {p1, p0, v0}, Lar;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V

    const p0, 0x7f140602

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    new-instance p1, Lar;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lar;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;I)V

    const p0, 0x104000a

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->m:I

    const v0, 0x7f0a0376

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    check-cast v4, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/linecorp/linesdk/LineApiResponse;

    sget v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->m:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "arg_error_result"

    iget-object p1, p1, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_2
    check-cast p1, Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;

    sget v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->m:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "arg_open_chatroom_info"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lmh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;I)V
    .locals 0

    iput p2, p0, Lmh0;->b:I

    iput-object p1, p0, Lmh0;->c:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lmh0;->b:I

    iget-object p0, p0, Lmh0;->c:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->b()I

    move-result p1

    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    const v0, 0x7f0a015d

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0b0037

    invoke-virtual {p0, v1, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->q(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    const v0, 0x7f0a0317

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0b0038

    invoke-virtual {p0, v1, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->q(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

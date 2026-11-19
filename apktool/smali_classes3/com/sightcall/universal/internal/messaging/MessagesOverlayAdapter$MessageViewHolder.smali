.class public Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageViewHolder"
.end annotation


# static fields
.field private static final ID:I


# instance fields
.field protected message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

.field private onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

.field textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/sightcall/universal/R$layout;->universal_item_message_overlay:I

    sput v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

    return-object p0
.end method

.method public static bridge synthetic c()I
    .locals 1

    sget v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->ID:I

    return v0
.end method


# virtual methods
.method public onBind(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object p3, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

    :cond_1
    return-void
.end method

.method public onUnbind()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    return-void
.end method

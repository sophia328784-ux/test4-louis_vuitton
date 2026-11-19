.class Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    iget-object v0, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->b(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    iget-object p1, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    iget-object p1, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-static {p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->b(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    invoke-interface {p1, v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;->onMessageLongClick(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.class Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    iget-object v1, v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->a(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-static {v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->a(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder$1;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    invoke-interface {v0, v1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;->onMessageClick(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

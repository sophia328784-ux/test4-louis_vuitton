.class public Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;,
        Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;,
        Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;,
        Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;,
        Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lcom/sightcall/universal/internal/messaging/Message$Incoming;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clearIncomingMessages:Ljava/lang/Runnable;

.field private onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

.field private onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

.field private onQuickActionListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

.field private final showQuickActions:Z

.field private final uiHandler:Landroid/os/Handler;

.field private final unreadMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/messaging/Message$Incoming;",
            ">;"
        }
    .end annotation
.end field

.field private final unreadMessagesTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$1;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->MESSAGE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$2;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->clearIncomingMessages:Ljava/lang/Runnable;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/agent/Usecase;->user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase$User;->chat()Lcom/sightcall/universal/agent/Usecase$Chat;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase$Chat;->quickbar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->showQuickActions:Z

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase$Chat;->messageOverlayTimeout()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessagesTimeoutMillis:J

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->showQuickActions:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessagesTimeoutMillis:J

    return-void
.end method

.method private getUnreadMessageAt(I)Lcom/sightcall/universal/internal/messaging/Message$Incoming;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->isItemUnreadMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private indexOfQuickActions()I
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->indexOfUnreadMessages()I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private indexOfUnreadMessages()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isItemQuickActions(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->indexOfQuickActions()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isItemUnreadMessage(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private notifyQuickActionsChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->indexOfQuickActions()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->indexOfQuickActions()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->indexOfQuickActions()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    return-void
.end method

.method private shouldShowQuickActions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->showQuickActions:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clearUnreadTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->uiHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->clearIncomingMessages:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->isItemUnreadMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->c()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->isItemQuickActions(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->b()I

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    instance-of v0, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->getUnreadMessageAt(I)Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    move-result-object p2

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

    invoke-virtual {p1, p2, v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onBind(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;)V

    return-void

    :cond_0
    instance-of p2, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result p2

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onQuickActionListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

    invoke-virtual {p1, p2, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onBind(ZLcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;)V

    return-void

    :cond_1
    invoke-static {}, Lr81;->b()V

    return-void
.end method

.method public onClear()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->c()I

    move-result p1

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->b()I

    move-result p1

    if-ne p2, p1, :cond_1

    new-instance p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onMessageAdded(Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V
    .locals 3

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    sget-object v2, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->MESSAGE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->indexOfUnreadMessages()I

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->notifyQuickActionsChanged(Z)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->resetUnreadTimeout()V

    return-void
.end method

.method public onMessageDismissed(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object p1, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sightcall/universal/internal/messaging/Message$Incoming;->read(Z)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->isItemUnreadMessage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->notifyQuickActionsChanged(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onMessagesRead()V
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->shouldShowQuickActions()Z

    move-result v0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->indexOfUnreadMessages()I

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sightcall/universal/internal/messaging/Message$Incoming;->read(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->notifyQuickActionsChanged(Z)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->clearUnreadTimeout()V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    instance-of p0, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;->onUnbind()V

    return-void

    :cond_0
    instance-of p0, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onUnbind()V

    :cond_1
    return-void
.end method

.method public refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/messaging/Message;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/messaging/Message;

    instance-of v1, v0, Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/messaging/Message$Incoming;->isRead()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    sget-object v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->MESSAGE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->resetUnreadTimeout()V

    return-void
.end method

.method public resetUnreadTimeout()V
    .locals 4

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->clearUnreadTimeout()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->unreadMessagesTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->uiHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->clearIncomingMessages:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnMessageClickListener(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;

    return-void
.end method

.method public setOnMessageLongClickListener(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;

    return-void
.end method

.method public setOnQuickActionListener(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onQuickActionListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

    return-void
.end method

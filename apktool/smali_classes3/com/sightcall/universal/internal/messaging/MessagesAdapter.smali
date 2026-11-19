.class public Lcom/sightcall/universal/internal/messaging/MessagesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;,
        Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;,
        Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/messaging/Message;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;

.field private onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->messages:Ljava/util/List;

    return-void
.end method

.method private getItem(I)Lcom/sightcall/universal/internal/messaging/Message;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/messaging/Message;

    return-object p0
.end method


# virtual methods
.method public addMessage(Lcom/sightcall/universal/internal/messaging/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/messaging/Message;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->getItem(I)Lcom/sightcall/universal/internal/messaging/Message;

    move-result-object p0

    if-eqz p0, :cond_0

    sget p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->LAYOUT:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->onBindViewHolder(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sightcall/universal/internal/messaging/Message;

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;

    invoke-virtual {p1, p2, v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onBind(Lcom/sightcall/universal/internal/messaging/Message;Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->LAYOUT:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->onViewRecycled(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onUnbind()V

    return-void
.end method

.method public setOnMessageClickListener(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;

    return-void
.end method

.method public setOnMessageLongClickListener(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;

    return-void
.end method

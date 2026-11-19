.class public Lcom/sightcall/universal/internal/messaging/MessagesOverlayTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "SourceFile"


# instance fields
.field private final adapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayTouchHelper;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    return-void
.end method

.method public static attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;)V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayTouchHelper;

    invoke-direct {v1, p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayTouchHelper;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->f(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    instance-of v0, p2, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 3

    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayTouchHelper;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->clearUnreadTimeout()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayTouchHelper;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->resetUnreadTimeout()V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    instance-of p2, p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayTouchHelper;->adapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    check-cast p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessageDismissed(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)V

    return-void
.end method

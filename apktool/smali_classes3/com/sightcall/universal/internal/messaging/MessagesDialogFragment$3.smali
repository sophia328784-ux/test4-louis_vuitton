.class Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->init(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$3;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeInserted(II)V
    .locals 0

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$3;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

    invoke-static {p1}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->r(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$3;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

    invoke-static {p1}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->s(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment$3;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;

    invoke-static {p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->q(Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;)Lcom/sightcall/universal/internal/messaging/MessagesAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

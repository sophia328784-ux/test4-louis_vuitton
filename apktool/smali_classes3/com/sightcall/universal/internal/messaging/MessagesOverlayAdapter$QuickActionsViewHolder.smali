.class Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickActionsViewHolder"
.end annotation


# static fields
.field private static final ID:I


# instance fields
.field private final ko:Landroid/view/View;

.field private final ok:Landroid/view/View;

.field private onQuickActionListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

.field private final onQuickActionNegative:Landroid/view/View$OnClickListener;

.field private final onQuickActionPositive:Landroid/view/View$OnClickListener;

.field private final onQuickActionReply:Landroid/view/View$OnClickListener;

.field private final reply:Landroid/view/View;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/sightcall/universal/R$layout;->universal_item_message_overlay_quick_actions:I

    sput v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$1;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionNegative:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$2;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionPositive:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$3;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$3;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionReply:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->view:Landroid/view/View;

    sget v0, Lcom/sightcall/universal/R$id;->universal_messages_quick_action_positive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->ok:Landroid/view/View;

    sget v0, Lcom/sightcall/universal/R$id;->universal_messages_quick_action_negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->ko:Landroid/view/View;

    sget v0, Lcom/sightcall/universal/R$id;->universal_messages_quick_action_reply:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->reply:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

    return-object p0
.end method

.method public static bridge synthetic b()I
    .locals 1

    sget v0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->ID:I

    return v0
.end method


# virtual methods
.method public onBind(ZLcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->ok:Landroid/view/View;

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionPositive:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->ko:Landroid/view/View;

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionNegative:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->reply:Landroid/view/View;

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionReply:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onUnbind()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->ok:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->ko:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->reply:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->onQuickActionListener:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

    :cond_0
    return-void
.end method

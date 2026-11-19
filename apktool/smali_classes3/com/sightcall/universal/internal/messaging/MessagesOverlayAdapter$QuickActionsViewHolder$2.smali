.class Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;

    invoke-static {v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->a(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;

    invoke-static {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;->a(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$QuickActionsViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;->onQuickActionPositive()V

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

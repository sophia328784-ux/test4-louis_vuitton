.class Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->initUi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$4;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$4;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->O(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

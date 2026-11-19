.class Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$6;->a:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$6;->a:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;

    invoke-static {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->a(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->a(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;I)V

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

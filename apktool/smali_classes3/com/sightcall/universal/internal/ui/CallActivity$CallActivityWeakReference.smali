.class public Lcom/sightcall/universal/internal/ui/CallActivity$CallActivityWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallActivityWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/sightcall/universal/internal/ui/CallActivity;",
        ">;",
        "Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onForwardInbandDataChannel(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/CallActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallActivity;->onForwardInbandDataChannel(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRefreshCallButtons()V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/CallActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    :cond_0
    return-void
.end method

.class Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->scheduleCancel(Landroid/content/Context;Lcom/sightcall/universal/fcm/messages/GuestReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/UniversalNotification$3;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$guest:Lcom/sightcall/universal/fcm/messages/GuestReady;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/UniversalNotification$3;Landroid/content/Context;Ljava/lang/String;Lcom/sightcall/universal/fcm/messages/GuestReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;->this$0:Lcom/sightcall/universal/internal/ui/UniversalNotification$3;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;->val$guest:Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;->this$0:Lcom/sightcall/universal/internal/ui/UniversalNotification$3;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->cancel(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->declined:Z

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;->val$guest:Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent;->onGuestReadyDenied(Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    return-void
.end method

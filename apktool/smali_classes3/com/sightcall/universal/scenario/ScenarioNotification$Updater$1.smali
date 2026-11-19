.class Lcom/sightcall/universal/scenario/ScenarioNotification$Updater$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->start(Lcom/sightcall/universal/scenario/ScenarioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;

.field final synthetic val$reference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater$1;->this$0:Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/scenario/ScenarioService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/ScenarioService;->updateNotification()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater$1;->this$0:Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->a(Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;)V

    return-void
.end method

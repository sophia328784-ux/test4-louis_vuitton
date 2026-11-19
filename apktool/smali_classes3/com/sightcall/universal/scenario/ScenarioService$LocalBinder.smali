.class Lcom/sightcall/universal/scenario/ScenarioService$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/ScenarioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/ScenarioService;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/ScenarioService$LocalBinder;->this$0:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sightcall/universal/scenario/ScenarioService;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/ScenarioService$LocalBinder;->this$0:Lcom/sightcall/universal/scenario/ScenarioService;

    return-object p0
.end method

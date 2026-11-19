.class Lcom/sightcall/universal/scenario/Scenario$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/Scenario;->next([Lcom/sightcall/universal/scenario/Step;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/Scenario;

.field final synthetic val$s:[Lcom/sightcall/universal/scenario/Step;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/Scenario;[Lcom/sightcall/universal/scenario/Step;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/scenario/Scenario$2;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/Scenario$2;->val$s:[Lcom/sightcall/universal/scenario/Step;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario$2;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario$2;->val$s:[Lcom/sightcall/universal/scenario/Step;

    invoke-static {v0, p0}, Lcom/sightcall/universal/scenario/Scenario;->c(Lcom/sightcall/universal/scenario/Scenario;[Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

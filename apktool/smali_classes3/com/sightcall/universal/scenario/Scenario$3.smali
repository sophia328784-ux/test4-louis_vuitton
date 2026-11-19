.class Lcom/sightcall/universal/scenario/Scenario$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/Scenario;->interrupt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/Scenario;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/Scenario$3;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario$3;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/Scenario;->b(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

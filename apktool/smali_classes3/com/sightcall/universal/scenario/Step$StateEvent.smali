.class public final Lcom/sightcall/universal/scenario/Step$StateEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateEvent"
.end annotation


# instance fields
.field private final state:Lcom/sightcall/universal/scenario/Step$State;

.field final synthetic this$0:Lcom/sightcall/universal/scenario/Step;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/scenario/Step;Lcom/sightcall/universal/scenario/Step$State;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/Step$StateEvent;->this$0:Lcom/sightcall/universal/scenario/Step;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sightcall/universal/scenario/Step$StateEvent;->state:Lcom/sightcall/universal/scenario/Step$State;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/scenario/Step;Lcom/sightcall/universal/scenario/Step$State;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/Step$StateEvent;-><init>(Lcom/sightcall/universal/scenario/Step;Lcom/sightcall/universal/scenario/Step$State;)V

    return-void
.end method


# virtual methods
.method public state()Lcom/sightcall/universal/scenario/Step$State;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Step$StateEvent;->state:Lcom/sightcall/universal/scenario/Step$State;

    return-object p0
.end method

.method public step()Lcom/sightcall/universal/scenario/Step;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Step$StateEvent;->this$0:Lcom/sightcall/universal/scenario/Step;

    return-object p0
.end method

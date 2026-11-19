.class public final Lcom/sightcall/universal/scenario/Scenario$StatusEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatusEvent"
.end annotation


# instance fields
.field private final status:Lcom/sightcall/universal/scenario/Scenario$Status;

.field final synthetic this$0:Lcom/sightcall/universal/scenario/Scenario;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/scenario/Scenario;Lcom/sightcall/universal/scenario/Scenario$Status;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/scenario/Scenario;Lcom/sightcall/universal/scenario/Scenario$Status;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;-><init>(Lcom/sightcall/universal/scenario/Scenario;Lcom/sightcall/universal/scenario/Scenario$Status;)V

    return-void
.end method


# virtual methods
.method public scenario()Lcom/sightcall/universal/scenario/Scenario;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    return-object p0
.end method

.method public status()Lcom/sightcall/universal/scenario/Scenario$Status;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    return-object p0
.end method

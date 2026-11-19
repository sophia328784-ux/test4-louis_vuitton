.class public Lcom/sightcall/universal/agent/RegistrationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final agent:Lcom/sightcall/universal/agent/Agent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/Agent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/RegistrationEvent;->agent:Lcom/sightcall/universal/agent/Agent;

    return-void
.end method


# virtual methods
.method public agent()Lcom/sightcall/universal/agent/Agent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/RegistrationEvent;->agent:Lcom/sightcall/universal/agent/Agent;

    return-object p0
.end method

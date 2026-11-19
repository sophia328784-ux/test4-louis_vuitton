.class Lcom/sightcall/universal/agent/UniversalAgent$3;
.super Lcom/sightcall/universal/util/Lazy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/UniversalAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/Lazy<",
        "Lcom/sightcall/universal/agent/Code;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$3;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    return-void
.end method


# virtual methods
.method public init()Lcom/sightcall/universal/agent/Code;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$3;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Repository;->loadCode()Lcom/sightcall/universal/agent/Code;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent$3;->init()Lcom/sightcall/universal/agent/Code;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/sightcall/universal/agent/Code;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$3;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/Repository;->saveCode(Lcom/sightcall/universal/agent/Code;)Lcom/sightcall/universal/agent/Code;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/sightcall/universal/agent/Code;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$3;->set(Lcom/sightcall/universal/agent/Code;)V

    return-void
.end method

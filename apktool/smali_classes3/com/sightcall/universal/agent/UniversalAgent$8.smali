.class Lcom/sightcall/universal/agent/UniversalAgent$8;
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
        "Ljava/util/List<",
        "Lcom/sightcall/universal/agent/ArOverlayModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$8;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent$8;->init()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ArOverlayModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$8;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Repository;->loadArOverlayModels()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$8;->set(Ljava/util/List;)V

    return-void
.end method

.method public set(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ArOverlayModel;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$8;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/Repository;->saveArOverlayModels(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

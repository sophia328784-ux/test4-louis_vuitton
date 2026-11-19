.class Lcom/sightcall/universal/internal/ui/CallActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallActivity;->onIncomingMessage(Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

.field final synthetic val$message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$2;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity$2;->val$message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$2;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$2;->val$message:Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onIncomingMessage(Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V

    return-void
.end method

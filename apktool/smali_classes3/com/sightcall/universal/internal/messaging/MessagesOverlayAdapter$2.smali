.class Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$2;->this$0:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessagesRead()V

    return-void
.end method

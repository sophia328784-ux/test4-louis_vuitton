.class Lcom/sightcall/universal/internal/ui/NetworkLostDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/NetworkLostDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/NetworkLostDialog;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/NetworkLostDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$2;->this$0:Lcom/sightcall/universal/internal/ui/NetworkLostDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$2;->this$0:Lcom/sightcall/universal/internal/ui/NetworkLostDialog;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->hangup()V

    return-void
.end method

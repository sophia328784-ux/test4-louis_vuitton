.class Lcom/sightcall/universal/internal/ui/CallOverlay$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallOverlay;->addRootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallOverlay;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$1;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

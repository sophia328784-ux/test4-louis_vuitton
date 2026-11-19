.class Lcom/sightcall/universal/internal/ui/CallOverlay$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallOverlay;->moveCallViewTo(FFZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

.field final synthetic val$addMargin:Z

.field final synthetic val$animate:Z

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallOverlay;FFZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    iput p2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->val$x:F

    iput p3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->val$y:F

    iput-boolean p4, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->val$animate:Z

    iput-boolean p5, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->val$addMargin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    iget v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->val$x:F

    iget v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->val$y:F

    iget-boolean v3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->val$animate:Z

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;->val$addMargin:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->e(Lcom/sightcall/universal/internal/ui/CallOverlay;FFZZ)V

    return-void
.end method

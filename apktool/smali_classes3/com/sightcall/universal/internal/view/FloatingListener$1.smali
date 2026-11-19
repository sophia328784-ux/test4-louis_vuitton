.class Lcom/sightcall/universal/internal/view/FloatingListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/FloatingListener;->start(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/FloatingListener;

.field final synthetic val$r:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/FloatingListener$1;->this$0:Lcom/sightcall/universal/internal/view/FloatingListener;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/FloatingListener$1;->val$r:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/FloatingListener$1;->this$0:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/FloatingListener$1;->val$r:Landroid/graphics/Rect;

    invoke-static {v0, p0}, Lcom/sightcall/universal/internal/view/FloatingListener;->b(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;)V

    return-void
.end method

.class Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/MyVideoConsumerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

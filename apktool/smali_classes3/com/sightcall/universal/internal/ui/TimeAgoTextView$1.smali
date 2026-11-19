.class Lcom/sightcall/universal/internal/ui/TimeAgoTextView$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/TimeAgoTextView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView$1;->this$0:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView$1;->this$0:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->restartCountDown()V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onTick() called with: millisUntilFinished = ["

    const-string v2, "]"

    invoke-static {p1, p2, v1, v2}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView$1;->this$0:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->d(Lcom/sightcall/universal/internal/ui/TimeAgoTextView;)V

    return-void
.end method

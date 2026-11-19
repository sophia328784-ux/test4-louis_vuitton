.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CancelAuthenticationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v1, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object v1, v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    sget-object v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-eq v1, v2, :cond_2

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->i:Landroid/content/Intent;

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->a(Landroid/content/Intent;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->i:Landroid/content/Intent;

    return-void

    :cond_1
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v1, Lcom/linecorp/linesdk/LineApiError;->e:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->a(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    :cond_2
    :goto_0
    return-void
.end method

.class Lcom/cyberfend/cyfsecurity/CircleProgressBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CircleProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CircleProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CircleProgressBar;

    iget v1, v0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->i:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->i:I

    iget v1, v0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->c:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->c:F

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CircleProgressBar;

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->j:Landroid/os/Handler;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->k:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

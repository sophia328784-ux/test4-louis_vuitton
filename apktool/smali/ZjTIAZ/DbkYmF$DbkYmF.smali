.class LZjTIAZ/DbkYmF$DbkYmF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic GTEFzg:Landroid/view/MotionEvent;

.field final synthetic ZRQiWB:LZjTIAZ/DbkYmF;

.field final synthetic ukOnqg:I


# direct methods
.method public constructor <init>(LZjTIAZ/DbkYmF;Landroid/view/MotionEvent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZjTIAZ/DbkYmF$DbkYmF;->ZRQiWB:LZjTIAZ/DbkYmF;

    iput-object p2, p0, LZjTIAZ/DbkYmF$DbkYmF;->GTEFzg:Landroid/view/MotionEvent;

    iput p3, p0, LZjTIAZ/DbkYmF$DbkYmF;->ukOnqg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LZjTIAZ/DbkYmF$DbkYmF;->ZRQiWB:LZjTIAZ/DbkYmF;

    iget-object v1, p0, LZjTIAZ/DbkYmF$DbkYmF;->GTEFzg:Landroid/view/MotionEvent;

    iget p0, p0, LZjTIAZ/DbkYmF$DbkYmF;->ukOnqg:I

    sget v2, LZjTIAZ/DbkYmF;->c:I

    invoke-virtual {v0, v1, p0}, LZjTIAZ/DbkYmF;->a(Landroid/view/MotionEvent;I)V

    return-void
.end method

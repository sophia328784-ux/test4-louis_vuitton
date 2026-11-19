.class LZjTIAZ/XNPXeV$NQequ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static JMMHHL:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLdr/Eel/PXi/JhV;"
        }
    .end annotation
.end field


# instance fields
.field final synthetic ErjBlv:I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSQm/RGT;"
        }
    .end annotation
.end field

.field final synthetic ZRQiWB:LZjTIAZ/XNPXeV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LZjTIAZ/XNPXeV$NQequ;->uIM(Z)V

    return-void
.end method

.method public constructor <init>(LZjTIAZ/XNPXeV;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZjTIAZ/XNPXeV$NQequ;->ZRQiWB:LZjTIAZ/XNPXeV;

    iput p2, p0, LZjTIAZ/XNPXeV$NQequ;->ErjBlv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic uIM(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LZjTIAZ/XNPXeV$NQequ;->uIM(Z)V

    :cond_0
    const-string p0, "?\u0017\"\u001d\u0003\u001c\u001f\u000e "

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XNPXeV$NQequ;->JMMHHL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LZjTIAZ/XNPXeV$NQequ;->ZRQiWB:LZjTIAZ/XNPXeV;

    sget-object v1, LZjTIAZ/XNPXeV$NQequ;->JMMHHL:Ljava/lang/String;

    iget v2, p0, LZjTIAZ/XNPXeV$NQequ;->ErjBlv:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, LZjTIAZ/XNPXeV;->d(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, LZjTIAZ/XNPXeV$NQequ;->ErjBlv:I

    iget-object p0, p0, LZjTIAZ/XNPXeV$NQequ;->ZRQiWB:LZjTIAZ/XNPXeV;

    iget v1, p0, LZjTIAZ/XNPXeV;->e:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, LZjTIAZ/XNPXeV;->b:Z

    return-void

    :cond_0
    iget v1, p0, LZjTIAZ/XNPXeV;->f:I

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, LZjTIAZ/XNPXeV;->c:Z

    return-void

    :cond_1
    iput-boolean v2, p0, LZjTIAZ/XNPXeV;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

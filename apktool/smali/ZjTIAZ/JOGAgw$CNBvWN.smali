.class LZjTIAZ/JOGAgw$CNBvWN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/JOGAgw;

.field final synthetic bQXLL:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldouble;"
        }
    .end annotation
.end field

.field final synthetic ebJiUe:LZjTIAZ/JOGAgw$JOGAgw;


# direct methods
.method public constructor <init>(LZjTIAZ/JOGAgw;Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZjTIAZ/JOGAgw$CNBvWN;->ZRQiWB:LZjTIAZ/JOGAgw;

    iput-object p2, p0, LZjTIAZ/JOGAgw$CNBvWN;->bQXLL:Ljava/lang/String;

    iput-object p3, p0, LZjTIAZ/JOGAgw$CNBvWN;->ebJiUe:LZjTIAZ/JOGAgw$JOGAgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LZjTIAZ/JOGAgw$CNBvWN;->bQXLL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, LZjTIAZ/JOGAgw$CNBvWN;->ebJiUe:LZjTIAZ/JOGAgw$JOGAgw;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {p0}, LZjTIAZ/JOGAgw$JOGAgw;->a()V

    return-void

    :cond_0
    invoke-interface {p0}, LZjTIAZ/JOGAgw$JOGAgw;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

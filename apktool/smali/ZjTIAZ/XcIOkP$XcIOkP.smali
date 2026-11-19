.class LZjTIAZ/XcIOkP$XcIOkP;
.super Ljava/lang/Object;

# interfaces
.implements LZjTIAZ/AcVtYN$eTLkQn;


# instance fields
.field public final synthetic a:LZjTIAZ/XcIOkP;


# direct methods
.method public constructor <init>(LZjTIAZ/XcIOkP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZjTIAZ/XcIOkP$XcIOkP;->a:LZjTIAZ/XcIOkP;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    :try_start_0
    sget-object p0, LZjTIAZ/XcIOkP;->d:LZjTIAZ/XcIOkP;

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(F)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LZjTIAZ/XcIOkP$XcIOkP;->a:LZjTIAZ/XcIOkP;

    iput p1, p0, LZjTIAZ/XcIOkP;->b:F

    iget-object p0, p0, LZjTIAZ/XcIOkP;->a:LZjTIAZ/XcIOkP$GznHzJ;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LZjTIAZ/XcIOkP$GznHzJ;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

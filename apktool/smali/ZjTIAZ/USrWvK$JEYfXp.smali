.class LZjTIAZ/USrWvK$JEYfXp;
.super Ljava/lang/Object;

# interfaces
.implements LZjTIAZ/ZDnQwv$zDnQwv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZjTIAZ/USrWvK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LZjTIAZ/USrWvK$DRxlEm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field public final synthetic a:LZjTIAZ/USrWvK$DRxlEm;

.field public final synthetic b:LZjTIAZ/USrWvK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LhE\u0013PSCLsPVW\u0015SEJFX\u0011\u000c"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$JEYfXp;->c:Ljava/lang/String;

    const-string v0, "M|SdVPyItFgI[XRJ"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$JEYfXp;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LZjTIAZ/USrWvK;LZjTIAZ/USrWvK$DRxlEm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZjTIAZ/USrWvK$JEYfXp;->b:LZjTIAZ/USrWvK;

    iput-object p2, p0, LZjTIAZ/USrWvK$JEYfXp;->a:LZjTIAZ/USrWvK$DRxlEm;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, LZjTIAZ/USrWvK$JEYfXp;->b:LZjTIAZ/USrWvK;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, LZjTIAZ/USrWvK$JEYfXp;->a:LZjTIAZ/USrWvK$DRxlEm;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, LZjTIAZ/USrWvK;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->COMPLETE:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    sget-object v2, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-virtual {v0, p0, v2}, LZjTIAZ/USrWvK;->k(LZjTIAZ/USrWvK$ELXMqL$DwXtmN;LZjTIAZ/USrWvK$ELXMqL$etZCba;)V

    invoke-virtual {v0}, LZjTIAZ/USrWvK;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    sget-object v2, LZjTIAZ/USrWvK$JEYfXp;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/USrWvK$JEYfXp;->c:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    sget-object v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    sget v2, LZjTIAZ/USrWvK;->v:I

    invoke-virtual {v0, v1, p0}, LZjTIAZ/USrWvK;->h(LZjTIAZ/USrWvK$ELXMqL$etZCba;Ljava/lang/Exception;)V

    return-void
.end method

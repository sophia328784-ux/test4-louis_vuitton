.class LZjTIAZ/ZptgnD$ZptgnD$nSmlN;
.super Ljava/lang/Object;

# interfaces
.implements LZjTIAZ/USrWvK$DRxlEm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZjTIAZ/ZptgnD$ZptgnD;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# instance fields
.field public final synthetic a:LZjTIAZ/ZptgnD$ZptgnD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "}@aq^BeSBXRRTZ\u0017][XD^\u0017\u000e"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->b:Ljava/lang/String;

    const-string v0, "JLgVPF\u000fRd_[YG\u0016TYEFIMNE\u000fUSPLV\u001f\u0006"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->c:Ljava/lang/String;

    const-string v0, "}@aq^B}EwCPO]\u007fYLLX]MA\u000eJBSMQ\u001e\u0005"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->d:Ljava/lang/String;

    const-string v0, "}@aq^BkSrt[]WZR\\\tOY^B\\\u0015\u0010"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->e:Ljava/lang/String;

    const-string v0, "}@aq^B`RuTG\u001cPDEW[\u0010\u000b"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->f:Ljava/lang/String;

    const-string v0, "}@apC@eSBXRRTZ`Q]B\u007fCFKA\u0010DPQKW\u001c\u0007"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LZjTIAZ/ZptgnD$ZptgnD;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    return-void
.end method


# virtual methods
.method public final a(LZjTIAZ/USrWvK$ELXMqL;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, LZjTIAZ/ZptgnD$CuccPN;->a:[I

    iget-object v3, p1, LZjTIAZ/USrWvK$ELXMqL;->a:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, p1, LZjTIAZ/USrWvK$ELXMqL;->b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    sget-object v3, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->c()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_a

    :cond_1
    :goto_0
    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->b()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_9

    :cond_2
    iget-object p1, p1, LZjTIAZ/USrWvK$ELXMqL;->b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    sget-object v2, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-ne p1, v2, :cond_a

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->x()V

    :cond_3
    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->n()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_1

    :cond_4
    iget-object v2, p1, LZjTIAZ/USrWvK$ELXMqL;->b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    sget-object v3, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->c()V

    goto/16 :goto_9

    :cond_5
    iget-object p1, p1, LZjTIAZ/USrWvK$ELXMqL;->b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    sget-object v2, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-ne p1, v2, :cond_a

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->x()V

    goto/16 :goto_9

    :cond_6
    iget-object v2, p1, LZjTIAZ/USrWvK$ELXMqL;->b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    sget-object v3, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v3, p1, LZjTIAZ/USrWvK$ELXMqL;->f:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :cond_7
    move v3, v0

    :goto_2
    iput v3, v2, LZjTIAZ/ZptgnD;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    :try_start_2
    sget-object v3, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    :try_start_3
    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v3, p1, LZjTIAZ/USrWvK$ELXMqL;->e:[Ljava/lang/String;

    iput-object v3, v2, LZjTIAZ/ZptgnD;->l:[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    :try_start_4
    sget-object v3, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    :try_start_5
    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v3, p1, LZjTIAZ/USrWvK$ELXMqL;->g:Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_7

    :cond_8
    move v3, v1

    :goto_6
    iput-boolean v3, v2, LZjTIAZ/ZptgnD;->m:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :goto_7
    :try_start_6
    sget-object v3, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_8
    :try_start_7
    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/USrWvK$ELXMqL;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, LZjTIAZ/ZptgnD;->y(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    :catch_4
    move-exception p1

    :try_start_8
    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Throwable;

    invoke-static {v2, p1, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_9
    iget-object v2, p1, LZjTIAZ/USrWvK$ELXMqL;->b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    sget-object v3, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-ne v2, v3, :cond_a

    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v2, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object v3, p1, LZjTIAZ/USrWvK$ELXMqL;->c:Ljava/lang/String;

    iget-object p1, p1, LZjTIAZ/USrWvK$ELXMqL;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, LZjTIAZ/ZptgnD;->A(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    :try_start_a
    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Throwable;

    invoke-static {v2, p1, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_a
    :goto_9
    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-static {p1}, LZjTIAZ/ZptgnD;->o(LZjTIAZ/ZptgnD;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->j()V

    invoke-static {}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->d()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_b

    :goto_a
    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->c:Ljava/lang/String;

    invoke-static {p1, v4, v3}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v2, p1, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->n()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->c()V

    :cond_b
    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p1, p1, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p1}, LZjTIAZ/ZptgnD;->x()V

    :cond_c
    iget-object p0, p0, LZjTIAZ/ZptgnD$ZptgnD$nSmlN;->a:LZjTIAZ/ZptgnD$ZptgnD;

    iget-object p0, p0, LZjTIAZ/ZptgnD$ZptgnD;->ZRQiWB:LZjTIAZ/ZptgnD;

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->j()V

    const/4 p0, 0x5

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e(I)V

    :cond_d
    :goto_b
    return-void
.end method

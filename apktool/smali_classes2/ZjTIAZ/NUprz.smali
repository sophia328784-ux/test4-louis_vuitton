.class public LZjTIAZ/NUprz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# instance fields
.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OFaZE[[Y1cPO@[R\\\u0013"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/NUprz;->d:Ljava/lang/String;

    const-string v0, "OFaZE[[Y1aTIFSS\u0002\t"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/NUprz;->e:Ljava/lang/String;

    const-string v0, "BLsVPKLLtrTPYTV[BY"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/NUprz;->f:Ljava/lang/String;

    const-string v0, "OFaZE[[Y1rGYTBR\\\u0013\n"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/NUprz;->g:Ljava/lang/String;

    const-string v0, "OFaZE[[Y1uPOADXALN\u0011\u000c"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/NUprz;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LZjTIAZ/NUprz;->b:I

    iput v0, p0, LZjTIAZ/NUprz;->c:I

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p0, LZjTIAZ/NUprz;->f:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LZjTIAZ/NUprz;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 7

    if-eqz p1, :cond_4

    sget-object p0, LZjTIAZ/NUprz;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LZjTIAZ/NUprz;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Throwable;

    invoke-static {p0, v0, v2}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->p(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->f:LZjTIAZ/QQixUL;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, LZjTIAZ/DbkYmF;

    if-eqz v2, :cond_0

    check-cast v0, LZjTIAZ/DbkYmF;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-static {v0}, LZjTIAZ/QveSIH;->a(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Landroid/widget/EditText;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v5, v4, LZjTIAZ/CbGKec;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LZjTIAZ/CHrESI;

    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, v4, LZjTIAZ/CbGKec;->a:LZjTIAZ/CbGKec$XkvjdW;

    invoke-virtual {v5, v3}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    sget-object v4, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LZjTIAZ/CbGKec;->o:Ljava/lang/String;

    invoke-static {v3, v6, v5}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-static {v4, v3, v5}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    :try_start_6
    const-string v2, "M|S~R\\NGtC"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/cyberfend/cyfsecurity/CYFManager;->q(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_4
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFManager;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_3
    :cond_4
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, LZjTIAZ/NUprz;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LZjTIAZ/NUprz;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p1, v2}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :try_start_0
    iget p1, p0, LZjTIAZ/NUprz;->b:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LZjTIAZ/NUprz;->b:I

    if-nez p1, :cond_0

    sget p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "M|S~\\\\FT~C"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "]QzC\u0013Q@L}TVH\\XP\u0018ZOE_B\\\u000fT@VB"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->A()V

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->B()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    sput-boolean v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->d:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    sget-object v0, LZjTIAZ/NUprz;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LZjTIAZ/NUprz;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget v0, p0, LZjTIAZ/NUprz;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->c(Landroid/app/Activity;)V

    sput-boolean v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->d:Z

    :cond_0
    iget p1, p0, LZjTIAZ/NUprz;->b:I

    add-int/2addr p1, v1

    iput p1, p0, LZjTIAZ/NUprz;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    iget v0, p0, LZjTIAZ/NUprz;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-boolean v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->f:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b(Landroid/app/Application;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iget p1, p0, LZjTIAZ/NUprz;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LZjTIAZ/NUprz;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    :try_start_0
    iget p1, p0, LZjTIAZ/NUprz;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LZjTIAZ/NUprz;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

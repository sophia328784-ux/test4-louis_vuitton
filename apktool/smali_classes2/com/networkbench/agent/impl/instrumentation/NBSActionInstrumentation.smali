.class public Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static COLUMN_POSITION_ID:I = 0xccccd1f

.field private static ROW_POSITION_ID:I = 0xccccd1e

.field private static final TAG:Ljava/lang/String; = "NBSActionInstrumentation"

.field private static isPageSelectedEnterSuccess:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumn(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    sget v0, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->COLUMN_POSITION_ID:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->COLUMN_POSITION_ID:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRow(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    sget v0, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->ROW_POSITION_ID:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->ROW_POSITION_ID:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isInstrumentEnabled()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    return v0
.end method

.method public static onClickEventEnter(Landroid/view/View;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->Clicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSActionInstrumentation   onClickEventEnter()  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onClickEventExit()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSActionInstrumentation   onClickEventExit()  has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onItemClickEnter(Landroid/view/View;I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->ItemClicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NBSActionInstrumentation   onItemClickEnter()  has an error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onItemClickExit()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSActionInstrumentation   onItemClickExit()  has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onItemSelectedEnter(Landroid/view/View;I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->ItemSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NBSActionInstrumentation   onItemSelectedEnter()  has an error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onItemSelectedExit()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSActionInstrumentation   onItemSelectedExit()  has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onKeyDownAction(I)V
    .locals 4

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/data/d/d;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->BackBtnPress:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const-string v2, ""

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/networkbench/agent/impl/data/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/d/b;->a(Lcom/networkbench/agent/impl/data/d/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSActionInstrumentation onKeyDownAction() has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onLongClickEventEnter(Landroid/view/View;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->LongClicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSActionInstrumentation onLongClickEventEnter()  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onLongClickEventExit()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSActionInstrumentation   onLongClickEventExit()  has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onMenuItemClickEnter(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->MenuItemClick:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->a(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSActionInstrumentation   onMenuItemClickEnter()  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onMenuItemClickExit()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSActionInstrumentation   onMenuItemClickExit()  has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onOptionsItemSelectedEnter(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->OptionsItemSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->a(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSActionInstrumentation"

    const-string v1, "onOptionsItemSelectedEnter error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onOptionsItemSelectedExit()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSActionInstrumentation   onOptionsItemSelectedExit()  has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onPageSelectedEnter(I)V
    .locals 4

    const-string v0, "NBSActionInstrumentation"

    const-string v1, "NBSEventActionManager.nbsSlowStartEngine:"

    const-string v2, "onPageSelectedEnter paramInt:"

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/asyncaction/r;->f()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->isPageSelectedEnterSuccess:Z

    sget-object v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->PageSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, p0}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v1, "NBSActionInstrumentation onPageSelectedEnter()  has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onPageSelectedExit()V
    .locals 3

    const-string v0, "NBSActionInstrumentation"

    :try_start_0
    const-string v1, "onPageSelectedExit :"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->isPageSelectedEnterSuccess:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->isPageSelectedEnterSuccess:Z

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const-string v2, "NBSActionInstrumentation onPageSelectedExit()  has an error : "

    invoke-static {v0, v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onTabChangedEnter(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->TabChanged:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSActionInstrumentation   onClickEventEnter()  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onTabChangedExit()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSActionInstrumentation onTabChangedExit()  has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static onTabSelectedEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static onTabSelectedExit()V
    .locals 0

    return-void
.end method

.method public static setColumnTagForList(Landroid/view/View;I)V
    .locals 4

    const-string v0, "NBSActionInstrumentation"

    const-string v1, "setColumnTagForList invoked, columnPosition:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->isInstrumentEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "setColumnTagForList isInstrumentEnabled false"

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    sget v2, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->COLUMN_POSITION_ID:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    const-string p1, "error setColumnTagForList"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setRowTagForList(Ljava/lang/Object;I)V
    .locals 2

    const-string v0, "NBSActionInstrumentation"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->isInstrumentEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "setRowTagForList isInstrumentEnabled false"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    sget v1, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->ROW_POSITION_ID:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "androidx.recyclerview.widget.RecyclerView"

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->ROW_POSITION_ID:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_1
    const-string p1, "error setRowTagForList"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

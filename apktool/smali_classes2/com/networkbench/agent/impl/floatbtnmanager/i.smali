.class public Lcom/networkbench/agent/impl/floatbtnmanager/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/networkbench/agent/impl/floatbtnmanager/k;",
            ")",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/OverviewFloatBtn;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/OverviewFloatBtn;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloagintBtn;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloagintBtn;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/ExistFloatingBtn;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/ExistFloatingBtn;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

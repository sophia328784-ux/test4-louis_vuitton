.class Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/FragmentManager;

.field final synthetic b:Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem$1;->a:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem$1;->a:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;

    invoke-static {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->a(Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;)I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->b()V

    :cond_0
    return-void
.end method

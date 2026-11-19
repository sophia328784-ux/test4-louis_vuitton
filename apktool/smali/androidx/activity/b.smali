.class public final synthetic Landroidx/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/activity/EdgeToEdgeImpl;

.field public final synthetic c:Landroidx/activity/SystemBarStyle;

.field public final synthetic d:Landroidx/activity/SystemBarStyle;

.field public final synthetic e:Landroidx/activity/ComponentActivity;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/EdgeToEdgeImpl;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroidx/activity/ComponentActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/b;->b:Landroidx/activity/EdgeToEdgeImpl;

    iput-object p2, p0, Landroidx/activity/b;->c:Landroidx/activity/SystemBarStyle;

    iput-object p3, p0, Landroidx/activity/b;->d:Landroidx/activity/SystemBarStyle;

    iput-object p4, p0, Landroidx/activity/b;->e:Landroidx/activity/ComponentActivity;

    iput-object p5, p0, Landroidx/activity/b;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    sget v0, Landroidx/activity/EdgeToEdge;->a:I

    iget-object v0, p0, Landroidx/activity/b;->e:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/activity/b;->c:Landroidx/activity/SystemBarStyle;

    iget-object v0, v2, Landroidx/activity/SystemBarStyle;->d:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Landroidx/activity/b;->f:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v3, p0, Landroidx/activity/b;->d:Landroidx/activity/SystemBarStyle;

    iget-object v0, v3, Landroidx/activity/SystemBarStyle;->d:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v1, p0, Landroidx/activity/b;->b:Landroidx/activity/EdgeToEdgeImpl;

    invoke-interface/range {v1 .. v7}, Landroidx/activity/EdgeToEdgeImpl;->b(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V

    return-void
.end method

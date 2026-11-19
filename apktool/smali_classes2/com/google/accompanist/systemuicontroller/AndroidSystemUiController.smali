.class public final Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/accompanist/systemuicontroller/SystemUiController;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;",
        "Lcom/google/accompanist/systemuicontroller/SystemUiController;",
        "Landroid/view/View;",
        "view",
        "Landroid/view/Window;",
        "window",
        "<init>",
        "(Landroid/view/View;Landroid/view/Window;)V",
        "systemuicontroller_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/Window;

.field public final c:Landroidx/core/view/WindowInsetsControllerCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/Window;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;->b:Landroid/view/Window;

    if-eqz p2, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p2, p1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    return-void
.end method


# virtual methods
.method public final a(JZLkotlin/jvm/functions/Function1;)V
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Landroidx/core/view/WindowInsetsControllerCompat;->e(Z)V

    :goto_0
    iget-object p0, p0, Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;->b:Landroid/view/Window;

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsControllerCompat;->c()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-interface {p4, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Color;

    iget-wide p1, p1, Landroidx/compose/ui/graphics/Color;->a:J

    :cond_3
    :goto_1
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.class public final synthetic Landroidx/navigation/compose/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/compose/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/navigation/compose/b;->b:Landroid/content/Context;

    invoke-static {p0}, Landroidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt;->a(Landroid/content/Context;)Landroidx/navigation/NavHostController;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->g(Landroid/os/Bundle;)V

    return-object p0
.end method

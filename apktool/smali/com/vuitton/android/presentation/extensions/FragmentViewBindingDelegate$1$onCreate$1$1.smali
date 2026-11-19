.class public final Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1$onCreate$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1$onCreate$1$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1$onCreate$1$1;->b:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1$onCreate$1$1;->b:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

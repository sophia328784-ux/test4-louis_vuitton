.class public final Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1",
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
.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1;->b:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1;->c:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    iget-object p1, p0, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Ll00;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1;->c:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-direct {v1, p0, v2}, Ll00;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/vuitton/android/presentation/extensions/FragmentExtKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt$sam$androidx_lifecycle_Observer$0;-><init>(Ll00;)V

    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

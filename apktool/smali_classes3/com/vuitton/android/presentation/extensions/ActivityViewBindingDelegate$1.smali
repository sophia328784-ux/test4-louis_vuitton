.class public final Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V
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
        "com/vuitton/android/presentation/extensions/ActivityViewBindingDelegate$1",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate$1;->b:Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate$1;->b:Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;->c:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

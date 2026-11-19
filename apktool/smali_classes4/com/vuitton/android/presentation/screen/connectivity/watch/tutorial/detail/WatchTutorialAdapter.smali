.class public final Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter$TutorialHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lkotlin/Function1;",
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;",
        "",
        "openTutorialScreen",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "TutorialHolder",
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
.field public final b:Lkotlin/jvm/functions/Function1;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;->b:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter$TutorialHolder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter$TutorialHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter$TutorialHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;->b:Landroid/widget/TextView;

    new-instance v0, Lc61;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lc61;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;

    invoke-direct {p2, p1, p1}, Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter$TutorialHolder;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter$TutorialHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;)V

    return-object p1

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.class public final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;
.super Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WatchViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;",
        "Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;",
        "binding",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;)V",
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


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    iget-object p1, p2, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;->f:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;->b:Landroidx/cardview/widget/CardView;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;->d:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;->i:Ljava/lang/String;

    iget v4, p1, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;->h:I

    const/16 v5, 0x78

    invoke-static {v1, v3, v4, v4, v5}, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt;->a(Landroid/widget/ImageView;Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;->e:Landroid/widget/TextView;

    iget v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;->j:I

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->d:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->c:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->d:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/vuitton/android/presentation/utils/WatchUtilsKt;->b(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/profile/Profile;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->c:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;->d:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/vuitton/android/presentation/utils/WatchUtilsKt;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/profile/Profile;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lvg;

    const/16 v3, 0x11

    invoke-direct {v1, v0, p1, v3}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;->c:Landroid/widget/ImageView;

    new-instance v1, Lvg;

    const/16 v2, 0x12

    invoke-direct {v1, p0, p1, v2}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    return-void
.end method

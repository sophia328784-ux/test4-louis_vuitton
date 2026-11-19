.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;
.super Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HotelViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;",
        "Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;",
        "binding",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V",
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
.field public final c:Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Landroid/view/View;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;->c:Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;

    new-instance p2, Lm21;

    const/16 v1, 0x14

    invoke-direct {p2, p1, p0, v1}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)V
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;->c:Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->b:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->e:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->i:Landroid/widget/ImageView;

    const v5, 0x7f08017d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f140aa5

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    instance-of v4, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->h:Landroid/widget/TextView;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->g:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->f:Ljava/util/Date;

    const-string v5, " "

    const v6, 0x7f140583

    if-eqz v4, :cond_1

    invoke-static {v4, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->n(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->n(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->g:Ljava/util/Date;

    const v3, 0x7f140584

    if-eqz p1, :cond_2

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->n(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->n(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;->b(Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V

    :cond_3
    return-void
.end method

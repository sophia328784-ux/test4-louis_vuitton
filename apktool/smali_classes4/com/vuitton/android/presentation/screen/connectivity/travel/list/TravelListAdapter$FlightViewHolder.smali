.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;
.super Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlightViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;",
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

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;->c:Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;

    new-instance p2, Lm21;

    const/16 v1, 0x13

    invoke-direct {p2, p1, p0, v1}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;->c:Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->b:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->e:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->i:Landroid/widget/ImageView;

    const v5, 0x7f080177

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f141013

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    instance-of v4, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->g:Landroid/widget/TextView;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->f:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->h:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    if-eqz v5, :cond_1

    iget-object v4, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->a:Ljava/lang/String;

    :cond_1
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%s - %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_2

    iget-object p1, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->c:Ljava/util/Date;

    if-eqz p1, :cond_2

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->n(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f140701

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->n(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->o(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f140aae

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->o(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;->b(Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V

    :cond_3
    return-void
.end method

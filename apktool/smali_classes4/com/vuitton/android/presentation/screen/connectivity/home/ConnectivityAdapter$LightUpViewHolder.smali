.class public final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;
.super Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LightUpViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;",
        "Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;",
        "binding",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;)V",
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
.field public final b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    iget-object p1, p2, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->X408PAIR:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    iget-object v2, v6, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->e:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f140b3b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0803ab

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    sget-object v1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->KEEPALL:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    iget-object v2, v6, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->e:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f140642

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0803a9

    goto :goto_0

    :goto_1
    iget-object v1, v6, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->f:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->c:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->b:Landroidx/cardview/widget/CardView;

    new-instance v3, Lk3;

    const/4 v8, 0x5

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v3}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, v6, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->d:Landroid/widget/ImageView;

    new-instance p1, Lvg;

    const/16 v0, 0xf

    invoke-direct {p1, v4, v5, v0}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    return-void
.end method

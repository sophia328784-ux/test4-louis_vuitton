.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001Bi\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0006j\u0008\u0012\u0004\u0012\u00020\u0002`\u0007\u00128\u0008\u0002\u0010\u000f\u001a2\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u000e0\t\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;",
        "Landroid/widget/ArrayAdapter;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
        "Landroid/content/Context;",
        "context",
        "selectedMode",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "modeList",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "mode",
        "previousMode",
        "",
        "onPowerModeClick",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function2;)V",
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
.field public static final synthetic f:I


# instance fields
.field public final b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lkotlin/jvm/functions/Function2;

.field public final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
            "Ljava/util/ArrayList<",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
            "-",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0d00a1

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->d:Lkotlin/jvm/functions/Function2;

    new-instance p2, Lje;

    const/16 p3, 0x1c

    invoke-direct {p2, p1, p3}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->e:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 38
    new-instance p4, Laj0;

    const/16 p5, 0x17

    invoke-direct {p4, p5}, Laj0;-><init>(I)V

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;-><init>(Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->e:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00a1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    if-ne p1, p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f080167

    invoke-virtual {p3, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :goto_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragmentKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lbx;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p0, v1}, Lbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2
.end method

.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;
.super Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B7\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeBlock;",
        "content",
        "",
        "title",
        "Lcom/vuitton/android/presentation/compose/components/CollapsingState;",
        "initialState",
        "Lkotlin/Function0;",
        "",
        "tracking",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V",
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
.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeBlock;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/compose/components/CollapsingState;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    sget-object p3, Lcom/vuitton/android/presentation/compose/components/CollapsingState;->COLLAPSED:Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    new-instance p4, Lul0;

    const/4 p5, 0x1

    invoke-direct {p4, p5}, Lul0;-><init>(I)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

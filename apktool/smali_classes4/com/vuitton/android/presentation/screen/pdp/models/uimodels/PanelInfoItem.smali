.class public abstract Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoSectionsItem;",
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
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/presentation/compose/components/CollapsingState;

.field public final c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/vuitton/android/presentation/compose/components/CollapsingState;->COLLAPSED:Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Lul0;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lul0;-><init>(I)V

    :cond_1
    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;->b:Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method

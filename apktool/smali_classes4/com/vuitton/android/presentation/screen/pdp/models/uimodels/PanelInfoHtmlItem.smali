.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;
.super Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B=\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;",
        "",
        "introduction",
        "description",
        "title",
        "Lcom/vuitton/android/presentation/compose/components/CollapsingState;",
        "initialState",
        "Lkotlin/Function0;",
        "",
        "tracking",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V",
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
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/compose/components/CollapsingState;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p3, p4, p5, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;->d:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    sget-object p4, Lcom/vuitton/android/presentation/compose/components/CollapsingState;->COLLAPSED:Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    new-instance p5, Lii0;

    const/16 p6, 0x1d

    invoke-direct {p5, p6}, Lii0;-><init>(I)V

    :cond_2
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-direct/range {p2 .. p7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

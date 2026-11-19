.class public final Lcom/sightcall/graphik/ColorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "LocalVisionAppColors",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Lcom/sightcall/graphik/Colors;",
        "getLocalVisionAppColors",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "graphik_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LocalVisionAppColors:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lcom/sightcall/graphik/Colors;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcm;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcm;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lcom/sightcall/graphik/ColorsKt;->LocalVisionAppColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private static final LocalVisionAppColors$lambda$0()Lcom/sightcall/graphik/Colors;
    .locals 1

    new-instance v0, Lcom/sightcall/graphik/Colors;

    invoke-direct {v0}, Lcom/sightcall/graphik/Colors;-><init>()V

    return-object v0
.end method

.method public static synthetic a()Lcom/sightcall/graphik/Colors;
    .locals 1

    invoke-static {}, Lcom/sightcall/graphik/ColorsKt;->LocalVisionAppColors$lambda$0()Lcom/sightcall/graphik/Colors;

    move-result-object v0

    return-object v0
.end method

.method public static final getLocalVisionAppColors()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lcom/sightcall/graphik/Colors;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/graphik/ColorsKt;->LocalVisionAppColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

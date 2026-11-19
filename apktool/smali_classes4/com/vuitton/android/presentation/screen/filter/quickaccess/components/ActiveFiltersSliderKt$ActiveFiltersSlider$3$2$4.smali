.class final synthetic Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4;

    const-string v1, "getToggleFiltersId()Ljava/lang/String;"

    const/4 v2, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    const-string v4, "toggleFiltersId"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->c:Ljava/lang/String;

    return-object p0
.end method

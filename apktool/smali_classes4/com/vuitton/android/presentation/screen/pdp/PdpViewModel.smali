.class public interface abstract Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00a8\u0006\u0002\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
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


# direct methods
.method public static synthetic Db(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;I)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->l6(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Z)V

    return-void
.end method


# virtual methods
.method public abstract A8(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)V
.end method

.method public abstract B4()V
.end method

.method public abstract F()Z
.end method

.method public abstract F0()V
.end method

.method public abstract G()V
.end method

.method public abstract G9(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract L2()V
.end method

.method public abstract N7()Z
.end method

.method public abstract P8(Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V
.end method

.method public abstract T2()Z
.end method

.method public abstract a()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract a1()V
.end method

.method public abstract a3(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;)V
.end method

.method public abstract b()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract c()V
.end method

.method public abstract d5(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;)V
.end method

.method public abstract f0()V
.end method

.method public abstract g0()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract h()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract jb()V
.end method

.method public abstract jc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V
.end method

.method public abstract l6(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Z)V
.end method

.method public abstract ob(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;)V
.end method

.method public abstract q9()V
.end method

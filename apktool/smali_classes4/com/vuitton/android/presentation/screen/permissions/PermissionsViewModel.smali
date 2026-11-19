.class public interface abstract Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00a8\u0006\u0002\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;",
        "",
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
.method public static synthetic V6(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance p1, Lul0;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Lul0;-><init>(I)V

    invoke-interface {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->aa(ZLul0;)V

    return-void
.end method


# virtual methods
.method public abstract A6(Z)V
.end method

.method public abstract E4()V
.end method

.method public abstract Gb()V
.end method

.method public abstract Ka(Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;Ljava/lang/String;)V
.end method

.method public abstract Y6()V
.end method

.method public abstract Z2()Lkotlinx/coroutines/flow/SharedFlow;
.end method

.method public abstract a()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract aa(ZLul0;)V
.end method

.method public abstract l4()V
.end method

.method public abstract s3()Lkotlinx/coroutines/flow/SharedFlowImpl;
.end method

.method public abstract u8()V
.end method

.method public abstract v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V
.end method

.method public abstract x9()V
.end method

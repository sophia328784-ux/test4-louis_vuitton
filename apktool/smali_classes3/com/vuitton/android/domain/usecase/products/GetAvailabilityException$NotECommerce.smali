.class public final Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException$NotECommerce;
.super Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotECommerce"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException$NotECommerce;",
        "Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException;",
        "<init>",
        "()V",
        "domain"
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
.method public constructor <init>()V
    .locals 2

    const-string v0, "The current locale is not E-commerce"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

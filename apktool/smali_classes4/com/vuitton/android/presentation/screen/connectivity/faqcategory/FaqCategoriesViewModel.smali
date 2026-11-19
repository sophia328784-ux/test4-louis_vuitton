.class public final Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;
.super Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel<",
        "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesView;",
        "Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;",
        "getFaqCategoryListUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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
.field public static final synthetic e:I


# instance fields
.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    return-void
.end method

.class public final Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/CatalogRepository;",
        "repository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/CatalogRepository;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/domain/repository/CatalogRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/CatalogRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    return-void
.end method

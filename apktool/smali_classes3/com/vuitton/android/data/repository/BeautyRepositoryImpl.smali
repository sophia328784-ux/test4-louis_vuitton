.class public final Lcom/vuitton/android/data/repository/BeautyRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/BeautyRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/BeautyRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/BeautyRepository;",
        "Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;",
        "beautyLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;)V",
        "data"
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
.field public final a:Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/BeautyRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BeautyRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;

    iget-boolean p0, p0, Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;->a:Z

    return p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BeautyRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;

    iput-boolean v0, p0, Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;->a:Z

    return-void
.end method

.class public final Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\u000c\u001a\u0002H\r\"\u0008\u0008\u0000\u0010\r*\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0010H\u0016\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "useCase",
        "Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;",
        "<init>",
        "(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;)V",
        "mediaCaptureParameters",
        "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;",
        "getMediaCaptureParameters",
        "()Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;",
        "setMediaCaptureParameters",
        "(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "lib_release"
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
.field public mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

.field private final useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;->useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;->useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;->getMediaCaptureParameters()Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;-><init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V

    return-object p1
.end method

.method public bridge create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ")TT;"
        }
    .end annotation

    .line 16
    invoke-super {p0, p1, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ")TT;"
        }
    .end annotation

    .line 15
    invoke-super {p0, p1, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaCaptureParameters()Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mediaCaptureParameters"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setMediaCaptureParameters(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    return-void
.end method

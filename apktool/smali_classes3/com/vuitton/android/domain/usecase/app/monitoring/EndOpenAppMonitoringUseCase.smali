.class public final Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000cB)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;",
        "",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;",
        "getUserInAppDispatchOrNullUseCase",
        "Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;",
        "openAppTimestampRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;)V",
        "Companion",
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
.field public final a:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

.field public final d:Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;->c:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;->d:Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;

    return-void
.end method

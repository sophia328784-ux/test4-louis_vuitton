.class public final Lnet/rtccloud/sdk/Rtcc_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lnet/rtccloud/sdk/Rtcc;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analytics/AnalyticsRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analytics/AnalyticsRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc_MembersInjector;->analyticsRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analytics/AnalyticsRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lnet/rtccloud/sdk/Rtcc;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/rtccloud/sdk/Rtcc_MembersInjector;

    invoke-direct {v0, p0}, Lnet/rtccloud/sdk/Rtcc_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsRepository(Lnet/rtccloud/sdk/Rtcc;Lcom/sightcall/analytics/AnalyticsRepository;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/Rtcc;->analyticsRepository:Lcom/sightcall/analytics/AnalyticsRepository;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc_MembersInjector;->injectMembers(Lnet/rtccloud/sdk/Rtcc;)V

    return-void
.end method

.method public injectMembers(Lnet/rtccloud/sdk/Rtcc;)V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Rtcc_MembersInjector;->analyticsRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/analytics/AnalyticsRepository;

    invoke-static {p1, p0}, Lnet/rtccloud/sdk/Rtcc_MembersInjector;->injectAnalyticsRepository(Lnet/rtccloud/sdk/Rtcc;Lcom/sightcall/analytics/AnalyticsRepository;)V

    return-void
.end method

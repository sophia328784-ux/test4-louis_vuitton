.class public final Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder;",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;",
        "<init>",
        "()V",
        "Companion",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)Lkotlin/Pair;
    .locals 2

    new-instance p0, Lkotlin/Pair;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;->b:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-static {v1, p1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

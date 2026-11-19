.class public abstract Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;",
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
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;->a:Ljava/lang/String;

    return-object p0
.end method

.class Lcom/sightcall/universal/media/offline/OfflineMediaSession$Request$Data$Relationships;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/offline/OfflineMediaSession$Request$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationships"
.end annotation


# instance fields
.field final usecase:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "offlineMediaUsecases"

    invoke-static {p1, v0}, Lcom/sightcall/universal/api/JsonApi$Linkage;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/api/JsonApi$Linkage;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaSession$Request$Data$Relationships;->usecase:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{usecase:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaSession$Request$Data$Relationships;->usecase:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

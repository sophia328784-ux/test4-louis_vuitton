.class public final Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultipleFormatsMultipartyAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;Lcom/squareup/moshi/JsonAdapter;)Lcom/sightcall/universal/agent/Usecase$Multiparty;
    .locals 1
    .annotation runtime Lcom/sightcall/universal/agent/Usecase$MultipartyBoolean;
    .end annotation

    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            "Lcom/squareup/moshi/JsonAdapter<",
            "Lcom/sightcall/universal/agent/Usecase$Multiparty;",
            ">;)",
            "Lcom/sightcall/universal/agent/Usecase$Multiparty;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->z()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object p0

    sget-object v0, Lcom/squareup/moshi/JsonReader$Token;->BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$Multiparty;

    return-object p0
.end method

.method public toJson(Lcom/squareup/moshi/JsonWriter;Lcom/sightcall/universal/agent/Usecase$Multiparty;Lcom/squareup/moshi/JsonAdapter;)V
    .locals 0
    .param p2    # Lcom/sightcall/universal/agent/Usecase$Multiparty;
        .annotation runtime Lcom/sightcall/universal/agent/Usecase$MultipartyBoolean;
        .end annotation
    .end param
    .annotation runtime Lcom/squareup/moshi/ToJson;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonWriter;",
            "Lcom/sightcall/universal/agent/Usecase$Multiparty;",
            "Lcom/squareup/moshi/JsonAdapter<",
            "Lcom/sightcall/universal/agent/Usecase$Multiparty;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.class public Lcom/sightcall/universal/agent/Pincode$Relationships;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Pincode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationships"
.end annotation


# instance fields
.field public caseReport:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "case-report"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field

.field public usecase:Lcom/sightcall/universal/api/JsonApi$Wrapper;
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
.method public constructor <init>(Lcom/sightcall/universal/agent/Usecase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi$Linkage;->of(Lcom/sightcall/universal/api/JsonApi$Included;)Lcom/sightcall/universal/api/JsonApi$Linkage;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sightcall/universal/agent/Pincode$Relationships;->usecase:Lcom/sightcall/universal/api/JsonApi$Wrapper;

    return-void
.end method

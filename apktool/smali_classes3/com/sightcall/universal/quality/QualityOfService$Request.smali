.class public Lcom/sightcall/universal/quality/QualityOfService$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/quality/QualityOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public final qos:Lcom/sightcall/universal/quality/QualityOfService;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "serviceQuality"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/quality/QualityOfService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/quality/QualityOfService$Request;->qos:Lcom/sightcall/universal/quality/QualityOfService;

    return-void
.end method

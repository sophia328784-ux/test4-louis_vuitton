.class public Lcom/sightcall/universal/quality/QualityOfService$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/quality/QualityOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/quality/QualityOfService$Response$Data;
    }
.end annotation


# instance fields
.field public final data:Lcom/sightcall/universal/quality/QualityOfService$Response$Data;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "serviceQuality"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/quality/QualityOfService$Response$Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/quality/QualityOfService$Response;->data:Lcom/sightcall/universal/quality/QualityOfService$Response$Data;

    return-void
.end method


# virtual methods
.method public url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/quality/QualityOfService$Response;->data:Lcom/sightcall/universal/quality/QualityOfService$Response$Data;

    iget-object p0, p0, Lcom/sightcall/universal/quality/QualityOfService$Response$Data;->url:Ljava/lang/String;

    return-object p0
.end method

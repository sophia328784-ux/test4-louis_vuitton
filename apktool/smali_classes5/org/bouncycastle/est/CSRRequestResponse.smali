.class public Lorg/bouncycastle/est/CSRRequestResponse;
.super Ljava/lang/Object;


# instance fields
.field private final attributesResponse:Lorg/bouncycastle/est/CSRAttributesResponse;

.field private final source:Lorg/bouncycastle/est/Source;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/CSRAttributesResponse;Lorg/bouncycastle/est/Source;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/CSRRequestResponse;->attributesResponse:Lorg/bouncycastle/est/CSRAttributesResponse;

    iput-object p2, p0, Lorg/bouncycastle/est/CSRRequestResponse;->source:Lorg/bouncycastle/est/Source;

    return-void
.end method


# virtual methods
.method public getAttributesResponse()Lorg/bouncycastle/est/CSRAttributesResponse;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/CSRRequestResponse;->attributesResponse:Lorg/bouncycastle/est/CSRAttributesResponse;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Response has no CSRAttributesResponse."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSession()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/CSRRequestResponse;->source:Lorg/bouncycastle/est/Source;

    invoke-interface {p0}, Lorg/bouncycastle/est/Source;->getSession()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Lorg/bouncycastle/est/Source;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/CSRRequestResponse;->source:Lorg/bouncycastle/est/Source;

    return-object p0
.end method

.method public hasAttributesResponse()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/CSRRequestResponse;->attributesResponse:Lorg/bouncycastle/est/CSRAttributesResponse;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

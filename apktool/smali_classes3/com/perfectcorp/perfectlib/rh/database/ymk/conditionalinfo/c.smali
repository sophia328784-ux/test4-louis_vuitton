.class public final Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;
.super Ljava/lang/Object;


# instance fields
.field public final cooler:Ljava/lang/String;

.field public final darker:Ljava/lang/String;

.field public final lighter:Ljava/lang/String;

.field public final warmer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->warmer:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->cooler:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->lighter:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->darker:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "WcldTable"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "warmer"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->warmer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cooler"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->cooler:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "lighter"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->lighter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "darker"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->darker:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

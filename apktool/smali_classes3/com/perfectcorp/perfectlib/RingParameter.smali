.class public final Lcom/perfectcorp/perfectlib/RingParameter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/RingParameter$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/RingPosition;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/RingParameter$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/RingParameter$Builder;->a:Lcom/perfectcorp/perfectlib/RingPosition;

    const-string v0, "ringPosition can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/RingParameter;->a:Lcom/perfectcorp/perfectlib/RingPosition;

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/RingParameter$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/RingParameter$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/RingParameter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "RingParameter"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "ringPosition"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingParameter;->a:Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

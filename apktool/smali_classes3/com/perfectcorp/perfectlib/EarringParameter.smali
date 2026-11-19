.class public final Lcom/perfectcorp/perfectlib/EarringParameter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/EarringParameter$Builder;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/EarringParameter$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/EarringParameter$Builder;->a:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/EarringParameter;->a:Z

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/EarringParameter$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/EarringParameter$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/EarringParameter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "EarringParameter"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/EarringParameter;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "isLeft"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
